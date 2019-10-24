// @ts-check

/** @typedef { import('knex') } Knex */

/**
 * @param { Knex } knex
 */
exports.seed = function (knex) {
  // Deletes ALL existing entries
  return knex('cook_language').del()
    .then(function () {
      // Inserts seed entries
      return knex('cook_language').insert([
        { uuid: '62110f72-a274-4e8d-8e02-965e36b7edff' }
      ]);
    });
};
