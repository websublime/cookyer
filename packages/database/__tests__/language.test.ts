import { LanguageModel } from '../lib/models/LanguageModel';
import { getDatabaseConnection } from '../lib/connection';
import { LanguageRepository } from '../lib/repositories/LanguageRepository';

import { resolve } from 'path';

//jest.mock('../lib/models/Language');

describe('> Language Repository', () => {
  let repository: LanguageRepository;

  beforeEach(() => {
    getDatabaseConnection({
      client: 'pg',
      connection: {
        host: 'localhost',
        user: 'postgres',
        password: '',
        database: 'cookyer',
      },
      pool: {
        min: 2,
        max: 10,
      },
    });

    repository = new LanguageRepository();
  });

  it('# Should get path', () => {
    const fromHere = resolve(__dirname, '../lib/models');
    const fromProperty = resolve(LanguageModel.modelPaths[0]);

    expect(fromHere).toEqual(fromProperty);
  });

  it('# Should find language by id', async () => {
    const rs = await repository.findById('62110f72-a274-4e8d-8e02-965e36b7edff');

    expect(rs.code).toEqual('pt');
  });

  it('# Should find all languages', async () => {
    const rs = await repository.findAll();

    expect(rs.total).toBeGreaterThan(0);
  });

  it('# Should find language by code', async () => {
    const rs = await repository.findByCode('pt');

    expect(rs.code).toEqual('pt');
  });

  it('# Should find by field', async () => {
    const rs = await repository.find('code', 'pt', '!=');

    expect(rs.length).toBeGreaterThan(0);
  });

  it('# Should have virtual dates', async () => {
    const rs = await repository.findByCode('pt');

    expect(rs.updatedOn < new Date()).toBeTruthy();
    expect(rs.createdOn < new Date()).toBeTruthy();
  });
});
