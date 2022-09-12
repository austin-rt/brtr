'use strict'
const { Model } = require('sequelize')
module.exports = (sequelize, DataTypes) => {
  class Review extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      Review.belongsTo(models.User, {
        foreignKey: 'user_id',
        as: 'reviews_posted',
        onDelete: 'cascade',
        onUpdate: 'cascade'
      })
      Review.belongsTo(models.User, {
        foreignKey: 'user_id',
        as: 'reviews_received',
        onDelete: 'cascade',
        onUpdate: 'cascade'
      })
    }
  }
  Review.init(
    {
      reviewer_id: {
        type: DataTypes.INTEGER,
        allowNull: false,
        field: 'reviewer_id',
        onDelete: 'CASCADE',
        references: {
          model: 'user',
          key: 'id'
        }
      },
      reviewee_id: {
        type: DataTypes.INTEGER,
        allowNull: false,
        field: 'reviewee_id',
        onDelete: 'CASCADE',
        references: {
          model: 'user',
          key: 'id'
        }
      },
      title: DataTypes.STRING,
      body: DataTypes.STRING,
      rating: DataTypes.INTEGER
    },
    {
      sequelize,
      modelName: 'Review',
      tableName: 'review'
    }
  )
  return Review
}
