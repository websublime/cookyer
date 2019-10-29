import { Model } from 'objection';

export class FoodGroupModel extends Model {
  static get tableName() {
    return 'cook_food_group';
  }

  static get idColumn() {
    return 'uuid';
  }

  static get modelPaths() {
    return [__dirname];
  }

  static relationMappings = {
    food: {
      relation: Model.BelongsToOneRelation,
      modelClass: 'FoodDescriptionModel',
      join: {
        to: 'cook_food_description.food_uid',
        from: 'cook_food_group.food_uid',
      },
    },
    group: {
      relation: Model.BelongsToOneRelation,
      modelClass: 'GroupDescriptionModel',
      join: {
        to: 'cook_group_description.group_uid',
        from: 'cook_food_group.group_uid',
      },
    },
  };
}
