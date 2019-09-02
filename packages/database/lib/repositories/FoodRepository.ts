import { Food } from '../models/Food';

export class FoodRepository {
  async findById(id: string) {
    const query = await Food.query().findById(id);

    return await query.$relatedQuery('descriptor');

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
}
