import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.only(left: 25.0, bottom: 30.0, right: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Logo
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.4,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/images/bg_image.png'), // your image path
                      fit: BoxFit
                          .cover, // or BoxFit.fill / BoxFit.fitWidth / etc.
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 20),
                      Center(
                        child: Image.asset(
                          'assets/images/app_logo.png',
                          height: 120,
                        ),
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
                      const SizedBox(height: 5),
                      const Text(
                        'Deliever Favorite Food',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 60),
                // Login Title
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Login To Your Account',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                // Email Field
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle: const TextStyle(color: Colors.grey),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Color(0xFFF4F4F4)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Color(0xFF53E88B)),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                  ),
                ),
                const SizedBox(height: 20),
                // Password Field
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: const TextStyle(color: Colors.grey),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Color(0xFFF4F4F4)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Color(0xFF53E88B)),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                  ),
                ),
                const SizedBox(height: 20),
                // Or Continue With
                const Text(
                  'Or Continue With',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 20),
                // Social Login Buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Facebook Button
                    Expanded(
                      child: Container(
                        height: 57,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: const Color(0xFFF4F4F4)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/images/face_book_icon.svg',
                              height: 24,
                            ),
                            const SizedBox(width: 10),
                            const Text(
                              'Facebook',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    // Google Button
                    Expanded(
                      child: Container(
                        height: 57,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: const Color(0xFFF4F4F4)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/images/google_icon.svg',
                              height: 24,
                            ),
                            const SizedBox(width: 10),
                            const Text(
                              'Google',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                // Forgot Password
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Forgot Your Password?',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF53E88B),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                // Login Button
                SizedBox(
                  width: double.infinity,
                  height: 57,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF53E88B),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
