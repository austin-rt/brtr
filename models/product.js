'use strict';
const {
  Model
} = require('sequelize');
const User = require('./User');
module.exports = (sequelize, DataTypes) => {
  class Product extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      Product.belongsTo(models.User, {
        foreignKey: 'seller_id',
        as: 'products',
        onDelete: 'CASCADE',
        onUpdate: 'CASCADE'
      })
      Product.hasMany(models.ProductReview, {
        foreignKey: 'product_id',
        as: 'product_reviews',
        onDelete: 'CASCADE',
        onUpdate: 'CASCADE'
      })
    }
  }
  Product.init({
    seller_id: {
        type: DataTypes.INTEGER,
        allowNull: false,
        field: 'seller_id',
        onDelete: 'CASCADE',
        references: {
          model: 'users',
          key: 'id'
        }
      },
    name: DataTypes.STRING,
    price: DataTypes.FLOAT,
    image: {
        type: DataTypes.TEXT,
        allowNull: true
      },
    description: DataTypes.TEXT
  }, {
    sequelize,
    modelName: 'Product',
    tableName: 'products',
  });
  return Product;
};