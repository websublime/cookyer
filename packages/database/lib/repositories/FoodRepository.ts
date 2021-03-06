import { FoodModel } from '../models/FoodModel';

export class FoodRepository {
  static query() {
    return FoodModel.query();
  }

  static model() {
    return FoodModel;
  }

  async findById(id: string, lang = 'pt') {
    const query = await FoodModel.query().findById(id);

    return await query.$relatedQuery('descriptor').where('cook_food_description.lang_code', lang);

    /*return await Food.query()
      .select(
        'cook_food.uuid',
        'descriptor.name',
        'descriptor.description',
        'cook_food.created_at',
        'cook_food.updated_at'
      )
      .joinRelation('descriptor')
      .where('descriptor.food_uid', id);*/
  }

  async findAll(lang = 'pt', orderBy = 'updated_at', orderDirection = 'ASC', page = 0, limit = 20) {
    return await FoodRepository.query()
      .select(
        'cook_food.uuid',
        'descriptor.name',
        'descriptor.description',
        'cook_food.created_at',
        'cook_food.updated_at'
      )
      .joinRelation('descriptor')
      .where('descriptor.lang_code', lang)
      .orderBy(orderBy, orderDirection)
      .page(page, limit);
  }
}
