import 'package:vntu1/core/base_operation.dart';
import 'package:vntu1/core/calculator_exception.dart';
import 'package:vntu1/main/expression_dto.dart';
import 'package:vntu1/main/operations/add_operation.dart';
import 'package:vntu1/main/operations/div_operation.dart';
import 'package:vntu1/main/operations/mod_operation.dart';
import 'package:vntu1/main/operations/mul_operation.dart';
import 'package:vntu1/main/operations/sub_operation.dart';

class InputParser {
  static final List<BaseOperation> availableOpr = [
    AddOperation(),
    SubOperation(),
    MulOperation(),
    ModOperation(),
    DivOperation()
  ];
  List<ExpressionDto> parse(String input) {
    List<ExpressionDto> operationlist = [];

    RegExp availableOprSym = RegExp(('['+availableOpr.map((e) => e.symbolToRegEx).join()+']'));
    List<String> numbers = input.split(availableOprSym);
    List<String> operationStr = input.split(RegExp(r'[1234567890.]'));
operationStr.removeWhere((element) => element=='');
  if(numbers.length!=(operationStr.length+1)){
    throw CalculatorException();
  }
   for (var i = 0; i < operationStr.length; i++) {
    BaseOperation? operation;

    for (var j = 0; j < availableOpr.length; j++) {
      if(operationStr[i]==availableOpr[j].symbol){
        operation=availableOpr[j];
        break;
      }
    }

    double left = double.parse(numbers[i]);
    double right = double.parse(numbers[i+1]);

     operationlist.add(ExpressionDto(left: left, right: right, operation: operation!));
   }   
    return operationlist;
  }
}
