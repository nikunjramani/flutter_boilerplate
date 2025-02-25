import 'package:flutter_boilerplate/pages/test/bloc/test_bloc.dart';

import 'package:flutter_boilerplate/index.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeBloc = getIt<ThemeBloc>();
    final localizationBloc = getIt<LocalizationBloc>();
    final testBloc = getIt<TestBloc>();

    return BlocProvider(
      create: (BuildContext context) => testBloc,
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  themeBloc.add(ToggleTheme());
                },
                child: Text("Change Theme"),
              ),
              ElevatedButton(
                onPressed: () {
                  Locale newLocale = (Localizations.localeOf(context).languageCode == 'en') ? const Locale('es') : const Locale('en');
                  localizationBloc.add(ChangeLanguage(newLocale));
                },
                child: Text("Change Language"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
