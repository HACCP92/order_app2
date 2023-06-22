import 'package:flutter/material.dart';
import 'package:order_app2/hero_p.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);
//정호님, 연주님, 신비님, 용수님 감사합니다.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: '', //BottomNavigationBarItem 지정하는 속성으로 빈문자열 지정한다고함
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.map_outlined),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_add),
              label: '',
            ),
          ],
        ),
        body: SafeArea(
          child: Column(children: [
            Container(
              height: 200,
              decoration: const BoxDecoration(
                color: Colors.deepPurpleAccent,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                ),
              ),
// Rest of the widget's content
              child: const Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://img1.daumcdn.net/thumb/R1280x0/?fname=http://t1.daumcdn.net/brunch/service/user/dFGD/image/MH85tgXHFdoO6f8R3N_VcIjHStw.png',
                      ),
                    ),
                    title: Text(
                      '잔망루피',
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Icon(
                      Icons.add_call,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 30), //간격때문에 비어있는 컨테인터.. 다른방법도 있을까...
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Bring order to',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'NY,201-279 W 42nd St',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'When',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(height: 8),
                          Text(
                            '10-11 pm',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(5.0),
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(
                    horizontal: 30), //leading과 title사이 좁힌다고함
                leading: Icon(Icons.search),
                title: Text('Search'),
                trailing: Icon(Icons.cached),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Column(
                    children: [
                      Icon(
                        Icons.local_pizza_rounded,
                        size: 60,
                      ),
                      Text('Pizza'),
                    ],
                  ),
                ),
                Container(
                  width: 88,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.deepPurpleAccent,
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.emoji_food_beverage,
                        size: 60,
                      ),
                      Text('Asian'),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Column(
                    children: [
                      Icon(
                        Icons.build_rounded,
                        size: 60,
                      ),
                      Text('Burger'),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Column(
                    children: [
                      Icon(
                        Icons.handyman,
                        size: 60,
                      ),
                      Text('Desserts'),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => (const HeroP())),
                              );
                            },
                            child: Hero(
                              tag: 'area',
                              child: Container(
                                decoration: const BoxDecoration(),
                                width: 100,
                                height: 100,
                                child: Image.network(
                                  'https://i.namu.wiki/i/UTOq11GtqLrCArGirbl1kz4Rzl0s2v0pKMGdntgzUTzyT9e6mZoY00U06znwF3VSAeZcn4_X_MZlZ6N_j4bOSg.webp',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Expanded(
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(4.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "웃는 잔망루피",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star_border,
                                          color: Colors.yellow,
                                        ),
                                        Text('4.9'),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(4.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(Icons.map_outlined),
                                    Text('대한민국'),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(4.0),
                                child: Row(
                                  children: [
                                    Text('서울특별시 문래역'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            decoration: const BoxDecoration(),
                            width: 100,
                            height: 100,
                            child: Image.network(
                              'https://mblogthumb-phinf.pstatic.net/MjAyMTExMjhfMTU4/MDAxNjM4MTAxNzA3NzYy.5L21FPc-hRLTTJhy0CluMiskj6G6cyYIeOe6rQ_s1gAg.guzyCjUegTi4fJFaVRdIkIxr6hBDF4bHa1JAwGJh68Mg.JPEG.davle9073/7.jpg?type=w800',
                              fit: BoxFit.cover,
                            ),
                          ),
                          const Expanded(
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "지친 잔망루피",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star_border,
                                            color: Colors.yellow,
                                          ),
                                          Text('3.9'),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(Icons.map_outlined),
                                      Text('대한민국'),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Text('서욱특별시 문래역'),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
