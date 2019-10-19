import { Model } from 'objection';

export class GroupDescriptionModel extends Model {
  readonly uuid?: string;

  static get idColumn() {
    return 'uuid';
  }

  static get tableName() {
    return 'cook_group_description';
  }

  static get modelPaths() {
    return [__dirname];
  }

  static relationMappings = {
    group: {
      relation: Model.BelongsToOneRelation,
      modelClass: 'GroupModel',
      join: {
        from: 'cook_group_description.group_uid',
        to: 'cook_group.uuid'
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
      group_uuid: {
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
