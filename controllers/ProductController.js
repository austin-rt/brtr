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

const UpdateProduct = async (req, res) => {
  try {
    let product_id = parseInt(req.params.product_id);
    let updatedProduct = await Product.update(req.body, {
      where: { id: product_id },
      returning: true
    });
    res.send(updatedProduct);
  } catch (error) {
    throw error;
  }
};

const DeleteProduct = async (req, res) => {
  try {
    let product_id = parseInt(req.params.product_id);
    await Product.destroy({ where: { id: product_id } });
    res.send({ message: `Deleted product with an id of ${product_id}` });
  } catch (error) {
    throw error;
  }
};

module.exports = {
  GetAllProducts,
  CreateProduct,
  UpdateProduct,
  DeleteProduct
};
