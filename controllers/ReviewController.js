const { Review, User } = require('../models');
const product = require('../models/product');

const GetAllReviews = async (req, res) => {
  try {
    const review = await Review.findAll()
    res.send(review)
  } catch (error) {
    throw error
  }
}

const GetReviewsByReviewee = async (req,res) => {
try {
  let reviewee_id = parseInt(req.params.reviewee_id);
    const reviews = await Review.findAll({
      where: { reviewee_id: reviewee_id },
      returning: true
    });
    res.send(reviews);
  } catch (error) {
    throw error;
  }
}

const GetReviewsByReviewer = async (req,res) => {
try {
  let reviewer_id = parseInt(req.params.reviewer_id);
    const reviews = await Review.findAll({
      where: { reviewer_id: reviewer_id },
      returning: true
    });
    res.send(reviews);
  } catch (error) {
    throw error;
  }
}

const UpdateReview = async (req, res) => {
  try {
    let review_id = parseInt(req.params.review_id);
    let updatedReview = await Review.update(req.body, {
      where: { id: review_id },
      returning: true
    });
    res.send(updatedReview);
  } catch (error) {
    throw error;
  }
};

const DeleteReview = async (req, res) => {
  try {
    let review_id = parseInt(req.params.review_id);
    await Review.destroy({ where: { id: review_id } });
    res.send({ message: `Deleted review with an id of ${review_id}` });
  } catch (error) {
    throw error;
  }
};

module.exports = {
  GetAllReviews,
  GetReviewsByReviewee,
  GetReviewsByReviewer,
  UpdateReview,
DeleteReview
};
