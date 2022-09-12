const Router = require('express').Router()
const controller = require('../controllers/UserController')

Router.get('/', controller.GetUsers)
Router.get('/:user_id', controller.GetUserById)
Router.put(
  '/:user_id',
  // middleware.stripToken,
  // middleware.verifyToken,
  controller.UpdateUser
)
Router.delete(
  '/:user_id',
  // middleware.stripToken,
  // middleware.verifyToken,
  // controller.DeleteUser
)

module.exports = Router