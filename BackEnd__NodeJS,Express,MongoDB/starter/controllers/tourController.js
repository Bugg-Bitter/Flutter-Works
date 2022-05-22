const fs = require('fs');
let reqID = 0;
let reqTour;
let newID;
let newTour;

const tours = JSON.parse(fs.readFileSync(`${__dirname}/../dev-data/data/tours-simple.json`,'utf-8'));


exports.getAllTour = (req,res) => {
    res
    .status(200)
    .json({
        status:"Success",
        result:tours.length,
        data:{
            tours,
        }
    });
};

exports.notFound = (req,res) => {
    res
    .status(404)
    .json({
        status:"failed",
        result:0,
        data:{
            message:"Invalid Request !",
        }
    });
};

exports.createTour =  (req,res) => {

    newID = tours[tours.length - 1].id + 1;
    newTour = Object.assign({id:newID},req.body);
    tours.push(newTour);

    fs.writeFile(`${__dirname}/dev-data/data/tours-simple.json`,JSON.stringify(tours),err => {
        res
        .status(201)
        .json({
            status:"Success",
            result:tours.length,
            data:{
                newTour,
            },
        });
    });
};

exports.newlyTour = (req,res) => {
    reqID = req.params.id * 1 ;
    reqTour = tours.find(el => el.id === reqID);

    if(!reqTour){
        return res
        .status(404)
        .json({
            status:"Failed",
            data:{
                message:"Invalid Request !!",
            }
        });
    }
    else {
        res
        .status(200)
        .json({
            status:"Success",
            result:reqTour.length,
            data:{
                reqTour,
            }
        });
    }
};

exports.updatedTour =  (req,res) => {
    if(req.params.id * 1 > tours.length){
        return res
        .status(404)
        .json({
            status:"Failed",
            message:"InvaildID",
        });
    }
    res
    .status(200)
    .json({
        data:{
            tour:"<Updated Tours... >",
        }
    });
};

exports.deleteTour =  (req,res) => {
    if(req.params.id * 1 > tours.length){
        return res
        .status(404)
        .json({
            status:"Failed",
            message:"InvaildID",
        });
    }
    res
    .status(204)
    .json({
        data:{
            tour:"Specific Tour Deleted !",
        }
    });
};