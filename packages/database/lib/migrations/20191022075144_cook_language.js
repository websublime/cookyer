// @ts-check

/** @typedef { import('knex') } Knex */

/**
 * @param { Knex } knex
 */
exports.up = function (knex) {
  return knex.schema.createTable('cook_language', t => {
    t.uuid('uuid');
    t.string('code', 20);
    t.string('iso', 20);
    t.dateTime('created_at', { useTz: true });
    t.dateTime('updated_at', { useTz: true });
  });
};

/**
 * @param { Knex } knex
 */
exports.down = function (knex) {
  return knex.schema.dropTable('cook_language');
};
