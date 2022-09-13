const Router = require('express').Router();
const controller = require('../controllers/ProductController');

Router.get('/', controller.GetAllProducts);
Router.get('/:product_id', controller.GetProductById);
Router.post('/:seller_id', controller.CreateProduct);
Router.put('/:seller_id/:product_id', controller.UpdateProduct);
Router.delete('/:seller_id/:product_id', controller.DeleteProduct);

module.exports = Router