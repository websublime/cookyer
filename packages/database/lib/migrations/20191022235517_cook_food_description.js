// @ts-check

/** @typedef { import('knex') } Knex */

/**
 * @param { Knex } knex
 */
exports.up = function (knex) {
  return knex.schema.createTable('cook_food_description', t => {
    t.uuid('uuid');
    t.string('name', 255);
    t.string('description');
    t.string('lang_code', 20);
    t.uuid('food_uid');
  });
};

/**
 * @param { Knex } knex
 */
exports.down = function (knex) {
  return knex.schema.dropTable('cook_food_description');
};
