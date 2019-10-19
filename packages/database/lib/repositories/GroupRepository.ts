import { GroupModel } from '../models/GroupModel';

export class GroupRepository {
  static query() {
    return GroupModel.query();
  }

  static model() {
    return GroupModel;
  }

  async findById(id: string, lang = 'pt') {
    return await GroupModel.query()
      .select('cook_group.uuid', 'descriptor.name')
      .joinRelation('descriptor')
      .where('cook_group.uuid', id)
      .where('descriptor.lang_code', lang)
      .first() as GroupModel;

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
    return await GroupModel.query()
      .select('cook_group.uuid', 'descriptor.name', 'cook_group.created_at', 'cook_group.updated_at')
      .joinRelation('descriptor')
      .where('descriptor.lang_code', lang)
      .orderBy(orderBy, orderDirection)
      .page(page, limit);
  }
}
