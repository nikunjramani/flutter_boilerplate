
import 'package:flutter_boilerplate/index.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<ThemeBloc>()),
        BlocProvider(create: (_) => getIt<LocalizationBloc>()),
      ],
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, themeState) {
          return BlocBuilder<LocalizationBloc, LocalizationState>(
            builder: (context, localeState) {
              return MaterialApp(
                localizationsDelegates: [
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                  LocalString.delegate,
                ],
                theme: themeState.themeData,
                locale: localeState.locale,
                navigatorKey: AppRouter.navigatorKey,
                onGenerateRoute: AppRouter.onGenerateRoute,
                initialRoute: '/home',
                title: 'BoilerPlate',
                debugShowCheckedModeBanner: false,
              );
            },
          );
        },
      ),
    );
  }
}
