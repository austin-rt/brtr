const { User, Product, UserReview, ProductReview} = require('../models')
const middleware = require('../middleware')

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
    const user = await User.findByPk(req.params.user_id, {
      include:
      [
        { model: Product, as: 'products'},
        { model: UserReview, as: 'user_reviews_posted'},
        { model: UserReview, as: 'reviews_received'},
        { model: ProductReview, as: 'product_reviews_posted'}
      ]
    })
    res.send(user)
  } catch (error) {
    throw error
  }
}

const RegisterUser = async (req, res) => {
  try {
    const {username, email, password } = req.body
    let passwordDigest = await middleware.hashPassword(password)
    const user = await User.create({
      username,
      email,
      password: passwordDigest
    })
    res.send(user)
  } catch (error) {
    throw error
  }
}

const LoginUser = async (req, res) => {
  try {
    const user = await User.findOne({
      where: {
        username: req.body.username
      },
      raw: true
    })
    if (
      user &&
      (await middleware.comparePassword(user.password, req.body.password))
    ) {
      let payload = {
        id: user.id,
        username: user.username,
        email: user.email
      }
      let token = middleware.createToken(payload)
      return res.send({ user: payload, token })
    }
    res.status(401).send({ status: 'Error', msg: 'Unauthorized' })
  } catch (error) {
    throw error
  }
}

const UpdateUser = async (req, res) => {
  try {
    let user_id = parseInt(req.params.user_id)
    let updatedUser = await User.update(req.body, {
      where: { id: user_id },
      returning: true
    })
    res.send(updatedUser)
  } catch (error) {
    throw error
  }
}

const DeleteUser = async (req, res) => {
  try {
    let user_id = parseInt(req.params.user_id)
    await User.destroy({ where: { id: user_id } })
    res.send({ message: `Deleted user with an id of ${user_id}` })
  } catch (error) {
    throw error
  }
}

const CheckSession = async (req, res) => {
  const { payload } = res.locals
  res.send(payload)
}

module.exports = {
  GetUsers,
  GetUserById,
  RegisterUser,
  LoginUser,
  UpdateUser,
  DeleteUser,
  CheckSession
}