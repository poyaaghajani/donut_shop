import 'package:donut_shop/pages/birthday_page.dart';
import 'package:donut_shop/pages/cup_cake_page.dart';
import 'package:donut_shop/pages/donut_page.dart';
import 'package:donut_shop/pages/juice_page.dart';
import 'package:donut_shop/pages/pizza_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.grey[800],
              size: 35,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.person,
                color: Colors.grey[800],
                size: 35,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 30, bottom: 10),
            child: Row(
              children: [
                Text(
                  'I want to ',
                  style: TextStyle(fontSize: 22, color: Colors.grey[600]),
                ),
                const Text(
                  'EAT',
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          TabBar(
            controller: _tabController,
            tabs: [
              Tab(
                child: Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Image.asset('images/icon1.png'),
                ),
              ),
              Tab(
                child: Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Image.asset('images/icon2.png'),
                ),
              ),
              Tab(
                child: Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Image.asset('images/icon3.png'),
                ),
              ),
              Tab(
                child: Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Image.asset('images/icon4.png'),
                ),
              ),
              Tab(
                child: Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Image.asset('images/icon5.png'),
                ),
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                DonutPage(),
                PizzaPage(),
                CupCakePage(),
                JuicePage(),
                const BirthDayCakePage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
