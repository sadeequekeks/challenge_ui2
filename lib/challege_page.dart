import 'package:flutter/material.dart';

class ChallengePage extends StatelessWidget {
  const ChallengePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: 250.0,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFF2B2E37),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30, right: 30, top: 70.0),
              child: Column(
                children: [
                  Text(
                    'PROFILE',
                    style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 3.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  Container(
                    height: 200.0,
                    decoration: BoxDecoration(
                      color: Color(0xFF2F3543),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 2.5),
                          blurRadius: 8,
                          color: Colors.black.withOpacity(0.25),
                        ),
                      ],
                      borderRadius: BorderRadius.all(
                        Radius.circular(8.0),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(),
                              Icon(
                                Icons.create_outlined,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                        Center(
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 35.0,
                                backgroundImage: AssetImage('images/sadiq.jpg'),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                'Abubakar Zubair',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                              ),
                              SizedBox(
                                height: 8.0,
                              ),
                              Text(
                                '@armoredTitan',
                                style: TextStyle(color: Color(0xFF9DA5AE)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 70.0,
                  ),
                  IconContent(
                    icon: Icons.dashboard_outlined,
                    name: 'Dashboard',
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  IconContent(
                    icon: Icons.payment_outlined,
                    name: 'Payment History',
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  IconContent(
                    icon: Icons.stacked_bar_chart,
                    name: 'Statistics',
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  IconContent(
                    icon: Icons.emoji_events_outlined,
                    name: 'Reward',
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  IconContent(
                    icon: Icons.exit_to_app_outlined,
                    name: 'Logout',
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

class IconContent extends StatelessWidget {
  IconContent({this.icon, this.name});
  final IconData icon;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundColor: Color(0xFF283039),
              child: Icon(
                icon,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 30.0,
            ),
            Text(
              (name),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
