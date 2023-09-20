import 'dart:math';

import 'package:vntu1/main/expression_dto.dart';
import 'package:vntu1/main/input_parser.dart';

class ExpressionHandler {
  double calculateExpression(List<ExpressionDto> dto) {

      int currentPriority = InputParser.availableOpr.map((e) => e.preority).toList().reduce(max);
      for (var i = 0; i < dto.length; i++) {
        if(dto[i].preority==currentPriority){
            var num = dto[i].operation.calc(dto[i].left, dto[i].right);
            if(i>0){
              dto[i-1].right=num;
            }
            if(i<dto.length-1){
              dto[i+1].left=num;
            }
            dto.removeAt(i);
            i--;
        }
        if(dto.length>0 && i==dto.length-1){
          currentPriority--;
          i=0;
        }
        if(dto.length==1){
          break;
        }
      }

    return dto[0].operation.calc(dto[0].left, dto[0].right);



  }
}
