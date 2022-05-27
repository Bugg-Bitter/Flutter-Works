const express = require('express');
const router = express.Router();
const tourMethods = require(`${__dirname}/../controllers/tourController`,'utf-8');


router
  .route('/')
      .get(tourMethods.getAllTour)
      .get(tourMethods.notFound)
      .post(tourMethods.createTour)




router
  .route('/:id')
      .get(tourMethods.newlyTour)
      .patch(tourMethods.updatedTour)
      .delete(tourMethods.deleteTour)

module.exports = router