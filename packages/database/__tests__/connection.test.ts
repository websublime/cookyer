import { getDatabaseConnection } from '../lib/connection';
import Knex from 'knex';

const dbSettings: Knex.Config = {
  client: 'pg',
  connection: {
    host: 'localhost',
    user: 'postgres',
    password: '',
    database: 'cookyer'
  },
  pool: {
    min: 2,
    max: 10
  }
  //timezone: 'UTC'
};

describe('> Database connection', () => {
  it('# Should get a valid database connection', () => {
    expect(typeof getDatabaseConnection(dbSettings) == 'function').toBeTruthy();
  });
});
