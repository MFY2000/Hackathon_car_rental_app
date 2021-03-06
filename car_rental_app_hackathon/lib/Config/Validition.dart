import 'package:car_rental_app_hackathon/Config/constants.dart';

validtionConstantName(String name) {
  List<dynamic> toReturn = [true, ""];
  if (name.isEmpty) {
    toReturn[1] = kEmailNullError;
  } else if (name.length < 1) {
    toReturn[1] = kShortNameError;
  } else {
    toReturn[0] = false;
  }

  return toReturn;
}

validtionConstantEmail(String email) {
  List<dynamic> toReturn = [true, ""];
  if (email.isEmpty) {
    toReturn[1] = kEmailNullError;
  } else if (!(email.contains(emailValidatorRegExp))) {
    toReturn[1] = kInvalidEmailError;
  } else {
    toReturn[0] = false;
  }

  return toReturn;
}

validtionConstantPassword(String password) {
  List<dynamic> toReturn = [true, ""];
  if (password.isEmpty) {
    toReturn[1] = kEmailNullError;
  } else if (password.length < 6) {
    toReturn[1] = kShortPassError;
  } else {
    toReturn[0] = false;
  }

  return toReturn;
}
