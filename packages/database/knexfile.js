// Update with your config settings.

module.exports = {

  development: {
    client: 'pg',
    connection: {
      host: 'localhost',
      user: 'miguelramos',
      password: '',
      database: 'cookyer'
    },
    pool: {
      min: 2,
      max: 10
    },
    migrations: {
      tableName: 'cook_migrations'
    },
    migrations: {
      directory: __dirname + '/lib/migrations'
    },
    seeds: {
      directory: __dirname + '/lib/seeds/development'
    }
  },

  staging: {
    client: 'pg',
    connection: {
      host: 'localhost',
      user: 'miguelramos',
      password: '',
      database: 'cookyer'
    },
    pool: {
      min: 2,
      max: 10
    },
    migrations: {
      tableName: 'cook_migrations'
    },
    migrations: {
      directory: __dirname + '/lib/migrations'
    },
    seeds: {
      directory: __dirname + '/lib/seeds/statging'
    }
  },

  production: {
    client: 'pg',
    connection: {
      host: 'localhost',
      user: 'miguelramos',
      password: '',
      database: 'cookyer'
    },
    pool: {
      min: 2,
      max: 10
    },
    migrations: {
      tableName: 'cook_migrations'
    },
    migrations: {
      directory: __dirname + '/lib/migrations'
    },
    seeds: {
      directory: __dirname + '/lib/seeds/production'
    }
  }

};
