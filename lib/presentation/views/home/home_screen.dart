import 'package:flutter/material.dart';
import 'package:kenkeputa/core/constants/widgets/_shared_widgets.dart';
import 'package:kenkeputa/presentation/views/home/service_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Column(
          children: [
            Row(
              children: [
                Text('Hi, Welcome'),
                Icon(
                  Icons.waving_hand,
                  color: Colors.yellow,
                ),
              ],
            ),
            Text('Helen Smith'),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_active_outlined),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Todo: Create search bar

          const VerticalSpace(),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.fromLTRB(16, 24, 16, 24),
              height: 126,
              width: double.infinity,
              decoration: const BoxDecoration(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    children: [
                      Text('Get 20% off your first vendor booking'),
                      VerticalSpace(),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Use code:',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                            ),
                            TextSpan(
                              text: 'VME20:',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.orange),
                            ),
                            TextSpan(
                              text: 'at checkout:',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.orange),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Image.asset('name'),
                ],
              ),
            ),
          ),
          const VerticalSpace(),
          const Text('Services we Offer'),
          const VerticalSpace(),
          const Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ServiceWidget(
                image: '',
                text: '',
              ),
              ServiceWidget(
                image: '',
                text: '',
              ),
            ],
          )
        ],
      ),
    );
  }
}
