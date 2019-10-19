import { Model } from 'objection';

export class GroupModel extends Model {
  readonly uuid?: string;

  created_at?: string;
  updated_at?: string;

  static get tableName() {
    return 'cook_group';
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
      modelClass: 'GroupDescriptionModel',
      join: {
        to: 'cook_group_description.group_uid',
        from: 'cook_group.uuid'
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
