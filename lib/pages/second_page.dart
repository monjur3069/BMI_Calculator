import 'package:flutter/material.dart';

import '../constants.dart';


class SecondPage extends StatefulWidget {
  static const String routeName = '/second';
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  late String status;

  @override
  Widget build(BuildContext context) {
    debugPrint('build called');
    return Scaffold(
      backgroundColor: colorPrimary,
      appBar: AppBar(
        leading: IconButton(onPressed: ()=> Navigator.pop(context),icon: const Icon(Icons.arrow_back_ios,color: Colors.white,)),
        title: const Text('Second Page',style: TextStyle(fontSize: 22,color: Colors.white,fontWeight: FontWeight.w600),),
        backgroundColor: colorPrimary,
        elevation: 0,//shadow
      ),
      body: SingleChildScrollView(
        child: Column(
          children: bmiTypeMap.keys
              .map((key) =>
              ListTile(
                    textColor: Colors.white,
                    tileColor: key == status ? Colors.white24 : null,
                    title: Text(key),
                    trailing: Text(bmiTypeMap[key]!),
                  ))
              .toList(),
        ),
      ),
    );
  }

  @override
  void initState() {
    debugPrint('initState called');
    super.initState();
  }

  @override
  void didChangeDependencies() {
    status = ModalRoute.of(context)!.settings.arguments as String;
    debugPrint('didChangeDependencies called');
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    debugPrint('dispose called');
    super.dispose();
  }
}
