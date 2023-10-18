import 'package:flutter/material.dart';
import 'package:flutter_dialogs/flutter_dialogs.dart';
import 'package:starter_project/core/api/api_provider.dart';
import 'package:starter_project/core/db/preferences_services.dart';

Future<dynamic> signOutDialog(BuildContext context) {
  return showPlatformDialog(
    context: context,
    builder: (context) => BasicDialogAlert(
      title: const Text('Sign Out?'),
      content: const Text('Do you want to sign out from the system'),
      actions: <Widget>[
        BasicDialogAction(
          title: const Text('Yes'),
          onPressed: () {
            PreferencesServices.clearAll().then((value) {
              if (value) {
                ApiProvider.create();
                // context.read<AuthBloc>().clearAll();
                // context.read<SplashBloc>().clearAll();
                // Navigator.pushNamed(context, AppRoutes.splashPage);
              }
            });
          },
        ),
        BasicDialogAction(
          title: const Text('No'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    ),
  );
}
