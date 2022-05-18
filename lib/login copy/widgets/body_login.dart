import 'package:flutter/material.dart';

class BodyLogin extends StatefulWidget {
  const BodyLogin({Key? key}) : super(key: key);

  @override
  State<BodyLogin> createState() => _BodyLoginState();
}

final ButtonStyle style = ElevatedButton.styleFrom(
    textStyle: const TextStyle(
  fontSize: 14,
));

class _BodyLoginState extends State<BodyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 40 / 100,
      color: Colors.white,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(50, 2, 50, 0),
          child: TextField(
            obscureText: false,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  borderSide: BorderSide(color: Colors.black, width: 1.0)),
              labelText: 'Login',
              hintText: 'Seu login: CPF',
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(50, 2, 50, 0),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  borderSide: BorderSide(color: Colors.black, width: 1.0)),
              labelText: 'Senha',
              hintText: 'Sua senha',
            ),
          ),
        ),
        Container(
          child: TextButton(
            child: const Text('Esqueci minha senha'),
            onPressed: () => {},
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.indigo,
            ),
            onPressed: () => {},
            child: Container(
                width: MediaQuery.of(context).size.width * 25 / 100,
                height: 40,
                child: const Center(
                  child: Text(
                    'Acessar',
                    style: TextStyle(fontSize: 18),
                  ),
                )),
          ),
        ),
      ]),
    );
  }
}
