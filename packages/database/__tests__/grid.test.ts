import { getDatabaseConnection } from '../lib/connection';
import { GridRepository } from '../lib/repositories/GridRepository';
import { inspect } from 'util';

describe('> Grid Repository', () => {
  let repository: GridRepository;

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

    repository = new GridRepository();
  });

  it('# Should find grid by ID', async () => {
    const rs = await repository.getFoodCompositionTable('3fcb83cd-6baf-43a4-a695-4f9969b8b20a');

    // console.log(inspect(rs, { depth: null, colors: true }));

    expect(rs.length).toBeGreaterThan(5);
  });
});
