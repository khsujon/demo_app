import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_demo/Screens/login_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool keepMeSignedIn = true;
  bool emailSpecialPricing = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 250, 249, 249),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Top Logo and Title Section
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.38,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/bg_image.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/app_logo.png',
                      height: 120,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'FoodNinja',
                      style: TextStyle(
                        fontFamily: 'Viga',
                        fontSize: 40,
                        color: Color(0xFF53E88B),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 1),
                    const Text(
                      'Deliever Favorite Food',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      'Sign Up For Free',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10),

              // TextFields Section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    _buildCustomTextField(
                      hintText: 'Anamwp . . ',
                      iconPath: 'assets/images/Profile.svg',
                      isPassword: false,
                    ),
                    const SizedBox(height: 20),
                    _buildCustomTextField(
                      hintText: 'Email',
                      iconPath: 'assets/images/Message.svg',
                      isPassword: false,
                    ),
                    const SizedBox(height: 20),
                    _buildCustomTextField(
                      hintText: 'Password',
                      iconPath: 'assets/images/Lock.svg',
                      isPassword: true,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Checkboxes Section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    _buildRoundedCheckbox(
                      title: 'Keep Me Signed In',
                      value: keepMeSignedIn,
                      onChanged: (newValue) {
                        setState(() {
                          keepMeSignedIn = newValue!;
                        });
                      },
                    ),
                    const SizedBox(height: 10),
                    _buildRoundedCheckbox(
                      title: 'Email Me About Special Pricing',
                      value: emailSpecialPricing,
                      onChanged: (newValue) {
                        setState(() {
                          emailSpecialPricing = newValue!;
                        });
                      },
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              // Create Account Button
              Container(
                width: MediaQuery.of(context).size.width * 0.6,
                height: 57,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: const LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(0xFF53E88B),
                      Color(0xFF36C475),
                    ],
                  ),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Create Account',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Already have an account? TextButton
              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                },
                child: const Text.rich(
                  TextSpan(
                    text: 'Already have an account?',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF53E88B),
                      decoration: TextDecoration.underline,
                      decorationColor: Color(0xFF53E88B),
                      decorationThickness: 2,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Custom TextField Widget
  Widget _buildCustomTextField({
    required String hintText,
    required String iconPath,
    required bool isPassword,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: const Color(0xFFF4F4F4)),
      ),
      child: TextField(
        obscureText: isPassword,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.grey),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SvgPicture.asset(
              iconPath,
              height: 20,
              width: 20,
            ),
          ),
          suffixIcon: isPassword
              ? Padding(
                  padding: EdgeInsets.all(12.0),
                  child: SvgPicture.asset(
                    'assets/images/Show.svg',
                    height: 20,
                    width: 20,
                  ),
                )
              : null,
          border: InputBorder.none,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        ),
      ),
    );
  }

  // Rounded Checkbox Widget
  // Rounded Gradient Checkbox Widget
  Widget _buildRoundedCheckbox({
    required String title,
    required bool value,
    required Function(bool?) onChanged,
  }) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            onChanged(!value);
          },
          child: Container(
            width: 25,
            height: 25,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: const Color(0xFF53E88B),
                width: 1,
              ),
              gradient: value
                  ? const LinearGradient(
                      colors: [
                        Color(0xFF53E88B),
                        Color(0xFF36C475),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    )
                  : null,
              color: value ? null : Colors.white,
            ),
            child: value
                ? const Icon(
                    Icons.check,
                    size: 18,
                    color: Colors.white,
                  )
                : null,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.black38,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
