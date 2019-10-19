import { getDatabaseConnection } from '../lib/connection';
import { GroupRepository } from '../lib/repositories/GroupRepository';

describe('> Group Repository', () => {
  let repository: GroupRepository;

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

    repository = new GroupRepository();
  });

  it('# Should find group by ID', async () => {
    const rs = await repository.findById('92c24a83-31c0-44b7-b223-c0966da27f3d');

    const group = {
      uuid: '92c24a83-31c0-44b7-b223-c0966da27f3d',
      name: 'Frutas'
    };

    expect(rs).toEqual(group);
  });

  it('# Should find all groups', async () => {
    const rs = await repository.findAll();

    expect(rs.total).toBeGreaterThan(0);
  });
});
