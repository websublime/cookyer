import { LanguageRepository } from '@cookyer/database';
import { Injectable } from '@nestjs/common';

@Injectable()
export class LanguageService {
  constructor(private readonly repository: LanguageRepository) {}

  async getAllLanguages() {
    return await this.repository.findAll();
  }
}
