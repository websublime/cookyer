import { getDatabaseConnection } from '../lib/connection';
import { GroupRepository } from '../lib/repositories/GroupRepository';
import { inspect } from 'util';

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
      debug: true,
    });

    repository = new GroupRepository();
  });

  it('# Should find group by ID', async () => {
    const rs = await repository.findById('92c24a83-31c0-44b7-b223-c0966da27f3d');

    const group = {
      uuid: '92c24a83-31c0-44b7-b223-c0966da27f3d',
      name: 'Frutas',
    };

    expect(rs).toEqual(group);
  });

  it('# Should find all groups', async () => {
    const rs = await repository.findAll();

    expect(rs.total).toBeGreaterThan(0);
  });

  it('# Should find food by group', async () => {
    const rs: any = await repository.findFoodByGroupId('92c24a83-31c0-44b7-b223-c0966da27f3d');
    console.log(inspect(rs, { depth: null, colors: true }));
    expect(rs.total > 1).toBeTruthy();
  });
});
