const Router = require('express').Router();
const controller = require('../controllers/ReviewController');

Router.get('/', controller.GetAllReviews);
Router.put('/:review_id', controller.UpdateReview);
Router.delete('/:review_id', controller.DeleteReview);
Router.get('/reviewee/:reviewee_id', controller.GetReviewsByReviewee);
Router.get('/reiewer/:reviewer_id', controller.GetReviewsByReviewer);


module.exports = Router