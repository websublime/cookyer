import { Module, OnModuleInit, Logger } from '@nestjs/common';
import { getDatabaseConnection } from '@cookyer/database';

import { UsersModule } from './users/users.module';
import { LanguageModule } from './language/language.module';

@Module({
  imports: [UsersModule, LanguageModule],
  providers: [Logger],
})
export class AppModule implements OnModuleInit {
  constructor(private logger: Logger) {}

  onModuleInit() {
    getDatabaseConnection({
      client: 'pg',
      connection: {
        host: process.env.DB_HOST,
        user: process.env.DB_USER,
        password: process.env.DB_PASS,
        database: process.env.DB_NAME,
      },
      pool: {
        min: 2,
        max: 10,
      },
    });

    this.logger.log(`The database module has been initialized.`, 'NestApplication');
  }
}
