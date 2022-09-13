'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class ProductReview extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      ProductReview.belongsTo(models.User, {
        foreignKey: 'reviewer_id',
        as: 'product_reviews_posted',
        onDelete: 'CASCADE',
        onUpdate: 'CASCADE'
      })
      ProductReview.belongsTo(models.Product, {
        foreignKey: 'product_id',
        as: 'product_reviews',
        onDelete: 'CASCADE',
        onUpdate: 'CASCADE'
      })
    }
  }
  ProductReview.init({
    reviewer_id: {
      type: DataTypes.INTEGER,
      allowNull: false,
      field: 'reviewer_id',
        onDelete: 'CASCADE',
        references: {
          model: 'users',
          key: 'id'
        }
    },
    product_id: {
      type: DataTypes.INTEGER,
      allowNull: true,
      field: 'product_id',
        onDelete: 'CASCADE',
        references: {
          model: 'products',
          key: 'id'
        }
    },
    title: {
      type: DataTypes.STRING,
      allowNull: false
    },
    body: {
      type: DataTypes.TEXT,
      allowNull: false
    },
    rating: {
      type: DataTypes.INTEGER,
      allowNull: false
    }
  }, {
    sequelize,
    modelName: 'ProductReview',
    tableName: 'product_reviews',
  });
  return ProductReview;
};