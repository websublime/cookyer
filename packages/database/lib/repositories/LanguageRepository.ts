import { Language } from '../models/Language';

export class LanguageRepository {
  static query() {
    return Language.query();
  }

  static model() {
    return Language;
  }

  async findById(id: string) {
    return await Language.query()
      .findById(id)
      .modifyEager('descriptor', builder => {
        builder.select('name');
      });
  }

  async findAll(
    orderBy = 'updated_at',
    orderDirection = 'ASC',
    page = 0,
    limit = 20
  ) {
    return await Language.query()
      .orderBy(orderBy, orderDirection)
      .modifyEager('descriptor', builder => {
        builder.select('name');
      })
      .page(page, limit);
  }

  async findByCode(code: string) {
    return await Language.query()
      .where('code', '=', code)
      .first()
      .modifyEager('descriptor', builder => {
        builder.select('name');
      });
  }

  async find(field: string, value: any, operator = '=', withRelated = true) {
    let query = Language.query().where(field, operator, value);

    if (withRelated) {
      query = query.modifyEager('descriptor', builder => {
        builder.select('name');
      });
    }

    return await query;
  }
}
