import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_demo/Screens/order_details_screen.dart';

class FavFoodScreen extends StatelessWidget {
  const FavFoodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9FAFB), // light background
      body: Stack(
        children: [
          // Background Image with opacity gradient
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/images/bg_image.png'), // <-- your background image
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          // Main content
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),

                  // Title
                  Row(
                    children: [
                      const Text(
                        "Find Your\nFavorite Food",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: SvgPicture.asset(
                          'assets/images/notification_icon.svg',
                          width: 24,
                          height: 24,
                        ),
                      )
                    ],
                  ),

                  const SizedBox(height: 20),

                  // Search bar + filter button
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 50,
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          decoration: BoxDecoration(
                            color: const Color(0xFFFFF6E5),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                'assets/images/search_icon.svg',
                                width: 24,
                                height: 24,
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "What do you want to order?",
                                    hintStyle: TextStyle(
                                      color: Color(0xffDA6317),
                                      fontSize: 14,
                                    ),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        padding: const EdgeInsets.all(14),
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFF6E5),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: SvgPicture.asset(
                          'assets/images/Filter.svg',
                          width: 24,
                          height: 24,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // Food items list
                  Expanded(
                    child: ListView(
                      children: [
                        FoodItemCard(
                          title: 'Spacy fresh crab',
                          subtitle: 'Waroenk kita',
                          price: 35,
                          imagePath: 'assets/images/food1.png',
                          isAvailable: true,
                        ),
                        const SizedBox(height: 20),
                        FoodItemCard(
                          title: 'Spacy fresh crab',
                          subtitle: 'Waroenk kita',
                          price: 35,
                          imagePath: 'assets/images/food2.png',
                          isAvailable: true,
                        ),
                        const SizedBox(height: 20),
                        FoodItemCard(
                          title: 'Spacy fresh crab',
                          subtitle: 'Waroenk kita',
                          price: 35,
                          imagePath: 'assets/images/food3.png',
                          isAvailable: false,
                        ),
                        const SizedBox(height: 20),
                        FoodItemCard(
                          title: 'Spacy fresh crab',
                          subtitle: 'Waroenk kita',
                          price: 35,
                          imagePath: 'assets/images/food4.png',
                          isAvailable: false,
                        ),
                        const SizedBox(height: 20),
                        FoodItemCard(
                          title: 'Spacy fresh crab',
                          subtitle: 'Waroenk kita',
                          price: 35,
                          imagePath: 'assets/images/food3.png',
                          isAvailable: false,
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Checkout button
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const OrderDetailsPage()));
                    },
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(vertical: 18),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: const LinearGradient(
                          colors: [
                            Color(0xFF53E88B),
                            Color(0xFF36C475),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          'Check out',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FoodItemCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final double price;
  final String imagePath;
  final bool isAvailable;

  const FoodItemCard({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.imagePath,
    required this.isAvailable,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: isAvailable ? Colors.white : Color(0xffD9D9D),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          if (isAvailable)
            BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
        ],
      ),
      child: Row(
        children: [
          // Image
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              imagePath,
              width: 60,
              height: 60,
              fit: BoxFit.cover,
              color: isAvailable ? null : Colors.grey.shade300,
              colorBlendMode: isAvailable ? null : BlendMode.saturation,
            ),
          ),
          const SizedBox(width: 12),

          // Texts
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  subtitle,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),

                // Price
                Text(
                  '\$ $price',
                  style: TextStyle(
                    color: isAvailable ? const Color(0xFF53E88B) : Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          // Price + Process Button
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              // Process button
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: isAvailable
                      ? const LinearGradient(
                          colors: [
                            Color(0xFF53E88B),
                            Color(0xFF36C475),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        )
                      : null,
                  color: isAvailable ? null : Colors.grey.shade300,
                ),
                child: Text(
                  'Process',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(height: 8),
            ],
          ),
        ],
      ),
    );
  }
}
