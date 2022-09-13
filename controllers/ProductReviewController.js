const { ProductReview } = require('../models');


const CreateProductReview = async (req, res) => {
  try {
    let product_id = parseInt(req.params.product_id);
    let reviewer_id = parseInt(req.params.reviewer_id);

    let reviewBody = {
      product_id,
      reviewer_id,
      ...req.body
    };
    let review = await ProductReview.create(reviewBody);
    res.send(review);
  } catch (error) {
    throw error;
  }
};

const UpdateProductReview = async (req, res) => {
  try {
    let productreview_id = parseInt(req.params.productreview_id)
    console.log(productreview_id)
    let updatedProductReview = await ProductReview.update(req.body, {
      where: { id: productreview_id },
      returning: true
    })
    res.send(updatedProductReview)
  } catch (error) {
    throw error
  }
}

const DeleteProductReview = async (req, res) => {
  try {
    let productreview_id = parseInt(req.params.productreview_id);
    await ProductReview.destroy({ where: { id: productreview_id } });
    res.send({ message: `Deleted product review with an id of ${productreview_id}` });
  } catch (error) {
    throw error;
  }
};

module.exports = {
  CreateProductReview,
  UpdateProductReview,
  DeleteProductReview
};