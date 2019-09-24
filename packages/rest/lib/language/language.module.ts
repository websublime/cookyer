import { Module } from '@nestjs/common';
import { LanguageRepository } from '@cookyer/database';
import { LanguageService } from './language.service';
import { LanguageController } from './language.controller';

const languageRepositoryFactory = {
  provide: LanguageRepository,
  useFactory: () => {
    return new LanguageRepository();
  },
};

@Module({
  providers: [languageRepositoryFactory, LanguageService],
  exports: [LanguageService],
  controllers: [LanguageController],
})
export class LanguageModule {}
