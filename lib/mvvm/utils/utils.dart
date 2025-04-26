import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:learngetx/mvvm/res/color/app_colors.dart';

class Utils {
  // TO CHANGE FOCUS ON TEXT FORM FIELDS
  static void fieldFocusChange(
      BuildContext context, FocusNode current, FocusNode next) {
    current.unfocus();
    FocusScope.of(context).requestFocus(next);
  }

  // TO SHOW TOAST MESSAGE
  static toastMessage(String msg) {
    Fluttertoast.showToast(
        msg: msg, backgroundColor: AppColors.backgroundColor2);
  }
}
