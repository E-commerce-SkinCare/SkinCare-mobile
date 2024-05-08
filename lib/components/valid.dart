validinput(String val, int min, int max) {
  if (val.isEmpty) {
    return "Empty field is not allowed!";
  }
  if (val.length > max) {
    return " field can not greater than $max";
  }

  if (val.length < min) {
    return " field can not lesser than $min";
  }
}
