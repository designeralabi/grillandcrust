import 'package:flutter/material.dart';
import 'package:grill_app/theme/colors.dart';

class CardDetailed extends StatefulWidget {
  const CardDetailed({super.key});

  @override
  State<CardDetailed> createState() => _CardDetailedState();
}

class _CardDetailedState extends State<CardDetailed> {
  int _counter = 1;

  void incrementCounter() {
    _counter++;
  }

  void decrementCounter() {
    _counter -= 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Detailed'),
        actions: [Icon(Icons.favorite_rounded, color: AppColors.bgColor)],
        actionsPadding: EdgeInsets.only(right: 15),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 400,
              padding: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                image: DecorationImage(
                  image: AssetImage('assets/images/burger.png'),
                  fit: BoxFit.cover,
                ),
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.orange,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    width: 150,
                    height: 60,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            if (_counter > 0) {
                              setState(() {
                                decrementCounter();
                              });
                            }
                          },
                          child: Text(
                            '-',
                            style: TextStyle(fontSize: 32, color: Colors.white),
                          ),
                        ),
                        Text(
                          '$_counter',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            setState(() {
                              incrementCounter();
                            });
                          },
                          child: Text(
                            '+',
                            style: TextStyle(fontSize: 32, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(0),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Beaf Fillet Burger',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'Chessy Mozarello',
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'N900',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: AppColors.bgColor,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 8),

                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(Icons.star, size: 18, color: AppColors.orange),
                        Icon(Icons.star, size: 18, color: AppColors.orange),
                        Icon(Icons.star, size: 18, color: AppColors.orange),
                        Icon(Icons.star, size: 18, color: AppColors.orange),
                        Icon(Icons.star, size: 18),
                      ],
                    ),

                    SizedBox(height: 20),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                'Calories',
                                style: TextStyle(
                                  color: AppColors.orange,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              Text('220 Cal'),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                'Delivery',
                                style: TextStyle(
                                  color: AppColors.orange,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              Text('27min'),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                'Size',
                                style: TextStyle(
                                  color: AppColors.orange,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              Text('Large'),
                            ],
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 20),

                    Text(
                      'Juicy perfectly seasoned beef party smashed to cripsy edged pertection, topped with melted sharp cheddar.crisp lettuce, vine-ripe tomatoes, and thinly sliced red onions',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      ),
                    ),

                    SizedBox(height: 20),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.orange,
                        padding: EdgeInsets.symmetric(
                          horizontal: 26,
                          vertical: 15,
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Add to Cart',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
