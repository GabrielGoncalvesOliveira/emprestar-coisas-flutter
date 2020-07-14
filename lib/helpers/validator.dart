class Validator {
  static String isEmptyText(String text) {
    if (text.isEmpty) return 'Campo obrigatório';

    return null;
  }

  static String isEmptyDate(DateTime dateTime) {
    if (dateTime == null) return 'Campo obrigatório';

    return null;
  }

  static String isTelephoneWithCorretNumberGaranted(String text){
    if(isEmptyText(text) != null) return isEmptyText(text);
    if(text.length > 20) return 'Numero de caracteres excedido';
  }

  static String isDateLowerThanToday(DateTime dateTime){
    if(isEmptyDate(dateTime) != null) return isEmptyDate(dateTime);
    if(calculateDifference(dateTime) < 0) return 'Data maior que o dia de hoje';
    
    return null;
  }

  static int calculateDifference(DateTime date) {
    DateTime now = DateTime.now();
    return DateTime(date.year, date.month, date.day).difference(DateTime(now.year, now.month, now.day)).inDays;
  }
}