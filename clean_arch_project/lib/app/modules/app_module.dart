
import 'package:clean_arch_project/app/modules/home/presentation/home/home_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override 
  final List<Bind> binds = [];

  @override 
  final List<ModularRoute> routes = [
    ModuleRoute('/', module: HomeModule()),
  ];


}