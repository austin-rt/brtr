const { User, Product, Review, ProductReview} = require('../models')

const GetUsers = async (req, res) => {
  try {
    const users = await User.findAll()
    res.send(users)
  } catch (error) {
    throw error
  }
}

const GetUserById = async (req, res) => {
  try {
    const userAndTwerts = await User.findByPk(req.params.user_id, {
      include:
      [
        { model: Product, as: 'products'},
        { model: Review, as: 'reviews_posted'},
        { model: Review, as: 'reviews_received'},
        { model: ProductReview, as: 'reviewer'}
      ]
    })
    res.send(userAndTwerts)
  } catch (error) {
    throw error
  }
}

const UpdateUser = async (req, res) => {
  try {
    let userId = parseInt(req.params.user_id)
    let updatedUser = await User.update(req.body, {
      where: { id: userId },
      returning: true
    })
    res.send(updatedUser)
  } catch (error) {
    throw error
  }
}

module.exports = {
  GetUsers,
  GetUserById,
  UpdateUser
}