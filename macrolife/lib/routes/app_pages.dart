import 'package:macrolife/screen/favoritos/binding.dart';
import 'package:macrolife/screen/favoritos/screen.dart';
import 'package:macrolife/screen/loader/binding.dart';
import 'package:macrolife/screen/loader/screen.dart';
import 'package:macrolife/screen/objetivos/binding.dart';
import 'package:macrolife/screen/objetivos/screen.dart';
import 'package:macrolife/screen/registro/registro_binding.dart';
import 'package:macrolife/screen/registro/registro_screen.dart';
import 'package:macrolife/screen/registro_pasos/binding.dart';
import 'package:macrolife/screen/registro_pasos/screen.dart';
import 'package:macrolife/screen/suscripcion/binding.dart';
import 'package:macrolife/screen/suscripcion/screen.dart';
import 'package:macrolife/widgets/layout.dart';
import 'package:get/get.dart';
import 'package:macrolife/screen/layout_home/layout_home_binding.dart';
import 'package:macrolife/screen/layout_home/layout_home_screen.dart';
import 'package:macrolife/screen/login/login_binding.dart';
import 'package:macrolife/screen/login/login_screen.dart';
import 'package:macrolife/screen/principal/principal_binding.dart';
import 'package:macrolife/screen/principal/principal_screen.dart';
import 'package:macrolife/screen/recover_password/recovery_password_binding.dart';
import 'package:macrolife/screen/recover_password/recovery_password_screen.dart';
part './app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.initial,
      page: () => const PrincipalScreen(),
      binding: PrincipalBinding(),
    ),
    GetPage(
      name: Routes.login,
      page: () => const LoginScreen(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.registro_pasos,
      page: () => const RegistroPasosScreen(),
      binding: RegistroPasosBinding(),
    ),

    GetPage(
      name: Routes.suscripcion,
      page: () => const SuscripcionScreen(),
      binding: SuscripcionBinding(),
    ),

    GetPage(
      name: Routes.favoritos,
      page: () => const FavoritosScreen(),
      binding: FavoritosBinding(),
    ),
    // GetPage(
    //   name: Routes.nutricion,
    //   page: () => const NutricionScreen(),
    //   binding: NutricionBinding(),
    // ),
    GetPage(
      name: Routes.layout_home,
      page: () => const LayoutHomeScreen(),
      binding: LayoutHomeBinding(),
    ),
    GetPage(
      name: Routes.layout,
      page: () => LayoutScreen(),
      binding: LayoutBinding(),
    ),
    GetPage(
      name: Routes.recovery_password,
      page: () => const RecoveryPasswordScreen(),
      binding: RecoveryPasswordBinding(),
    ),
    GetPage(
      name: Routes.registro,
      page: () => const RegistroScreen(),
      binding: RegistroBinding(),
    ),
    GetPage(
      name: Routes.loader,
      page: () => const LoaderScreen(),
      binding: LoaderBinding(),
    ),
    GetPage(
      name: Routes.objetivos,
      page: () => const ObjetivosScreen(),
      binding: ObjetivosBinding(),
    ),
  ];
}