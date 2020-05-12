import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final items = List<String>.generate(10000, (i) => 'Item $i');
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First Flutter Application'),
          backgroundColor: Colors.indigo[500],
        ),
        //Row Column Container
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: FlutterLogo(size: 30,),
              trailing: Icon(Icons.book),
              title: Text('${items[index]}'),
              subtitle: Text('item açıklaması'),
              onTap: () {
                Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) =>SecondPage(),));
              },
            );
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SecondPage'),),
      body: Center(
        child: RaisedButton(onPressed: () {
          Navigator.pop(context);
        },
          child: Text('Sayfaya Dön'),
        ),
      ),
    );
  }
}
