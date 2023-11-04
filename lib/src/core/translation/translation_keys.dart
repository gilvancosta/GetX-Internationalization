import 'package:get/get.dart';

class TranslationKeys extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'title': 'GetX Internacionalization',
          'users': 'Users List',
          'welcome': 'Welcome',
          'hello': 'Hello @name',
          'name': ' Name',
        },
        'pt_BR': {
          'title': 'GetX Internacionalização',
          'users': 'Lista de Usuários',
          'welcome': 'Bem-vindo',
          'hello': 'Olá @name',
          'name': 'Nome',
        },
      };
}
