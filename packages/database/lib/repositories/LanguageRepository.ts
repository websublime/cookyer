import { LanguageModel } from '../models/LanguageModel';

export class LanguageRepository {
  static query() {
    return LanguageModel.query();
  }

  static model() {
    return LanguageModel;
  }

  async findById(id: string) {
    return await LanguageModel.query()
      .findById(id)
      .modifyEager('descriptor', builder => {
        builder.select('name');
      });
  }

  async findAll(orderBy = 'updated_at', orderDirection = 'ASC', page = 0, limit = 20) {
    return await LanguageModel.query()
      .select([
        'cook_language.*',
        LanguageModel.relatedQuery('descriptor')
          .select('name')
          .as('language'),
      ])
      .orderBy(orderBy, orderDirection)
      .page(page, limit);
  }

  async findByCode(code: string) {
    return await LanguageModel.query()
      .where('code', '=', code)
      .first()
      .modifyEager('descriptor', builder => {
        builder.select('name');
      });
  }

  async find(field: string, value: any, operator = '=', withRelated = true) {
    let query = LanguageModel.query().where(field, operator, value);

    if (withRelated) {
      query = query.modifyEager('descriptor', builder => {
        builder.select('name');
      });
    }

    return await query;
  }
}
