import 'package:flutter/material.dart';
import 'package:flutter_consumindo_gx/sync_ascync.dart';

import 'widgets/body_login.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.indigo,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 50 / 100,
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(110)),
                    color: Colors.indigo,
                  ),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [],
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 10 / 100,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(120))),
              ),
              const BodyLogin()
            ],
          ),
        ));
  }
}

class BuildingJSONReturn extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BuildingJSONReturn();
  }
}

class _BuildingJSONReturn extends State<BuildingJSONReturn> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: FutureBuilder(
        future: fetch(),
        builder: (context, snapshot) {
          if (snapshot.data == null) {
            return const Center(
              child: Text('loading'),
            );
          }else{
            return ListView.builder( itemBuilder: (context, int index) { return ListTile(
              title: Text('https://www.youtube.com/watch?v=hgPTvi0OM4A'),
            ) },itemCount: snapshot.data.length,
            );
          }
        },
      ),
    );
  }
}
