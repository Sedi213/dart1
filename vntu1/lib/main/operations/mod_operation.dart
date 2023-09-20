import 'package:vntu1/core/base_operation.dart';

class ModOperation extends BaseOperation {
  ModOperation() : super("%",'%',2);

  @override
  double calc(double left, double right) {
    return left % right;
  }
}
