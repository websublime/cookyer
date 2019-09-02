import * as Knex from 'knex';

import { Model } from 'objection';

let connection: Knex = null;

export function getDatabaseConnection(config?: Knex.Config): Knex {
  if (connection === null) {
    connection = Knex(config);
    Model.knex(connection);
  }

  return connection;
}
