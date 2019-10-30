import { ComponentModel } from '../models/ComponentModel';

export class ComponentRepository {
  static query() {
    return ComponentModel.query();
  }

  static model() {
    return ComponentModel;
  }
}
