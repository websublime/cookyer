import { Model } from 'objection';

export class LanguageDescription extends Model {
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
      modelClass: 'Language',
      join: {
        from: 'cook_language_description.lang_uid',
        to: 'cook_language.uuid'
      }
    }
  };
}
