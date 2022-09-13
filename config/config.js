require('dotenv').config()
module.exports = {
  development: {
    database: 'brtr_development',
    dialect: 'postgres'
  },
  test: {
    database: 'brtr_test',
    dialect: 'postgres'
  },
 production: {
    use_env_variable: 'DATABASE_URL',
    dialect: 'postgres',
    dialectOptions: {
      ssl: {
        rejectUnauthorized: false,
        require: true
      }
    }
  }
}