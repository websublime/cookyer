// @ts-check

/** @typedef { import('knex') } Knex */

/**
 * @param { Knex } knex
 */
exports.up = function (knex) {
  return knex.schema.createTable('cook_component_description', t => {
    t.uuid('uuid');
    t.string('name', 255);
    t.string('lang_code', 20);
    t.uuid('component_uid');
  });
};

/**
 * @param { Knex } knex
 */
exports.down = function (knex) {
  return knex.schema.dropTable('cook_component_description');
};
