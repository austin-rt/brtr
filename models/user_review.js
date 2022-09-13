'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class UserReview extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      UserReview.belongsTo(models.User, {
        foreignKey: 'reviewer_id',
        as: 'user_reviews_posted',
        onDelete: 'CASCADE',
        onUpdate: 'CASCADE'
      })
      UserReview.belongsTo(models.User, {
        foreignKey: 'reviewee_id',
        as: 'reviews_recieved',
        onDelete: 'CASCADE',
        onUpdate: 'CASCADE'
      })
    }
  }
  UserReview.init({
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
    reviewee_id: {
      type: DataTypes.INTEGER,
      allowNull: true,
      field: 'reviewee_id',
        onDelete: 'CASCADE',
        references: {
          model: 'users',
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
    modelName: 'UserReview',
    tableName: 'user_reviews',
  });
  return UserReview;
};