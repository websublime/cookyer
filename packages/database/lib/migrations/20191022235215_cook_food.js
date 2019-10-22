// @ts-check

/** @typedef { import('knex') } Knex */

/**
 * @param { Knex } knex
 */
exports.up = function (knex) {
  return knex.schema.createTable('cook_food', t => {
    t.uuid('uuid');
    t.dateTime('created_at', { useTz: true });
    t.dateTime('updated_at', { useTz: true });
  });
};

/**
 * @param { Knex } knex
 */
exports.down = function (knex) {
  return knex.schema.dropTable('cook_food');
};
