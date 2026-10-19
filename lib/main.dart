import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'services/widget_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await WidgetService.updateDaily();
  runApp(const TeknikKimiaApp());
}

class TeknikKimiaApp extends StatelessWidget {
  const TeknikKimiaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Teknik Kimia S1',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: const Color(0xFF00897B),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        colorSchemeSeed: const Color(0xFF00897B),
      ),
      home: const HomeScreen(),
    );
  }
}
