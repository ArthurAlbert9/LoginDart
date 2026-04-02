import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Arthur feiao',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: const Color.fromARGB(255, 255, 0, 0)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Login'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: body(
        
      ),
    );
  }
  final formkey = GlobalKey<FormState>();
  body () {
    SizedBox(height: 20);
    const Center(
    );
       
    return Form(
      key: formkey,
      child: Container(
        height: 320,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(15),
        ),
        margin: EdgeInsets.only(left: 45, top: 250, bottom: 0, right: 45),
        padding: EdgeInsets.all(25),
        child: ListView(
          children:[
            TextFormField(
              validator: (String? texto) {
                if((texto == null) || (texto.isEmpty)){
                  return "Preencha este campo";
                }
                return null;
              },
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(15),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  
                ),
                labelText: "Email: ",
                labelStyle: TextStyle(fontSize: 25, color: Colors.grey),
                hintText: "Exemplo@gmail.com",
                hintStyle: TextStyle(fontSize: 15, color: Colors.grey),
              ),
            ),
            Padding(padding: EdgeInsets.all(15)),
            TextFormField(
              obscureText: true,
              validator: (String? texto) {
                if((texto == null) || (texto.isEmpty)){
                  return "Preencha este campo";
                }
                return null;
              },
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                labelText: "Sua senha: ",
                labelStyle: TextStyle(fontSize: 25, color: Colors.grey),
                hintText: "Password",
                hintStyle: TextStyle(fontSize: 15, color: Colors.grey),
              ),
            ),
            Padding(padding: EdgeInsets.all(15)),
            ElevatedButton(
              onPressed: (){
                if(formkey.currentState!.validate()){
                  debugPrint("Login realizado com sucesso");
                }
              },
              child: const Text("Fazer login"),
            )
          ],
        ),
      ),
    );
  }
}
