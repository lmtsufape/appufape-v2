import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:thunderapp/screens/screens_index.dart';
import 'package:thunderapp/screens/signin/components/email_form.dart';
import 'package:thunderapp/screens/signin/components/password_form.dart';
import 'package:thunderapp/screens/signin/sign_in_controller.dart';
import 'package:thunderapp/screens/signin/sign_in_model.dart';
import 'package:thunderapp/shared/constants/app_number_constants.dart';
import 'package:thunderapp/shared/constants/style_constants.dart';
import 'package:thunderapp/shared/core/selected_item.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //**Here's an example of how you should use the provider */
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => SignInController(context)),
        ],
        builder: (context, child) {
          return Consumer<SignInController>(
            //**Now here we set the Consumer of we type it to use its methods. Its builder parameter takes three parameters
            //a builder, a controller and a child. You should use the controller to allow the use of the class's methods */
            builder: (context, controller, child) => Scaffold(
              body: Padding(
                padding: const EdgeInsets.all(kDefaultPadding),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text('Tela de login'),
                    //*From here you can just call "controller." to get references to their methods */
                    EmailForm(onChanged: (value) => controller.email = value),
                    PasswordForm(
                        onChanged: (value) => controller.password = value),
                    controller.status == SignInStatus.loading
                        ? const CircularProgressIndicator()
                        : ElevatedButton(
                            onPressed: () => controller.signIn(),
                            child: const Text('Entrar'))
                  ],
                ),
              ),
            ),
          );
        });
  }
}
