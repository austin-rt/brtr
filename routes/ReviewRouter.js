const Router = require('express').Router();
const controller = require('../controllers/ReviewController');

Router.get('/', controller.GetAllReviews);
Router.get('/reviewee/:reviewee_id', controller.GetReviewsByReviewee);
Router.get('/reiewer/:reviewer_id', controller.GetReviewsByReviewer);

module.exports = Router