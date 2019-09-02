import { getDatabaseConnection } from '../lib/connection';
import { FoodRepository } from '../lib/repositories/FoodRepository';

describe('> Food Repository', () => {
  let repository: FoodRepository;

  beforeEach(() => {
    getDatabaseConnection({
      client: 'pg',
      connection: {
        host: 'localhost',
        user: 'postgres',
        password: '',
        database: 'cookyer'
      },
      pool: {
        min: 2,
        max: 10
      }
    });

    repository = new FoodRepository();
  });

  it('# Should find food by ID', async () => {
    const rs = await repository.findById(
      'b802e23b-8a4e-4f56-8766-081d1007085d'
    );

    console.log(rs);

    expect(true).toBeTruthy();
  });
});
