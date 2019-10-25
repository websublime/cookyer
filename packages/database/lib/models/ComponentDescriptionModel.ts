import { Model } from 'objection';

export class ComponentDescriptionModel extends Model {
  readonly uuid?: string;

  static get idColumn() {
    return 'uuid';
  }

  static get tableName() {
    return 'cook_component_description';
  }

  static get modelPaths() {
    return [__dirname];
  }

  static relationMappings = {
    group: {
      relation: Model.BelongsToOneRelation,
      modelClass: 'ComponentModel',
      join: {
        from: 'cook_component_description.component_uid',
        to: 'cook_component.uuid'
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
      component_uuid: {
        type: 'string'
      },
      name: {
        maxLength: 255,
        minLength: 1,
        type: 'string'
      },
      uuid: {
        type: 'string'
      }
    }
  };
}
