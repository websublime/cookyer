// @ts-check

/** @typedef { import('knex') } Knex */

/**
 * @param { Knex } knex
 */
exports.up = function (knex) {
  return knex.schema.createTable('cook_grid', t => {
    t.uuid('uuid');
    t.float('value_of', 2);
    t.float('recommend_value', 2);
    t.uuid('component_uid');
    t.uuid('unit_uid');
    t.uuid('food_uid');
    t.dateTime('created_at', { useTz: true });
    t.dateTime('updated_at', { useTz: true });
  });
};

/**
 * @param { Knex } knex
 */
exports.down = function (knex) {
  return knex.schema.dropTable('cook_grid');
};
