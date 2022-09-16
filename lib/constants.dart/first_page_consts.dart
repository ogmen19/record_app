import 'package:flutter/material.dart';
import 'package:new_app/constants.dart/main_theme.dart';

class FirstPageColors {
  static const firstPageAppBarColor = mainThemeColor1;
  static const firstPageAppBarTextColor = mainThemeColor2;
  static const firstPageBodyButtonColor_1 = Color.fromARGB(255, 19, 66, 143);
  static const firstPageBodyButtonColor_2 = Color.fromARGB(255, 72, 160, 232);
}

class FirstPageIcons {
  static const firstPageBodyIcon_1 = Icon(Icons.facebook);
}

class FirstPageTexts {
  static Column firstPageAppBarText = Column(
    children: [
      createCenteredText('Görünüşünüz milliyetiniz veya'),
      createCenteredText(
          'Sosyal Statünüz bizi ilgilendirmiyor. Burada kullanıcı'),
      createCenteredText('adı, telefon numarası, profil fotoğrafı ve'),
      createCenteredText('cinsiyet gibi bilgileri istemiyoruz.')
    ],
  );

  static const Text firstPageBodyButtonText_1 = Text('Facebook ile bağlan');
  static const firstPageBodyButtonText_2 = Text('Kayıt ol');
  static const firstPageBodyTextButton_text = Text('Zaten hesabım var? Giriş yap');
}

Center createCenteredText(String text) => Center(
        child: Text(
      text,
      style: const TextStyle(color: mainThemeColor2),
    ));
