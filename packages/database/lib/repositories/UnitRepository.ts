import { UnitModel } from '../models/UnitModel';

export class UnitRepository {
  static query() {
    return UnitModel.query();
  }

  static model() {
    return UnitModel;
  }
}
