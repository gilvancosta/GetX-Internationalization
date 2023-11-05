import "package:get/get.dart";

enum TranslationKey {
  titleApp("titleApp"),
  users("welcome"),
  welcome("title"),
  hello("welcome"),
  name("name"),
  userListTitleSimple(
    "userListTitleSimple",
    "userListTitlePlural",
  );

  final String key;
  final String? plural;

  const TranslationKey(this.key, [this.plural]);

  String get tr => key.tr;
  String trParams(Map<String, String> params) => key.trParams(params);

  String trPlural(int total) {
    if (plural == null) {
      return "";
    } else {
      return key.trPlural(plural, total);
    }
  }
}

class TranslationKeys extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "en_US": {
          TranslationKey.titleApp.key: "GetX Internacionalization",
          "users": "Users List",
          "welcome": "Welcome",
          "hello": "Hello @name",
          "name": " Name",
          "userListTitleSimple": "@total user",
          "userListTitlePlural": "@total Users",
        },
        "pt_BR": {
          TranslationKey.titleApp.key: "GetX Internacionalização",
          "users": "Lista de Usuários",
          "welcome": "Bem-vindo",
          "hello": "Olá @name",
          "name": "Nome",
          "userListTitleSimple": "@total Usuário",
          "userListTitlePlural": "@total Usuários",
        },
      };
}
