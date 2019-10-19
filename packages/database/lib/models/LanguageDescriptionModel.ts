import { Model } from 'objection';

export class LanguageDescriptionModel extends Model {
  readonly uuid?: string;

  static get idColumn() {
    return 'uuid';
  }

  static get tableName() {
    return 'cook_language_description';
  }

  static get modelPaths() {
    return [__dirname];
  }

  static relationMappings = {
    language: {
      relation: Model.BelongsToOneRelation,
      modelClass: 'LanguageModel',
      join: {
        from: 'cook_language_description.lang_uid',
        to: 'cook_language.uuid'
      }
    }
  };

  static jsonSchema = {
    type: 'object',

    properties: {
      lang_code: {
        maxLength: 10,
        minLength: 1,
        type: 'string'
      },
      lang_uuid: {
        type: 'string'
      },
      name: {
        maxLength: 100,
        minLength: 1,
        type: 'string'
      },
      uuid: {
        type: 'string'
      }
    }
  };
}
