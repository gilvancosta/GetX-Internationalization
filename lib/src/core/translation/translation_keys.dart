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
          'user_list_title_simple': '@total user',
          'user_list_title_plural': '@total Users',
        },
        'pt_BR': {
          'title': 'GetX Internacionalização',
          'users': 'Lista de Usuários',
          'welcome': 'Bem-vindo',
          'hello': 'Olá @name',
          'name': 'Nome',
          'user_list_title_simple': '@total Usuário',
          'user_list_title_plural': '@total Usuários',
        },
      };
}
