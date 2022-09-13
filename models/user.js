'use strict';
const { Model } = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class User extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      User.hasMany(models.Product, {
        foreignKey: 'seller_id',
        as: 'products',
        onDelete: 'CASCADE',
        onUpdate: 'CASCADE'
      })
      User.hasMany(models.UserReview, {
        foreignKey: 'reviewer_id',
        as: 'user_reviews_posted',
        onDelete: 'CASCADE',
        onUpdate: 'CASCADE'
      })
      User.hasMany(models.UserReview, {
        foreignKey: 'reviewee_id',
        as: 'reviews_received',
        onDelete: 'CASCADE',
        onUpdate: 'CASCADE'
      })
      User.hasMany(models.ProductReview, {
        foreignKey: 'reviewer_id',
        as: 'product_reviews_posted',
        onDelete: 'CASCADE',
        onUpdate: 'CASCADE'
      })
    }
  }
  User.init({
    username: {
        type: DataTypes.STRING,
        allowNull: false,
        unique: true
      },
    email: {
        type: DataTypes.STRING,
        allowNull: false,
        unique: true
      },
    password: {
        type: DataTypes.STRING,
        allowNull: false
      }
  }, {
    sequelize,
    modelName: 'User',
    tableName: 'users',
  });
  return User;
};