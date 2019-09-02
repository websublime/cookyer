import { Model } from 'objection';

export class FoodDescription extends Model {
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
      modelClass: 'Food',
      join: {
        from: 'cook_food_description.food_uid',
        to: 'cook_food.uuid'
      }
    }
  };
}
