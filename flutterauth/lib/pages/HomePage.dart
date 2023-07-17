import 'package:flutter/material.dart';
import '../config.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20.fh, left: 20.fw),
            child: Text(
              'Hi, Monica!',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.065,
                color: const Color(0xFF6318AF),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 10.fw),
                  child: Column(
                    children: [
                      const Text('Current location',
                          style: TextStyle(color: Colors.grey)),
                      Padding(
                        padding: EdgeInsets.only(right: 20.fw),
                        child: const Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: Color(0xFF6318AF),
                            ),
                            Text('Hydrabad'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                const Column(
                  children: [
                    Icon(
                      Icons.play_circle_outline,
                      color: Color(0xFF6318AF),
                    ),
                    Text('How its work?')
                  ],
                )
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20.fw),
                  child: Container(
                    width: 300.fw,
                    height: 130.fh,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20.fw),
                    ),
                    child: Image.asset(
                      'assests/first.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20.fw,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20.fw),
                  child: Container(
                    width: 280.fw,
                    height: 130.fh,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20.fw),
                    ),
                    child: Image.asset(
                      'assests/second.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 5,
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  label: const Text('Search food or events'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  suffixIcon: const Icon(
                    Icons.search,
                    color: Color(0xFF6318AF),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.fh, left: 20.fw),
            child: Text(
              'Start crafting',
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.065,
                  color: const Color(0xFF6318AF)),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.fw, top: 20.fh),
                child: Container(
                  width: 150.fw,
                  height: 130.fh,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: 150.fw,
                        height: 100.fh,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                        ),
                        child: Image.asset(
                          'assests/third.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5.fh.fh),
                        child: const Text(
                          'Default Platters',
                          style: TextStyle(fontWeight: FontWeight.normal),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(),
              Padding(
                padding: EdgeInsets.only(right: 20.fw, top: 20.fh),
                child: Container(
                  width: 150.fw,
                  height: 130.fh,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: 150.fw,
                        height: 100.fh,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                        ),
                        child: Image.asset(
                          'assests/fourth.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5.fh.fh),
                        child: const Text('Craft Your Own',
                            style: TextStyle(fontWeight: FontWeight.normal)),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20.fw, top: 20.fh),
                  child: Container(
                    width: 170.fw,
                    height: 158.fh,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 5.fh),
                        Padding(
                          padding: EdgeInsets.only(right: 30.fw),
                          child: const Text(
                            'Default Menu 1',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: 5.fh),
                        Padding(
                          padding: EdgeInsets.only(left: 5.fw, right: 5.fw),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 65.fw,
                                height: 65.fh,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.3),
                                      spreadRadius: 2,
                                      blurRadius: 5,
                                    ),
                                  ],
                                ),
                                child: Image.asset('assests/vegetable.png',
                                    fit: BoxFit.fill),
                              ),
                              const Text(
                                  '3 starters\n3 maincourse\n3 desserts\n3 drinks')
                            ],
                          ),
                        ),
                        SizedBox(height: 10.fh),
                        Row(
                          children: [
                            SizedBox(width: 20.fw),
                            Icon(
                              Icons.person,
                              color: Colors.grey,
                              size: 14.fw,
                            ),
                            SizedBox(width: 5.fw),
                            Text(
                              "Min 800",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.04),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.fh),
                        Row(
                          children: [
                            SizedBox(width: 20.fw),
                            Text('Starts at ₹ 779',
                                style: TextStyle(
                                  color: Color(0xFF6318AF),
                                ))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.fw,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.fw, top: 20.fh),
                  child: Container(
                    width: 170.fw,
                    height: 158.fh,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 5.fh),
                        Padding(
                          padding: EdgeInsets.only(right: 30.fw),
                          child: const Text(
                            'Default Menu 1',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: 5.fh),
                        Padding(
                          padding: EdgeInsets.only(left: 5.fw, right: 5.fw),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 65.fw,
                                height: 65.fh,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.3),
                                      spreadRadius: 2,
                                      blurRadius: 5,
                                    ),
                                  ],
                                ),
                                child: Image.asset('assests/vegetable.png',
                                    fit: BoxFit.fill),
                              ),
                              const Text(
                                  '3 starters\n3 maincourse\n3 desserts\n3 drinks')
                            ],
                          ),
                        ),
                        SizedBox(height: 10.fh),
                        Row(
                          children: [
                            SizedBox(width: 20.fw),
                            Icon(
                              Icons.person,
                              color: Colors.grey,
                              size: 14.fw,
                            ),
                            SizedBox(width: 5.fw),
                            Text(
                              "Min 800",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.04),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.fh),
                        Row(
                          children: [
                            SizedBox(width: 20.fw),
                            Text('Starts at ₹ 779',
                                style: TextStyle(
                                  color: Color(0xFF6318AF),
                                ))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.fw,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.fw, top: 20.fh),
                  child: Container(
                    width: 170.fw,
                    height: 158.fh,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 5.fh),
                        Padding(
                          padding: EdgeInsets.only(right: 30.fw),
                          child: const Text(
                            'Default Menu 1',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: 5.fh),
                        Padding(
                          padding: EdgeInsets.only(left: 5.fw, right: 5.fw),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 65.fw,
                                height: 65.fh,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.3),
                                      spreadRadius: 2,
                                      blurRadius: 5,
                                    ),
                                  ],
                                ),
                                child: Image.asset('assests/vegetable.png',
                                    fit: BoxFit.fill),
                              ),
                              const Text(
                                  '3 starters\n3 maincourse\n3 desserts\n3 drinks')
                            ],
                          ),
                        ),
                        SizedBox(height: 10.fh),
                        Row(
                          children: [
                            SizedBox(width: 20.fw),
                            Icon(
                              Icons.person,
                              color: Colors.grey,
                              size: 14.fw,
                            ),
                            SizedBox(width: 5.fw),
                            Text(
                              "Min 800",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.04),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.fh),
                        Row(
                          children: [
                            SizedBox(width: 20.fw),
                            Text('Starts at ₹ 779',
                                style: TextStyle(
                                  color: Color(0xFF6318AF),
                                ))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.fw,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.fw, top: 20.fh),
                  child: Container(
                    width: 170.fw,
                    height: 158.fh,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 5.fh),
                        Padding(
                          padding: EdgeInsets.only(right: 30.fw),
                          child: const Text(
                            'Default Menu 1',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: 5.fh),
                        Padding(
                          padding: EdgeInsets.only(left: 5.fw, right: 5.fw),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 65.fw,
                                height: 65.fh,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.3),
                                      spreadRadius: 2,
                                      blurRadius: 5,
                                    ),
                                  ],
                                ),
                                child: Image.asset('assests/vegetable.png',
                                    fit: BoxFit.fill),
                              ),
                              const Text(
                                  '3 starters\n3 maincourse\n3 desserts\n3 drinks')
                            ],
                          ),
                        ),
                        SizedBox(height: 10.fh),
                        Row(
                          children: [
                            SizedBox(width: 20.fw),
                            Icon(
                              Icons.person,
                              color: Colors.grey,
                              size: 14.fw,
                            ),
                            SizedBox(width: 5.fw),
                            Text(
                              "Min 800",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.04),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.fh),
                        Row(
                          children: [
                            SizedBox(width: 20.fw),
                            Text('Starts at ₹ 779',
                                style: TextStyle(
                                  color: Color(0xFF6318AF),
                                ))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.fw,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.fw, top: 20.fh),
                  child: Container(
                    width: 170.fw,
                    height: 158.fh,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 5.fh),
                        Padding(
                          padding: EdgeInsets.only(right: 30.fw),
                          child: const Text(
                            'Default Menu 1',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: 5.fh),
                        Padding(
                          padding: EdgeInsets.only(left: 5.fw, right: 5.fw),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 65.fw,
                                height: 65.fh,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.3),
                                      spreadRadius: 2,
                                      blurRadius: 5,
                                    ),
                                  ],
                                ),
                                child: Image.asset('assests/vegetable.png',
                                    fit: BoxFit.fill),
                              ),
                              const Text(
                                  '3 starters\n3 maincourse\n3 desserts\n3 drinks')
                            ],
                          ),
                        ),
                        SizedBox(height: 10.fh),
                        Row(
                          children: [
                            SizedBox(width: 20.fw),
                            Icon(
                              Icons.person,
                              color: Colors.grey,
                              size: 14.fw,
                            ),
                            SizedBox(width: 5.fw),
                            Text(
                              "Min 800",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.04),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.fh),
                        Row(
                          children: [
                            SizedBox(width: 20.fw),
                            Text('Starts at ₹ 779',
                                style: TextStyle(
                                  color: Color(0xFF6318AF),
                                ))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20.fw,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 30.fh, left: 20.fw, bottom: 20.fh),
            child: Text(
              'Top Categories',
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.056,
                  fontWeight: FontWeight.normal),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20.fw),
                      child: Container(
                        width: 100.fw,
                        height: 150.fh,
                        child: Column(
                          children: [
                            Image.asset(
                              'assests/1.png',
                              fit: BoxFit.fill,
                            ),
                            const Text('Starters'),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 20.fw,
                ),
                Column(
                  children: [
                    Container(
                      width: 100.fw,
                      height: 150.fh,
                      child: Column(
                        children: [
                          Container(
                              height: 82.fh,
                              child: Image.asset(
                                'assests/2.png',
                                fit: BoxFit.fill,
                              )),
                          const Text('Drinks'),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 20.fw,
                ),
                Column(
                  children: [
                    Container(
                      width: 100.fw,
                      height: 150.fh,
                      child: Column(
                        children: [
                          Container(
                              height: 82.fh,
                              child: Image.asset(
                                'assests/3.png',
                                fit: BoxFit.fill,
                              )),
                          const Text('Rice'),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 20.fw,
                ),
                Column(
                  children: [
                    Container(
                      width: 100.fw,
                      height: 150.fh,
                      child: Column(
                        children: [
                          Container(
                              height: 82.fh,
                              child: Image.asset(
                                'assests/4.png',
                                fit: BoxFit.fill,
                              )),
                          const Text('Curry'),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 20.fw,
                ),
                Column(
                  children: [
                    Container(
                      width: 100.fw,
                      height: 150.fh,
                      child: Column(
                        children: [
                          Container(
                              height: 82.fh,
                              child: Image.asset(
                                'assests/5.png',
                                fit: BoxFit.fill,
                              )),
                          const Text('Desserts'),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 20.fw,
                ),
                Column(
                  children: [
                    Container(
                      width: 100.fw,
                      height: 150.fh,
                      child: Column(
                        children: [
                          Container(
                              height: 82.fh,
                              child: Image.asset(
                                'assests/1.png',
                                fit: BoxFit.fill,
                              )),
                          const Text('Starters'),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.fw),
                child: Text(
                  'Main Course',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.056,
                      fontWeight: FontWeight.normal),
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(right: 20),
                child: Text(
                  'More Main Course',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.04,
                    fontWeight: FontWeight.normal,
                    color: Color(0xFF6318AF),
                  ),
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20.fw, top: 20.fh),
                  child: Container(
                    width: 110.fw,
                    height: 150.fh,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: 110.fw,
                          height: 120.fh,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20)),
                          ),
                          child: Image.asset(
                            'assests/forth.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5.fh),
                          child: Text(
                            'Grill Chiken',
                            style: TextStyle(fontWeight: FontWeight.normal),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 20.fw, right: 20.fw, top: 20.fh),
                  child: Container(
                    width: 110.fw,
                    height: 150.fh,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: 110.fw,
                          height: 120.fh,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20)),
                          ),
                          child: Image.asset(
                            'assests/fifth.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5.fh),
                          child: Text(
                            'Grill Chiken',
                            style: TextStyle(fontWeight: FontWeight.normal),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20.fw, top: 20.fh),
                  child: Container(
                    width: 110.fw,
                    height: 150.fh,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: 110.fw,
                          height: 120.fh,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20)),
                          ),
                          child: Image.asset(
                            'assests/six.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5.fh),
                          child: Text(
                            'Grill Chiken',
                            style: TextStyle(fontWeight: FontWeight.normal),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20.fw, top: 20.fh),
                  child: Container(
                    width: 110.fw,
                    height: 150.fh,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: 110.fw,
                          height: 120.fh,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20)),
                          ),
                          child: Image.asset(
                            'assests/forth.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5.fh),
                          child: Text(
                            'Grill Chiken',
                            style: TextStyle(fontWeight: FontWeight.normal),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20.fw, top: 20.fh),
                  child: Container(
                    width: 110.fw,
                    height: 150.fh,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: 110.fw,
                          height: 120.fh,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20)),
                          ),
                          child: Image.asset(
                            'assests/forth.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5.fh),
                          child: Text(
                            'Grill Chiken',
                            style: TextStyle(fontWeight: FontWeight.normal),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.fh),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20.fw),
                  child: Text(
                    'Starters',
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.056,
                        fontWeight: FontWeight.normal),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(right: 20.fw),
                  child: Text(
                    'More Starters',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.04,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF6318AF),
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
                Padding(
                  padding: EdgeInsets.only(left: 20.fw, top: 20.fh),
                  child: Container(
                    width: 110.fw,
                    height: 150.fh,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: 110.fw,
                          height: 120.fh,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20)),
                          ),
                          child: Image.asset(
                            'assests/seven.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5.fh),
                          child: Text(
                            'Grill Chiken',
                            style: TextStyle(fontWeight: FontWeight.normal),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 20.fw, right: 20.fw, top: 20.fh),
                  child: Container(
                    width: 110.fw,
                    height: 150.fh,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: 110.fw,
                          height: 120.fh,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20)),
                          ),
                          child: Image.asset(
                            'assests/eight.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5.fh),
                          child: Text(
                            'Grill Chiken',
                            style: TextStyle(fontWeight: FontWeight.normal),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20.fw, top: 20.fh),
                  child: Container(
                    width: 110.fw,
                    height: 150.fh,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: 110.fw,
                          height: 120.fh,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20)),
                          ),
                          child: Image.asset(
                            'assests/nine.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5.fh),
                          child: Text(
                            'Grill Chiken',
                            style: TextStyle(fontWeight: FontWeight.normal),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20.fw, top: 20.fh),
                  child: Container(
                    width: 110.fw,
                    height: 150.fh,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: 110.fw,
                          height: 120.fh,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20)),
                          ),
                          child: Image.asset(
                            'assests/seven.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5.fh),
                          child: Text(
                            'Grill Chiken',
                            style: TextStyle(fontWeight: FontWeight.normal),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20.fw, top: 20.fh),
                  child: Container(
                    width: 110.fw,
                    height: 150.fh,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: 110.fw,
                          height: 120.fh,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20)),
                          ),
                          child: Image.asset(
                            'assests/seven.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5.fh),
                          child: Text(
                            'Grill Chiken',
                            style: TextStyle(fontWeight: FontWeight.normal),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 30.fh, left: 20.fw, bottom: 20.fh),
            child: Text(
              'Services',
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.056,
                  fontWeight: FontWeight.normal),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20.fw),
                  child: Container(
                    width: 280.fw,
                    height: 300.fh,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 5,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10.fh,
                        ),
                        Container(
                          width: 260.fw,
                          height: 110.fh,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(0),
                          ),
                          child: Image.asset('assests/b.png'),
                        ),
                        SizedBox(
                          height: 10.fh,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 10.fw,
                            ),
                            Icon(Icons.circle_rounded),
                            SizedBox(
                              width: 5.fw,
                            ),
                            Text(
                              'Signature',
                              style: TextStyle(
                                  color: Color(0xFF6318AF),
                                  fontWeight: FontWeight.normal,
                                  fontSize: MediaQuery.of(context).size.width *
                                      0.055),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5.fh,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 10.fw,
                            ),
                            Icon(Icons.star_border_purple500),
                            SizedBox(
                              width: 5.fw,
                            ),
                            Text(
                              'High Quality Disposable Cutlery',
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.width *
                                      0.038),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 10.fw,
                            ),
                            Icon(Icons.star_border_purple500),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Elegant Decorations & Table Settings',
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.width *
                                      0.038),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 10.fw,
                            ),
                            Icon(Icons.star_border_purple500),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Served by Waitstaff',
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.width *
                                      0.038),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Icon(Icons.star_border_purple500),
                            SizedBox(
                              width: 5.fw,
                            ),
                            Text(
                              'Best for Weddings,Events etc',
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.width *
                                      0.038),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Know More',
                          style: TextStyle(
                              color: Color(0xFF6318AF),
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20.fw,
                ),
                Container(
                  width: 280.fw,
                  height: 300.fh,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 5,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10.fh,
                      ),
                      Container(
                        width: 260.fw,
                        height: 110.fh,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(0),
                        ),
                        child: Image.asset('assests/a.png'),
                      ),
                      SizedBox(
                        height: 10.fh,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 10.fw,
                          ),
                          Icon(Icons.circle_rounded),
                          SizedBox(
                            width: 5.fw,
                          ),
                          Text(
                            'Signature',
                            style: TextStyle(
                                color: Color(0xFF6318AF),
                                fontWeight: FontWeight.normal,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.055),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5.fh,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 10.fw,
                          ),
                          Icon(Icons.star_border_purple500),
                          SizedBox(
                            width: 5.fw,
                          ),
                          Text(
                            'High Quality Disposable Cutlery',
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.038),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 10.fw,
                          ),
                          Icon(Icons.star_border_purple500),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Elegant Decorations & Table Settings',
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.038),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 10.fw,
                          ),
                          Icon(Icons.star_border_purple500),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Served by Waitstaff',
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.038),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.star_border_purple500),
                          SizedBox(
                            width: 5.fw,
                          ),
                          Text(
                            'Best for Weddings,Events etc',
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.038),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Know More',
                        style: TextStyle(
                            color: Color(0xFF6318AF),
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 20.fw,
                ),
                Container(
                  width: 280.fw,
                  height: 300.fh,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 5,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10.fh,
                      ),
                      Container(
                        width: 260.fw,
                        height: 110.fh,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(0),
                        ),
                        child: Image.asset('assests/b.png'),
                      ),
                      SizedBox(
                        height: 10.fh,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 10.fw,
                          ),
                          Icon(Icons.circle_rounded),
                          SizedBox(
                            width: 5.fw,
                          ),
                          Text(
                            'Signature',
                            style: TextStyle(
                                color: Color(0xFF6318AF),
                                fontWeight: FontWeight.normal,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.055),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5.fh,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 10.fw,
                          ),
                          Icon(Icons.star_border_purple500),
                          SizedBox(
                            width: 5.fw,
                          ),
                          Text(
                            'High Quality Disposable Cutlery',
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.038),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 10.fw,
                          ),
                          Icon(Icons.star_border_purple500),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Elegant Decorations & Table Settings',
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.038),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 10.fw,
                          ),
                          Icon(Icons.star_border_purple500),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Served by Waitstaff',
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.038),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.star_border_purple500),
                          SizedBox(
                            width: 5.fw,
                          ),
                          Text(
                            'Best for Weddings,Events etc',
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.038),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.fh,
                      ),
                      const Text(
                        'Know More',
                        style: TextStyle(
                            color: Color(0xFF6318AF),
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 20.fw,
                ),
              ],
            ),
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 140.fw, top: 20.fh),
                child: Text(
                  'How does it work ?',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.056,
                      fontWeight: FontWeight.normal),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20.fw),
                child: Row(
                  children: [
                    SizedBox(
                      width: 5.fw,
                    ),
                    Container(
                      height: 100.fh,
                      width: 100.fw,
                      child: Image.asset('assests/e.png'),
                    ),
                     SizedBox(
                      width: 12.fw,
                    ),
                     Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 60.fw),
                          child: Text(
                            'Customize Menu',
                            style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width * 0.05,
                                color: Color(0xFF6318AF),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 5.fh,
                        ),
                        Text(
                          'Select items for a single event\nor multiple events',
                          style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.042),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left: 20.fw, right: 20.fh),
                child: Row(
                  children: [
                     SizedBox(
                      width: 5.fw,
                    ),
                     Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 60.fw),
                          child: Text(
                            'Customize Menu',
                            style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width * 0.05,
                                color: Color(0xFF6318AF),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 5.fh,
                        ),
                        Text(
                          'Select items for a single event\n or multiple events',
                          style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.042),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 12.fw,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      child: Image.asset('assests/f.png'),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Row(
                  children: [
                    SizedBox(
                      width: 5.fw,
                    ),
                    Container(
                      height: 100.fh,
                      width: 100.fw,
                      child: Image.asset('assests/e.png'),
                    ),
                    SizedBox(
                      width: 12.fw,
                    ),
                     Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 60),
                          child: Text(
                            'Customize Menu',
                            style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width * 0.05,
                                color: Color(0xFF6318AF),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 5.fh,
                        ),
                        Text(
                          'Select items for a single event\n or multiple events',
                          style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.042),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Row(
                  children: [
                    SizedBox(
                      width: 5.fw,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 60),
                          child: Text(
                            'Customize Menu',
                            style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width * 0.05,
                                color: Color(0xFF6318AF),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 5.fh,
                        ),
                        Text(
                          'Select items for a single event\n or multiple events',
                          style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.042),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 12.fw,
                    ),
                    Container(
                      height: 100.fh,
                      width: 100.fw,
                      child: Image.asset('assests/e.png'),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Row(
                  children: [
                    SizedBox(
                      width: 5.fw,
                    ),
                    Container(
                      height: 100.fh,
                      width: 100.fw,
                      child: Image.asset('assests/e.png'),
                    ),
                    SizedBox(
                      width: 12.fw,
                    ),
                     Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 60),
                          child: Text(
                            'Customize Menu',
                            style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width * 0.05,
                                color: Color(0xFF6318AF),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 5.fh,
                        ),
                        Text(
                          'Select items for a single event\n or multiple events',
                          style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.042),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Row(
                  children: [
                     SizedBox(
                      width: 5.fw,
                    ),
                     Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 60),
                          child: Text(
                            'Customize Menu',
                            style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width * 0.05,
                                color: Color(0xFF6318AF),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 5.fh,
                        ),
                        Text(
                          'Select items for a single event\n or multiple events',
                          style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.042),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 12.fw,
                    ),
                    Container(
                      height: 100.fh,
                      width: 100.fw,
                      child: Image.asset('assests/e.png'),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, top: 40, bottom: 40),
            child: Text(
              'Delicious food with\nprofessional service !',
              style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.068, fontWeight: FontWeight.normal),
            ),
          )
        ],
      ),
    );
  }
}
