// Suggested code may be subject to a license. Learn more: ~LicenseLog:3070684900.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:4103370476.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:1306377244.
import 'package:flutter/material.dart';
import 'package:myapp/bc_api.dart';
import 'package:myapp/credentials.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: size.width * 0.7,
              height: size.height * 0.7,
              decoration: BoxDecoration(
                color: Colors.greenAccent.withOpacity(0.3),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            SizedBox(
              width: size.width * 0.7,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const SizedBox(width: 10),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.stop),
                  ),
                  const SizedBox(width: 10),
                  IconButton(
                    onPressed: () async {
                      print('pulsado');
                      await fetchData(user, pass, url, service['Entradas']!);
                    },
                    icon: const Icon(Icons.play_arrow),
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
