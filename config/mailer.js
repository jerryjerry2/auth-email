const nodemailer = require('nodemailer');

const transpoter = nodemailer.createTransport({
    host : process.env.MAIL_HOST,
    service : process.env.MAIL_SERVICE,
    auth : {
        user : process.env.MAIL_USER,
        pass : process.env.MAIL_PASSWORD
    }
});

module.exports = transpoter;