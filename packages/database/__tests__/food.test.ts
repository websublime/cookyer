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
        database: 'cookyer',
      },
      pool: {
        min: 2,
        max: 10,
      },
    });

    repository = new FoodRepository();
  });

  it('# Should find food by ID', async () => {
    const rs = await repository.findById('8c7df2a5-305e-4252-b623-7f518b0fb032');

    const food = {
      uuid: 'b18b0631-5214-4065-837d-09c6a6343a76',
      name: 'Abacate',
      description: 'Abacate',
      lang_code: 'pt',
      food_uid: '8c7df2a5-305e-4252-b623-7f518b0fb032',
    };

    expect(rs).toEqual(food);
  });
});
