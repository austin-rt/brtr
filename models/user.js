'use strict'
const { Model } = require('sequelize')
module.exports = (sequelize, DataTypes) => {
  class User extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      User.hasMany(models.Review, {
        foreignKey: 'reviewee_id',
        as: 'reviews_posted',
        onDelete: 'cascade',
        onUpdate: 'cascade'
      })
      User.hasMany(models.Review, {
        foreignKey: 'reviewer_id',
        as: 'reviews_received',
        onDelete: 'cascade',
        onUpdate: 'cascade'
      })
      User.hasMany(models.Product, {
        foreignKey: 'seller_id',
        as: 'products',
        onDelete: 'cascade',
        onUpdate: 'cascade'
      })
    }
  }
  User.init(
    {
      username: {
        type: DataTypes.STRING,
        allowNull: false,
        unique: true
      },
      password: {
        type: DataTypes.STRING,
        allowNull: false
      }
    },
    {
      sequelize,
      modelName: 'User',
      tableName: 'user'
    }
  )
  return User
}
