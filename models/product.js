'use strict'
const { Model } = require('sequelize')
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
        onDelete: 'cascade',
        onUpdate: 'cascade'
      })
    }
  }
  Product.init(
    {
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
      description: DataTypes.STRING,
      for_sale: DataTypes.BOOLEAN,
      for_trae: DataTypes.BOOLEAN
    },
    {
      sequelize,
      modelName: 'Product',
      tableName: 'product'
    }
  )
  return Product
}
