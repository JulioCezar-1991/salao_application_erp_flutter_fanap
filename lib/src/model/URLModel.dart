class URLModel {

  String _url = "http://apinodejs.ddns.net:3000";

  String get getConfingURL => this._url;
  

  set setConfingURL(String value){
    this._url = value;
  }
}
