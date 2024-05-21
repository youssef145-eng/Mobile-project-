import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_project/DB/db_sql_lite.dart';
import 'package:my_project/views/pages/home_page.dart';
import 'package:my_project/views/widgets/custom_scaffold.dart';

class sign_up extends StatefulWidget {
  const sign_up({super.key});

  @override
  State<sign_up> createState() => _SignUpState();
}

class _SignUpState extends State<sign_up> {
  final _formSignInKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  db_sql_lite data = db_sql_lite();

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Expanded(
              flex: 1,
              child: SizedBox(height: 10.0),
            ),
            Expanded(
              flex: 7,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  ),
                ),
                child: Form(
                  key: _formSignInKey,
                  child: Column(
                    children: [
                      Text(
                        'Get started',
                        style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w900),
                      ),
                      const SizedBox(height: 20),
                      _buildTextField(
                        controller: _usernameController,
                        label: 'User name',
                        hintText: 'Enter user name',
                        validatorMessage: 'Please enter user name',
                      ),
                      const SizedBox(height: 20),
                      _buildTextField(
                        controller: _fullNameController,
                        label: 'Full Name',
                        hintText: 'Enter your full name',
                        validatorMessage: 'Please enter your Name',
                      ),
                      const SizedBox(height: 20),
                      _buildTextField(
                        controller: _emailController,
                        label: 'Email',
                        hintText: 'Enter Email',
                        validatorMessage: 'Please enter email',
                      ),
                      const SizedBox(height: 20),
                      _buildTextField(
                        controller: _passwordController,
                        label: 'Password',
                        hintText: 'Enter password',
                        validatorMessage: 'Please enter password',
                        obscureText: true,
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        child: ElevatedButton(
                          onPressed: _onSignUpPressed,
                          child: const Text('Sign up'),
                        ),
                      ),
                      const SizedBox(height: 20),
                      _buildDividerWithText(),
                      const SizedBox(height: 10),
                      _buildSocialIconsRow(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
    required String hintText,
    required String validatorMessage,
    bool obscureText = false,
  }) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      obscuringCharacter: '*',
      validator: (value) {
        if (value == null || value.isEmpty) {
          return validatorMessage;
        }
        return null;
      },
      decoration: InputDecoration(
        label: Text(label),
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.black26),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black12),
          borderRadius: BorderRadius.circular(10.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black12),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }

  void _onSignUpPressed() async {
    if (_formSignInKey.currentState!.validate()) {
      int response = await data.insert_data('''
INSERT INTO Accounts (user_name, full_name, email, password)
VALUES ('${_usernameController.text}', '${_fullNameController.text}', '${_emailController.text}', '${_passwordController.text}');
      ''');

      if (response > 0) {
        print("done======");
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Home_page()),
        );
      } else {
        // Handle insertion failure
        print('Failed to insert data');
      }
    }
  }

  Widget _buildDividerWithText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Divider(
            thickness: 0.7,
            color: Colors.grey.withOpacity(0.5),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          child: Text(
            'Sign up with',
            style: TextStyle(color: Colors.black45),
          ),
        ),
        Expanded(
          child: Divider(
            thickness: 0.7,
            color: Colors.grey.withOpacity(0.5),
          ),
        ),
      ],
    );
  }

  Widget _buildSocialIconsRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(
          FontAwesomeIcons.facebook,
          size: 48,
          color: Colors.blue,
        ),
        Icon(
          FontAwesomeIcons.x,
          size: 48,
        ),
        Icon(
          FontAwesomeIcons.snapchat,
          size: 48,
          color: Color.fromARGB(255, 243, 240, 33),
        ),
        Icon(
          FontAwesomeIcons.apple,
          size: 48,
        ),
      ],
    );
  }
}
