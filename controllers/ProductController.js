const { Product } = require('../models');
const product = require('../models/product');

const GetAllProducts = async (req, res) => {
  try {
    const products = await Product.findAll()
    res.send(products)
  } catch (error) {
    throw error
  }
}

const CreateProduct = async(req, res)=> {
  try {
    let seller_id = parseInt(req.params.seller_id);
    let productBody = {
      seller_id,
      ...req.body
    };
    let product = await Product.create(productBody);
    res.send(product);
  } catch (error) {
    throw error;
  }
};

module.exports = {
  GetAllProducts,
  CreateProduct
};
