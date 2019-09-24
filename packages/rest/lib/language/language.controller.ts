import { Controller, Get, Request, Post, UseGuards } from '@nestjs/common';
import { AuthGuard } from '@nestjs/passport';
import { LanguageService } from './language.service';

@Controller()
export class LanguageController {
  constructor(private readonly langService: LanguageService) {}

  //@UseGuards(AuthGuard('local'))
  @Get('languages')
  async getLanguages() {
    return this.langService.getAllLanguages();
  }
}
