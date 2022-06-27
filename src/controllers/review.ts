import {Controller} from "../utils/base-types"
import * as express from 'express'
import {ReviewServiceImpl} from "../services/review_service";
import {ReviewService} from "../services/service-type/review.service-type";

const multer = require('multer');
const storage = multer.diskStorage({
    destination:  (req, file, cb) => {
      cb(null, 'uploads/')
    },
    filename:  (req, file, cb) => {
      cb(null, "recieptTest."+file.mimetype.split('/')[1])// 파일 원본이름 저장
    }
  })

const upload = multer({ storage: storage }); 

export class ReviewController implements Controller {
    public path: string = "/review";
    public router: express.Router = express.Router();
    private reviewService: ReviewService = new ReviewServiceImpl();

    constructor() {
        this.initializeRoutes()
    }

    private initializeRoutes() {
        this.router.post('/post', async function(req, res, next) {
            this.reviewService.writwReview(req, res, next);
        });

        this.router.post('/reciept',  upload.single('file'), function(req, res, next) { //
            this.reviewService.recieptAuth(req, res, next);
        });


        this.router.get('/thumb', async function(req, res, next) {
            this.reviewService.thumbUp(req, res, next);
        });

    }
}