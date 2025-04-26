import 'package:flutter/material.dart';

class OrderDetailsPage extends StatelessWidget {
  const OrderDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
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

          // Main Content
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Back Button
                Container(
                  padding: const EdgeInsets.all(1),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFF6E5),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios_new,
                      color: Color(0xffDA6317),
                    ),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),

                const SizedBox(height: 10),
                Text(
                  "Order details",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),

                // Order List
                Expanded(
                  child: ListView(
                    children: [
                      FoodItemCard(
                          title: 'Spicy fresh crab',
                          subtitle: 'Waroenk kita',
                          price: 35,
                          imagePath: 'assets/images/food1.png'),
                      const SizedBox(height: 10),
                      FoodItemCard(
                          title: 'Spicy fresh crab',
                          subtitle: 'Waroenk kita',
                          price: 35,
                          imagePath: 'assets/images/food2.png'),
                      const SizedBox(height: 10),
                      FoodItemCard(
                          title: 'Spicy fresh crab',
                          subtitle: 'Waroenk kita',
                          price: 35,
                          imagePath: 'assets/images/food3.png'),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                // Bottom Card
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromARGB(255, 106, 229, 153),
                        Color.fromARGB(255, 42, 178, 103),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    image: DecorationImage(
                      image: AssetImage('assets/images/Pattern.png'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      orderSummaryRow('Sub-Total', '120\$'),
                      orderSummaryRow('Delivery Charge', '10\$'),
                      orderSummaryRow('Discount', '20\$'),
                      SizedBox(height: 10),
                      orderSummaryRow('Total', '150\$', isBold: true),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.green,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          minimumSize: Size(double.infinity, 50),
                        ),
                        child: Text(
                          "Place My Order",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget orderSummaryRow(String title, String amount, {bool isBold = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
              fontSize: isBold ? 18 : 14,
            ),
          ),
          Text(
            amount,
            style: TextStyle(
              color: Colors.white,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
              fontSize: isBold ? 18 : 14,
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

  const FoodItemCard({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
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
                    color: const Color(0xFF53E88B),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          //
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              // Process button
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(229, 255, 228, 1),
                      borderRadius: BorderRadius.circular(9),
                    ),
                    child: Icon(
                      Icons.remove,
                      color: Colors.green,
                      size: 18,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text('1', style: TextStyle(fontWeight: FontWeight.bold)),
                  const SizedBox(width: 8),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromARGB(255, 110, 244, 161),
                          Color.fromARGB(255, 32, 158, 89),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
            ],
          ),
        ],
      ),
    );
  }
}
