'use strict';
const { User, sequelize } = require('../models');
const falso = require('@ngneat/falso');

module.exports = {
  async up (queryInterface, Sequelize) {
    const productPhotos = [
  'https://i.imgur.com/XbFLYsp.jpg', 
  'https://i.imgur.com/ksI7k23.jpg', 
  'https://i.imgur.com/4p58dyS.jpg', 
  'https://i.imgur.com/Ynnsn8F.jpg', 
  'https://i.imgur.com/m6DkhpA.jpg', 
  'https://i.imgur.com/rrZdNEe.jpg', 
  'https://i.imgur.com/iRxODR2.jpg', 
  'https://i.imgur.com/5uRTgn7.jpg', 
  'https://i.imgur.com/sj5U5Yg.jpg', 
  'https://i.imgur.com/imElQNh.jpg', 
  'https://i.imgur.com/V8nuehm.jpg', 
  'https://i.imgur.com/l8IufJU.jpg', 
  'https://i.imgur.com/tpDypAu.jpg', 
  'https://i.imgur.com/kWEBnVI.jpg', 
  'https://i.imgur.com/8qy1EXX.jpg', 
  'https://i.imgur.com/QR0lvbZ.jpg', 
  'https://i.imgur.com/H6RfTfS.jpg', 
  'https://i.imgur.com/la5HlOJ.jpg', 
  'https://i.imgur.com/ZBkaREQ.jpg', 
  'https://i.imgur.com/tomrM6W.jpg', 
  'https://i.imgur.com/GCZimHC.jpg', 
  'https://i.imgur.com/NspWEgF.jpg', 
  'https://i.imgur.com/QBzCDod.jpg', 
  'https://i.imgur.com/sNeB2Fu.jpg', 
  'https://i.imgur.com/GhRcS7I.jpg'
]

const products = await Promise.all(
  [...Array(25)].map(async (arr, idx) => {
        let user = await User.findOne({ order: sequelize.random(), raw: true });
        return {
          name: falso.randCatchPhrase(),
          description: falso.randParagraph(),
          price: falso.randFloat(),
          image: productPhotos[idx],
          seller_id: user.id,
          createdAt: new Date(),
          updatedAt: new Date()
        };
      })
    );
    return queryInterface.bulkInsert('products', products);
  },

    down: async (queryInterface, Sequelize) => {
    return queryInterface.bulkDelete('products');
  }
};


// rating: Math.floor((Math.random() * 5) + 1),
