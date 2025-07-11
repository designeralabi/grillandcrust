import 'package:flutter/material.dart';
import 'package:grill_app/theme/colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  // TextEditingController String _searchField = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu, size: 24),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 32,
              width: 32,
              margin: EdgeInsets.only(right: 16),
              child: CircleAvatar(
                radius: 16,
                backgroundImage: AssetImage('assets/images/burger.png'),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // greetings
            Column(
              children: [
                Text(
                  'Good Afternoon',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                Text(
                  'What your order today?',
                  style: TextStyle(color: AppColors.orange),
                ),
              ],
            ),
            SizedBox(height: 22),

            TextField(
              controller: TextEditingController(),
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(24),
                hintText: 'Search',
                fillColor: Colors.white,
                filled: true,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100),
                  borderSide: BorderSide.none,
                ),
                suffixIcon: Icon(Icons.search, size: 32),
              ),
            ),

            SizedBox(height: 22),
            Container(
              decoration: BoxDecoration(
                color: AppColors.lightYellow,
                borderRadius: BorderRadiusGeometry.all(Radius.circular(10)),
              ),
              child: Stack(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsetsGeometry.symmetric(
                          horizontal: 0,
                          vertical: 70,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,

                          children: [
                            Text(
                              'The Fastest In Delivery Food',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 12),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.orange,
                                foregroundColor: Colors.white,
                              ),
                              onPressed: () {},
                              child: Text(
                                'Order Now',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Image.asset(
                          'assets/images/delivery_guy.png',
                          width: 185,
                          // fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
