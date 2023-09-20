import 'package:vntu1/core/base_operation.dart';

class SubOperation extends BaseOperation {
  SubOperation() : super("-",'-',1);

  @override
  double calc(double left, double right) {
    return left - right;
  }
}
