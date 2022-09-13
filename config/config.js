require('dotenv').config()
module.exports = {
  "development": {
    "database": "rated_our_development",
    "dialect": "postgres"
  },
  "test": {
    "database": "rated_our_test",
    "dialect": "postgres"
  },
  "production": {
    "use_env_variable": "DATABASE_URL",
    "dialect": "postgres",
    "dialectOptions": {
      "ssl": {
        "rejectUnauthorized": false,
        "require": true
      }
    }
  }
}