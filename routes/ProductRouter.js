const Router = require('express').Router();
const controller = require('../controllers/ProductController');

Router.get('/', controller.GetAllProducts);
Router.post('/:seller_id', controller.CreateProduct);

module.exports = Router