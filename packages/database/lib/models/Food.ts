import { Model } from 'objection';

export class Food extends Model {
  readonly uuid?: string;

  created_at?: string;
  updated_at?: string;

  static get tableName() {
    return 'cook_food';
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
      modelClass: 'FoodDescription',
      join: {
        to: 'cook_food_description.food_uid',
        from: 'cook_food.uuid'
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
