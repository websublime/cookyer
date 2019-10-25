import { Model } from 'objection';

export class ComponentModel extends Model {
  readonly uuid?: string;

  created_at?: string;
  updated_at?: string;

  static get tableName() {
    return 'cook_component';
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
      modelClass: 'ComponentDescriptionModel',
      join: {
        to: 'cook_component_description.component_uid',
        from: 'cook_component.uuid'
      }
    }
  };

  static jsonSchema = {
    type: 'object',

    properties: {
      uuid: { type: 'string' },
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
