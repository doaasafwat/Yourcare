import 'package:flutter/material.dart';
import 'package:weather_forecasting_app/views/create_new_password.dart';

class BuildForgotPassword extends StatelessWidget {
  const BuildForgotPassword({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CreateNewPassword(),
            ),
          );
        },
        child: const Text(
          'Forgot Password? ',
          style: TextStyle(color: Color(0xFF6A55E0), fontSize: 14),
        ),
      ),
    );
  }
}