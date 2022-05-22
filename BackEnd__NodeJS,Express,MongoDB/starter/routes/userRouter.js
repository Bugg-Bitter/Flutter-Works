const express = require('express');
const userMethods = require(`${__dirname}/../controllers/userController`,'utf-8');
const router = express.Router();

router
    .route('/')
        .get(userMethods.getAllUser)
        .post(userMethods.createUser)



router
    .route('/:id')
        .get(userMethods.getUser)
        .patch(userMethods.updateUser)
        .delete(userMethods.deleteUser)



module.exports = router;