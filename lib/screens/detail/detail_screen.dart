import 'package:exam_e_commerce/utils/list.dart';
import 'package:flutter/material.dart';

import '../../utils/colors/colors.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                colorBlack1,
                colorBlack2,
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: colorBlack2,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed('/cart');
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: colorBlack2,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Icon(
                          Icons.shopping_bag_outlined,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 260,
                  width: double.infinity,
                  child: Image.asset((detailCheck==true)?productDetails1[selectedIndex]['image']:productDetails2[selectedIndex]['image']),
                ),
                Container(
                  height: 483,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                    ),
                    color: colorBlack1,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                              margin: EdgeInsets.only(left: 10, top: 15),
                              child: Text(
                                (detailCheck==true)?productDetails1[selectedIndex]['name']:productDetails2[selectedIndex]['name'],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                ),
                              )),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              left: 10,
                            ),
                            child:
                            Text(
                              ((detailCheck==true)?productDetails1[selectedIndex]['price']:productDetails2[selectedIndex]['price']).toString(),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        child: Text(
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s',
                          style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            child: Text(
                              'RAM : ',
                              style: TextStyle(
                                color: Colors.grey.shade500,
                                fontSize: 22,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 30,
                            width: 55,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: colorBlack2,
                            ),
                            margin: EdgeInsets.fromLTRB(10, 0, 5, 10),
                            child: Text(
                              '4 GB',
                              style: TextStyle(
                                color: Colors.grey.shade500,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 30,
                            width: 55,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: colorBlack2,
                            ),
                            margin: EdgeInsets.fromLTRB(10, 0, 5, 10),
                            child: Text(
                              '6 GB',
                              style: TextStyle(
                                color: Colors.grey.shade500,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 30,
                            width: 55,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: colorBlack2,
                            ),
                            margin: EdgeInsets.fromLTRB(10, 0, 0, 10),
                            child: Text(
                              '8 GB',
                              style: TextStyle(
                                color: Colors.grey.shade500,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            child: Text(
                              'ROM : ',
                              style: TextStyle(
                                color: Colors.grey.shade500,
                                fontSize: 22,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 30,
                            width: 75,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: colorBlack2,
                            ),
                            margin: EdgeInsets.fromLTRB(10, 0, 5, 10),
                            child: Text(
                              '64 GB',
                              style: TextStyle(
                                color: Colors.grey.shade500,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 30,
                            width: 75,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: colorBlack2,
                            ),
                            margin: EdgeInsets.fromLTRB(10, 0, 5, 10),
                            child: Text(
                              '128 GB',
                              style: TextStyle(
                                color: Colors.grey.shade500,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 30,
                            width: 75,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: colorBlack2,
                            ),
                            margin: const EdgeInsets.fromLTRB(10, 0, 0, 10),
                            child: Text(
                              '256 GB',
                              style: TextStyle(
                                color: Colors.grey.shade500,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed('/cart');
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          height: 70,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: colorBlack2,
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.add_shopping_cart_outlined,
                                color: Colors.white,
                                size: 30,
                              ),
                              Text(
                                'Add To Cart',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
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
