const Joi = require('joi');

const registerUserSchema = Joi.object({
    name : Joi.string().min(3).required(),
    email : Joi.string().email().min(3).required(),
    password : Joi.string().required()
    
})

const loginUserSchema = Joi.object({
    email : Joi.string().email().min(3).required(),
    password : Joi.required()
})

module.exports = {
    registerUserSchema,
    loginUserSchema
}