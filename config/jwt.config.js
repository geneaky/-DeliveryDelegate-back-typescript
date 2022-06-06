require('dotenv').config();


module.exports = {
    secretKey : process.env.secret,
    option: {
        algorithm: 'HS256',
        expiresIn: '30m',
        issuer: 'moon_rabbit'
    }
}