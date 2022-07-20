import * as dotenv from 'dotenv';
dotenv.config();
export const jwtConfig = {
    secretKey: process.env.secret,
    option: {
        algorithm: 'HS256',
        expiresIn: '30m',
        issuer: 'moon_rabbit'
    }
};
//# sourceMappingURL=jwt.config.js.map