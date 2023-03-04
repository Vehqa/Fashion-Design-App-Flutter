import 'package:flutter/material.dart';
import 'package:flutter_application_1/detailPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          indicatorColor: Colors.transparent,
          controller: tabController,
          tabs: [
            Tab(
                icon: Icon(
              Icons.home,
              color: Colors.deepPurpleAccent,
              size: 30,
            )),
            Tab(
                icon: Icon(
              Icons.notifications,
              color: Colors.deepPurpleAccent,
              size: 30,
            )),
            Tab(
                icon: Icon(
              Icons.message,
              color: Colors.deepPurpleAccent,
              size: 30,
            )),
            Tab(
                icon: Icon(
              Icons.account_circle_rounded,
              color: Colors.deepPurpleAccent,
              size: 30,
            )),
          ],
        ),
      ),
      appBar: AppBar(
        actions: [
          IconButton(
              padding: EdgeInsets.only(right: 30.0),
              onPressed: () {},
              icon: Icon(
                Icons.camera_alt,
                color: Colors.deepPurpleAccent,
                size: 36,
              )),
          IconButton(
              padding: EdgeInsets.only(right: 20.0),
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.deepPurpleAccent,
                size: 36,
              ))
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Fashion Design',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.deepPurpleAccent,
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 7.0),
            height: 140,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(
                  width: 10,
                ),
                listElement('assets/images/model-1.jpg',
                    'assets/images/chanellogo.jpg'),
                SizedBox(
                  width: 15,
                ),
                listElement('assets/images/model-2.jpg',
                    'assets/images/chanellogo.jpg'),
                SizedBox(
                  width: 15,
                ),
                listElement('assets/images/model-3.jpg',
                    'assets/images/chanellogo.jpg'),
                SizedBox(
                  width: 15,
                ),
                listElement('assets/images/model-4.jpg',
                    'assets/images/chanellogo.jpg'),
                SizedBox(
                  width: 15,
                ),
                listElement('assets/images/model-1.jpg',
                    'assets/images/chanellogo.jpg'),
                SizedBox(
                  width: 15,
                ),
                listElement('assets/images/model-2.jpg',
                    'assets/images/chanellogo.jpg'),
                SizedBox(
                  width: 15,
                ),
                listElement('assets/images/model-3.jpg',
                    'assets/images/chanellogo.jpg'),
                SizedBox(
                  width: 15,
                ),
                listElement('assets/images/model-4.jpg',
                    'assets/images/chanellogo.jpg'),
                SizedBox(
                  width: 15,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(30),
              child: Container(
                width: double.infinity,
                height: 500,
                padding: EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 75,
                          height: 75,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            image: DecorationImage(
                                image: AssetImage('assets/images/model-1.jpg'),
                                fit: BoxFit.cover),
                          ),
                        ),
                        SizedBox(width: 15),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Daisy',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Il y a quelques secondes',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.purple),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 95,
                        ),
                        Icon(Icons.more_vert,
                            color: Colors.purple.withOpacity(0.7), size: 24)
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Mes 3 tenues de la semaine :\n'
                      'Retrouver mes trois tenues préférés de cette semaine'
                      ' ainsi que mes pieces favorites sur chacune d\'entre elle.',
                      style: TextStyle(
                          fontSize: 14, color: Colors.purple.withOpacity(0.8)),
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Expanded(
                            flex: 3,
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => DetailPage(
                                        img: 'assets/images/big-1.jpg')));
                              },
                              child: Hero(
                                tag: 'assets/images/big-1.jpg',
                                child: Container(
                                    height: 200,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                              'assets/images/big-1.jpg')),
                                    )),
                              ),
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                            flex: 2,
                            child: Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(MaterialPageRoute(
                                        builder: (context) => DetailPage(
                                            img: 'assets/images/big-2.jpg')));
                                  },
                                  child: Hero(
                                    tag: 'assets/images/big-2.jpg',
                                    child: Container(
                                        height: 96,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                  'assets/images/big-2.jpg')),
                                        )),
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(MaterialPageRoute(
                                        builder: (context) => DetailPage(
                                            img: 'assets/images/big-3.jpg')));
                                  },
                                  child: Hero(
                                    tag: 'assets/images/big-3.jpg',
                                    child: Container(
                                        height: 96,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                  'assets/images/big-3.jpg')),
                                        )),
                                  ),
                                ),
                              ],
                            )),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Container(
                          height: 25,
                          width: 95,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Colors.purple.withOpacity(0.3),
                          ),
                          child: Center(
                              child: Text(
                            '#App made',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          )),
                        ),
                        SizedBox(width: 12),
                        Container(
                          height: 25,
                          width: 125,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Colors.purple.withOpacity(0.3),
                          ),
                          child: Center(
                              child: Text(
                            '#By Vehqa',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          )),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Divider(),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Icon(
                          Icons.replay,
                          color: Colors.purple.withOpacity(0.3),
                          size: 26,
                        ),
                        SizedBox(width: 5),
                        Text(
                          '1,8 k',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(width: 25),
                        Icon(
                          Icons.comment,
                          color: Colors.purple.withOpacity(0.3),
                          size: 25,
                        ),
                        SizedBox(width: 5),
                        Text(
                          '79',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(width: 25),
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 26,
                        ),
                        SizedBox(width: 5),
                        Text(
                          '12,9 k',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  listElement(String imagePath, String logoPath) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(45),
                image: DecorationImage(
                    image: AssetImage(imagePath), fit: BoxFit.cover),
              ),
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  image: DecorationImage(
                      image: AssetImage(logoPath), fit: BoxFit.cover),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 12,
        ),
        Container(
          height: 22,
          width: 80,
          decoration: BoxDecoration(
              color: Colors.deepPurpleAccent,
              borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Text(
              'Follow',
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
        ),
      ],
    );
  }
}

// BY VEHQA, (ARTHUR NECTOUX)