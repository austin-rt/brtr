const Router = require('express').Router();
const controller = require('../controllers/ProductReviewController');

Router.post('/:product_id/:reviewer_id', controller.CreateProductReview);
Router.put('/:productreview_id', controller.UpdateProductReview);
Router.delete('/:productreview_id', controller.DeleteProductReview)

module.exports = Router