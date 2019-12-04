class HorasUtil{

static DateTime _dateTime = DateTime.now();

  static controleHora() {
    String dataTime = _dateTime.toString();
    List time = dataTime.split("-");
    List time2 = time[2].split(" ");

    dataTime = "${time2[0]}/${time[1]}/${time[0]}";
    return dataTime;
  }
}

/*  _dateTime.toString(); */
