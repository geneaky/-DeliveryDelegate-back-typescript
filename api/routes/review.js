/* [/review/...] 리뷰작성 및 조회 */
const express = require('express');
const { Review } = require('../../models');
const reviewService = require('../../services/review_service');
const router = express.Router();

router.post('/:storeid/post', function(req, res, next) {
    reviewService.writwReview(req, res, next);
    JSON.parse(req.aa);
    
    //res.send(`로그인한 ${user}가 ${store}에 리뷰작성`);
});

router.get('/:storeid', function(req, res) {
    const store = req.params.storeid; // 가게 코드(아이디)
    res.send('가게의 리뷰 정보 조회');
});

module.exports = router;