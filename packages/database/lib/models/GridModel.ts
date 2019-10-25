import { Model } from 'objection';

export class GridModel extends Model {
  readonly uuid?: string;

  created_at?: string;
  updated_at?: string;

  static get tableName() {
    return 'cook_grid';
  }

  static get idColumn() {
    return 'uuid';
  }

  static get modelPaths() {
    return [__dirname];
  }

  static relationMappings = {
    component: {
      relation: Model.BelongsToOneRelation,
      modelClass: 'ComponentDescriptionModel',
      join: {
        to: 'cook_component_description.component_uid',
        from: 'cook_grid.component_uid'
      }
    },
    unit: {
      relation: Model.BelongsToOneRelation,
      modelClass: 'UnitDescriptionModel',
      join: {
        to: 'cook_unit_description.unit_uid',
        from: 'cook_grid.unit_uid'
      }
    },
    food: {
      relation: Model.BelongsToOneRelation,
      modelClass: 'FoodDescriptionModel',
      join: {
        to: 'cook_food_description.food_uid',
        from: 'cook_grid.food_uid'
      }
    }
  };

  static jsonSchema = {
    type: 'object',

    properties: {
      uuid: { type: 'string' },
      value_of: {type: 'number'},
      recommend_value: {type: 'number'},
      component_uid: {type: 'string'},
      unit_uid: {type: 'string'},
      food_uid: {type: 'string'},
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
