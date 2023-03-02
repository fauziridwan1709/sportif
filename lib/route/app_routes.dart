class AppRoutes {
  static const String initialRoute = dummyScreen;
  static const String dummyScreen = '/';

  /// Auth
  static const String splashScreen = '/splash';
  static const String simulationScreen = '/simulation';
  static const String loginScreen = '/auth/login';
  static const String enterPinScreen = '/auth/enter-pin';
  static const String inputNameScreen = '/auth/input_name';
  static const String authOtpRegisterScreen = '/auth/otp/register';

  /// Home
  static const String homeScreen = '/home';

  /// Favourite
  static const String favouriteScreen = '/favourite';

  /// Transaction
  static const String transactionsScreen = '/transactions';
  static const String transactionDetailScreen = '/transactions/:transactionId';
  static const String transactionDetailPath = ':transactionId';
  static const String invoiceScreen = '/transactions/:transactionId/invoice';
  static const String invoicePath = 'invoice';

  /// Profile
  static const String myProfileScreen = '/profile';
  static const String editPhoneNumberScreen = '/profile/edit-phone-number';
  static const String editPhoneNumberPath = 'edit-phone-number';

  static const String editProfileScreen = '/profile/edit';
  static const String editProfilePath = 'edit';

  /// Editor
  static const String editorStory = '/editor/story';

  /// Dashboard
  static const List<String> dashboardRoutes = [
    homeScreen,
    transactionsScreen,
    favouriteScreen,
    myProfileScreen
  ];
}

enum NextAppRoutes {
  dummyScreen(route: '/', routeName: 'Playground screen'),
  splashScreen(route: '/splash', routeName: 'SPLASH'),
  simulationScreen(route: '/simulation', routeName: 'Simulation'),
  transactionDetailScreen(
    route: '/transaction/:transactionId',
    routeName: 'Transaction Detail',
  ),

  /// Auth
  loginScreen(route: '/auth/login', routeName: 'LOGIN'),
  enterPinScreen(route: '/auth/enter-pin', routeName: 'ENTER PIN'),
  inputNameScreen(route: '/auth/input-name', routeName: 'Input Name'),
  authOtpRegisterScreen(route: '/auth/otp/register', routeName: 'OTP REGISTER'),

  /// Profile
  myProfileScreen(route: AppRoutes.myProfileScreen, routeName: 'PROFILE'),

  /// Transaction
  transactionListScreen(
    route: AppRoutes.transactionsScreen,
    routeName: 'TRANSAKSI',
  ),
  editPhoneNumberScreen(
    route: AppRoutes.editPhoneNumberScreen,
    routeName: 'GANTI NOMER',
  ),
  invoiceScreen(route: AppRoutes.invoiceScreen, routeName: 'RECEIPT'),

  /// Account
  editProfileScreen(
    route: AppRoutes.editProfileScreen,
    routeName: 'EDIT PROFILE',
  );

  final String route;
  final String? routeName;
  const NextAppRoutes({
    required this.route,
    this.routeName = '',
  });
}

final blackList = [
  NextAppRoutes.splashScreen.route,
  NextAppRoutes.simulationScreen.route,
];

NextAppRoutes? getRouteFromRouteLocation(String location) {
  final results =
      NextAppRoutes.values.where((element) => element.route == location);
  if (results.isNotEmpty) {
    return results.first;
  }
  return null;
}
