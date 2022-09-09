
import 'package:shared_preferences/shared_preferences.dart';

class TokenUsuario {

  static final TokenUsuario _instancia = TokenUsuario._internal();

  factory TokenUsuario() {
    return _instancia;
  }

  TokenUsuario._internal();
  late SharedPreferences _prefs;

  initTokenUsuario() async => _prefs = await SharedPreferences.getInstance();
  
  bool get isPrimeiroAcesso => _prefs.getBool('isPrimeiroAcesso') ?? true;
  set isPrimeiroAcesso(bool value ) => _prefs.setBool('isPrimeiroAcesso', value);

  int get segundosFreeUsados => _prefs.getInt('segundosFreeUsados') ?? 0;
  set segundosFreeUsados(int value ) => _prefs.setInt('segundosFreeUsados', value);
}


