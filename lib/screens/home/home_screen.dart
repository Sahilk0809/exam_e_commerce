import 'package:exam_e_commerce/utils/colors/colors.dart';
import 'package:exam_e_commerce/utils/list.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: colorBlack2,
                        shape: BoxShape.circle,
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/img/profile.jpg'),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed('/cart');
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        height: 50,
                        width: 50,
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
                  height: 55,
                  width: double.infinity,
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: colorBlack2,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'What are you looking for...?',
                          style: TextStyle(
                            color: Colors.grey.shade700,
                            fontSize: 18,
                          ),
                        ),
                        const Icon(
                          Icons.search,
                          size: 30,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 150,
                        width: 350,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: colorBlack2,
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://img.freepik.com/premium-psd/horizontal-website-banne_451189-110.jpg'),
                          ),
                        ),
                      ),
                      Container(
                        height: 150,
                        width: 350,
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: colorBlack2,
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://i.pinimg.com/originals/74/e5/62/74e562795e6ac1e3fee61307e09c3040.jpg'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ...List.generate(categories.length,
                          (index) => categoryContainer(index)),
                    ],
                  ),
                ),
                Column(
                  children: [
                    ...List.generate(
                      productDetails1.length,
                      (index) => productBox(index)),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row productBox(int index) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 250,
          width: 176,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: colorBlack1,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: colorBlack2,
                    ),
                    child: const Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    detailCheck = true;
                    selectedIndex = index;
                    Navigator.of(context).pushNamed('/detail');
                  });
                },
                child: Container(
                  height: 130,
                  width: 150,
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(productDetails1[index]['image']),
                    ),
                  ),
                ),
              ),
              Text(
                productDetails1[index]['name'],
                style: const TextStyle(color: Colors.white, fontSize: 17),
              ),
              Text(
                productDetails1[index]['price'].toString(),
                style: const TextStyle(color: Colors.white, fontSize: 17),
              ),
            ],
          ),
        ),
        Container(
          height: 250,
          width: 176,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: colorBlack1,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: colorBlack2,
                    ),
                    child: const Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    detailCheck = false;
                    selectedIndex = index;
                    Navigator.of(context).pushNamed('/detail');
                  });
                },
                child: Container(
                  height: 130,
                  width: 150,
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(productDetails2[index]['image']),
                    ),
                  ),
                ),
              ),
              Text(
                productDetails2[index]['name'],
                style: const TextStyle(color: Colors.white, fontSize: 17),
              ),
              Text(
                productDetails2[index]['price'].toString(),
                style: const TextStyle(color: Colors.white, fontSize: 17),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Container categoryContainer(index) {
    return Container(
      alignment: Alignment.center,
      height: 40,
      width: 100,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: colorBlack1,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        categories[index],
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
    );
  }
}
