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
      // include: [
      //   {
      //     model: User,
      //     as: 'reviews_posted',
      //   }
      // ]
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
      // include: [
      //   {
      //     model: User,
      //     as: 'reviews_posted',
      //   }
      // ]
    });
    res.send(reviews);
  } catch (error) {
    throw error;
  }
}

module.exports = {
  GetAllReviews,
  GetReviewsByReviewee,
  GetReviewsByReviewer
};
