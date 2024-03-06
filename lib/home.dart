import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "home",
      home: HomePageView(),
    );
  }
}

class HomePageView extends StatefulWidget {
  @override
  _HomePageViewState createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  List<String> items = ["Cappucino", "Machiato","Latte", "Americano"];

  int current = 0;
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              Container(
                padding: const EdgeInsets.fromLTRB(30, 70, 30, 0),
                color: Color.fromRGBO(19, 19, 19, 1),
                height: 350,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                              Text('Location',
                              style: TextStyle(
                                color: Color.fromRGBO(183, 183, 183, 1),
                                fontFamily: 'sora',
                                fontSize: 13,
                                fontWeight: FontWeight.w200,
                              ),
                              ),
                              Row(
                                children: [
                                  Text('Bilzen, Tanjungbalai',
                                  style: TextStyle(
                                color: Color.fromRGBO(221, 221, 221, 1),
                                fontFamily: 'sora',
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                                  ),),
                                  Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                          ],
                        ),
                        Image.asset('images/pp.png'),
                      ],
                    ),
                    const SizedBox(height: 40),
                    TextField(
                      cursorColor: Colors.white,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromRGBO(49, 49, 49, 1),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                        hintText: 'Search Coffee',
                        hintStyle: const TextStyle(color: Color.fromRGBO(152, 152, 152, 1)),
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        suffixIcon: Container(
                          margin: const EdgeInsets.only(right: 5),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(49, 49, 49, 1),
                            borderRadius: BorderRadius.circular(15)),
                          child: Image.asset('images/setting.png'),
                        )
                      ),
                    )
                  ],
                ),
              ),
              Transform.translate(
                offset: const Offset(0, 250),
                child: Center(
                  child: Stack(children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        'images/bg promo.png',
                        width: 320,
                        height: 160,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 60,
                            height: 25,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(237, 81, 81, 1),
                              borderRadius: BorderRadius.circular(7)),
                            child: const Center(
                              child: Text(
                                'Promo',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'sora',
                                  fontWeight: FontWeight.w600
                                  ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Stack(children: [
                            Positioned(
                              top: 15,
                              child: Container(
                                height: 20,
                                width: 190,
                                color: Color.fromRGBO(49, 49, 49, 1),
                              ),
                            ),
                            Positioned(
                              top: 53,
                              child: Container(
                                height: 25,
                                width: 145,
                                color: Color.fromRGBO(49, 49, 49, 1),
                              ),
                            ),
                            const SizedBox(
                              width: 200,
                              child: Text('Buy one get one FREE',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                                fontFamily: 'sora',
                                fontWeight: FontWeight.w600)
                              )
                            )
                          ])
                        ]
                      )
                    )
                  ])
                )
              )
            ]),
            const SizedBox(height: 80),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      width: 150,
                      height: 280,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(children: [
                        Container(
                          margin: const EdgeInsets.only(top: 8),
                          child: Stack(children: [
                            Image.asset(
                              'images/kp 1.png',
                              width: 155,
                              fit: BoxFit.cover,
                            ),
                            Image.asset('images/star1.png'),
                          ]),
                        ),
                        Container(
                            margin: const EdgeInsets.all(15),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Cappucino',
                                    style: TextStyle(
                                        color: Color.fromRGBO(47, 45, 44, 1),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  const SizedBox(height: 8),
                                  const Text(
                                    'with Chocolate',
                                    style: TextStyle(
                                        color: Color.fromRGBO(155, 155, 155, 1),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  const SizedBox(height: 10),
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          '\$ 4.53',
                                          style: TextStyle(
                                              color: Color.fromRGBO(47, 75, 78, 1),
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Container(
                                          width: 35,
                                          height: 35,
                                          decoration: BoxDecoration(
                                              color: Color.fromRGBO(198, 124, 78, 1),
                                              borderRadius:
                                                  BorderRadius.circular(12)),
                                          child: IconButton(
                                            onPressed: () {},
                                            icon: const Icon(Icons.add,
                                                color: Colors.white, size: 20),
                                          ),
                                        )
                                      ])
                                ]))
                      ])),
                  Container(
                    width: 150,
                    height: 280,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 8),
                          child: Stack(children: [
                            Image.asset(
                              'images/kp 2.png',
                              width: 155,
                              fit: BoxFit.cover,
                            ),
                            Image.asset('images/star2.png'),
                          ]),
                        ),
                        Container(
                          margin: const EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Cappucino',
                                style: TextStyle(
                                    color: Color.fromRGBO(47, 45, 44, 1),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(height: 8),
                              const Text(
                                'with Oat Milk',
                                style: TextStyle(
                                    color: Color.fromRGBO(155, 155, 155, 1),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    '\$ 3.90',
                                    style: TextStyle(
                                        color: Color.fromRGBO(47, 75, 78, 1),
                                        fontSize: 22,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Container(
                                    width: 35,
                                    height: 35,
                                    decoration: BoxDecoration(
                                        color: Color.fromRGBO(198, 124, 78, 1),
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.add,
                                          color: Colors.white, size: 20),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      width: 150,
                      height: 280,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(children: [
                        Container(
                          margin: const EdgeInsets.only(top: 8),
                          child: Stack(children: [
                            Image.asset(
                              'images/kp 3.png',
                              width: 155,
                              fit: BoxFit.cover,
                            ),
                            Image.asset('images/star4.png'),
                          ]),
                        ),
                        Container(
                            margin: const EdgeInsets.all(15),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Cappucino',
                                    style: TextStyle(
                                        color: Color.fromRGBO(47, 45, 44, 1),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  const SizedBox(height: 8),
                                  const Text(
                                    'with Chocolate',
                                    style: TextStyle(
                                        color: Color.fromRGBO(155, 155, 155, 1),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  const SizedBox(height: 10),
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          '\$ 4.53',
                                          style: TextStyle(
                                              color: Color.fromRGBO(47, 75, 78, 1),
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Container(
                                          width: 35,
                                          height: 35,
                                          decoration: BoxDecoration(
                                              color: Color.fromRGBO(198, 124, 78, 1),
                                              borderRadius:
                                                  BorderRadius.circular(12)),
                                          child: IconButton(
                                            onPressed: () {},
                                            icon: const Icon(Icons.add,
                                                color: Colors.white, size: 20),
                                          ),
                                        )
                                      ])
                                ]))
                      ])),
                  Container(
                    width: 150,
                    height: 280,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 8),
                          child: Stack(children: [
                            Image.asset(
                              'images/kp 4.png',
                              width: 155,
                              fit: BoxFit.cover,
                            ),
                            Image.asset('images/star3.png'),
                          ]),
                        ),
                        Container(
                          margin: const EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Cappucino',
                                style: TextStyle(
                                    color: Color.fromRGBO(47, 45, 44, 1),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(height: 8),
                              const Text(
                                'with Oat milk',
                                style: TextStyle(
                                    color: Color.fromRGBO(155, 155, 155, 1),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    '\$ 3.90',
                                    style: TextStyle(
                                        color: Color.fromRGBO(47, 75, 78, 1),
                                        fontSize: 22,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Container(
                                    width: 35,
                                    height: 35,
                                    decoration: BoxDecoration(
                                        color: Color.fromRGBO(198, 124, 78, 1),
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.add,
                                          color: Colors.white, size: 20),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: Color.fromRGBO(198, 124, 78, 1),
        unselectedItemColor: Color.fromRGBO(141, 141, 141, 1),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'settings'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'settings'
          ),
        ]
      ),
      );
  }
}