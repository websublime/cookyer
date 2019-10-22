// @ts-check

/** @typedef { import('knex') } Knex */

/**
 * @param { Knex } knex
 */
exports.up = function (knex) {
  return knex.schema.createTable('cook_group_description', t => {
    t.uuid('uuid');
    t.string('name', 255);
    t.string('lang_code', 20);
    t.uuid('group_uid');
  });
};

/**
 * @param { Knex } knex
 */
exports.down = function (knex) {
  return knex.schema.dropTable('cook_group_description');
};
