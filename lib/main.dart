import 'package:ant_design_flutter/ant_design_flutter.dart';
import 'package:get/get.dart';

import 'email_page.dart';

void main() {
  runApp(const GetMaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return AntApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('You have clicked the button $count times'),
              const SizedBox(height: 8),
              Button(
                type: ButtonType.primary,
                onClick: () {
                  setState(() => count++);
                },
                child: const Text('Click'),
              ),
              const SizedBox(height: 8),
              Button(
                type: ButtonType.primary,
                onClick: () {
                  Get.to(EmailPage());
                },
                child: const Text('Next Page'),
              ),
              const SizedBox(height: 8),
              Button(
                type: ButtonType.primary,
                onClick: () {
                  Modal(
                    context,
                    content: Container(color: Colors.red_1),
                    title: const Text("Title modal"),
                  );
                },
                child: const Text('Modal'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
