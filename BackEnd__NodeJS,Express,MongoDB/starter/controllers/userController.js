const fs = require('fs');

exports.getAllUser = (req,res) => {
    res
    .status(200)
    .json({
        status:"Success",
        message:"All Users Here",
    });
};

exports.createUser = (req,res) => {
    res
    .status(201)
    .json({
        status:"Success",
        message:"New User Created",
    });
};

exports.getUser = (req,res) => {
    res
    .status(200)
    .json({
        status:"Success",
        message:"Your specific User Here",
    });
};

exports.updateUser = (req,res) => {
    res
    .status(201)
    .json({
        status:"Success",
        message:"User Information Updated",
    });
};

exports.deleteUser = (req,res) => {
    res
    .status(202)
    .json({
        status:"No Content",
        message:"Deleted User",
    });
};