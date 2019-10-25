import { Model } from 'objection';

export class UnitDescriptionModel extends Model {
  readonly uuid?: string;

  static get idColumn() {
    return 'uuid';
  }

  static get tableName() {
    return 'cook_unit_description';
  }

  static get modelPaths() {
    return [__dirname];
  }

  static relationMappings = {
    group: {
      relation: Model.BelongsToOneRelation,
      modelClass: 'UnitModel',
      join: {
        from: 'cook_unit_description.unit_uid',
        to: 'cook_unit.uuid'
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
      unit_uuid: {
        type: 'string'
      },
      name: {
        maxLength: 255,
        minLength: 1,
        type: 'string'
      },
      symbol: {
        maxLength: 20,
        minLength: 1,
        type: 'string'
      },
      uuid: {
        type: 'string'
      }
    }
  };
}
