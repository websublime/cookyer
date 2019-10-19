import { Model } from 'objection';

export class FoodDescriptionModel extends Model {
  readonly uuid?: string;

  static get idColumn() {
    return 'uuid';
  }

  static get tableName() {
    return 'cook_food_description';
  }

  static get modelPaths() {
    return [__dirname];
  }

  static relationMappings = {
    language: {
      relation: Model.BelongsToOneRelation,
      modelClass: 'FoodModel',
      join: {
        from: 'cook_food_description.food_uid',
        to: 'cook_food.uuid'
      }
    }
  };

  static jsonSchema = {
    type: 'object',

    properties: {
      description: {
        type: 'string'
      },
      food_uuid: {
        type: 'string'
      },
      lang_code: {
        maxLength: 10,
        minLength: 1,
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
