const Router = require('express').Router();
const controller = require('../controllers/UserReviewController');

Router.get('/', controller.GetAllReviews);
Router.put('/:review_id', controller.UpdateUserReview);
Router.delete('/:review_id', controller.DeleteUserReview);
Router.post('/:reviewee_id/:reviewer_id', controller.CreateUserReview);
Router.get('/reviewee/:reviewee_id', controller.GetReviewsByReviewee);
Router.get('/reiewer/:reviewer_id', controller.GetReviewsByReviewer);


module.exports = Router