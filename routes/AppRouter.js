const Router = require('express').Router()
const UserRouter = require('./UserRouter')
const ProductRouter = require('./ProductRouter')
const ReviewRouter = require('./ReviewRouter')
const ProductReviewRouter = require('./ProductReviewRouter')

Router.use('/users', UserRouter)
Router.use('/products', ProductRouter)
Router.use('/user-reviews', ReviewRouter)
Router.use('/product-reviews', ProductReviewRouter)

module.exports = Router