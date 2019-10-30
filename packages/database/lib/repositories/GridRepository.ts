import { GridModel } from '../models/GridModel';

export class GridRepository {
  static query() {
    return GridModel.query();
  }

  static model() {
    return GridModel;
  }

  async getFoodCompositionTable(foodId: string, lang = 'pt') {
    return await GridModel.query()
      .joinRelation('[food, component, unit]')
      .select(
        'cook_grid.uuid',
        'cook_grid.value_of',
        'cook_grid.recommend_value',
        'food.name',
        'component.name',
        'unit.symbol'
      )
      .where('food.lang_code', lang)
      .where('food.food_uid', foodId);
  }
}
