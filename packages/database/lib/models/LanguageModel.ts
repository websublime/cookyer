import { Model } from 'objection';

export class LanguageModel extends Model {
  readonly uuid?: string;

  code?: string;
  created_at?: string;
  updated_at?: string;

  static get tableName() {
    return 'cook_language';
  }

  static get idColumn() {
    return 'uuid';
  }

  static get modelPaths() {
    return [__dirname];
  }

  static relationMappings = {
    descriptor: {
      relation: Model.BelongsToOneRelation,
      modelClass: 'LanguageDescriptionModel',
      join: {
        to: 'cook_language_description.lang_uid',
        from: 'cook_language.uuid'
      }
    }
  };

  static jsonSchema = {
    type: 'object',
    required: ['code'],

    properties: {
      uuid: { type: 'string' },
      code: { type: 'string', minLength: 1, maxLength: 10 },
      iso: { type: 'string', minLength: 1, maxLength: 10 },
      created_at: { type: 'string' },
      updated_at: { type: 'string' }
    }
  };

  $beforeInsert() {
    this.created_at = new Date().toISOString();
  }

  $beforeUpdate() {
    this.updated_at = new Date().toISOString();
  }

  get createdOn() {
    return new Date(this.created_at);
  }

  get updatedOn() {
    return new Date(this.updated_at);
  }
}
