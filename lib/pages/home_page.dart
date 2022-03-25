import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children:[
            Expanded(
                child: Center(
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("welcome",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),).tr(),
                      SizedBox(height: 10,),
                      Text("flutter",style: TextStyle(fontSize: 20),).tr(),
                    ],
                  ),

                )),
            Row(
              children: [
                Expanded(
                  child: FlatButton(
                    onPressed: (){
                      context.locale=(Locale('en','US'));

                    },
                    height: 45,
                    color: Colors.green,
                    child: Text("English",style: TextStyle(color: Colors.white),),
                  ),

                ),
                SizedBox(width: 5,),
                Expanded(
                  child: FlatButton(
                    onPressed: (){
                      context.locale = Locale('ru', 'RU');
                    },
                    height: 45,
                    color: Colors.red,
                    child: Text("Russian",style: TextStyle(color: Colors.white),),
                  ),

                ),
                SizedBox(width: 5,),
                Expanded(
                  child: FlatButton(
                    onPressed: (){
                      context.locale=(Locale('uz','UZ'));
                    },
                    height: 45,
                    color: Colors.blue,
                    child: Text("Uzbek",style: TextStyle(color: Colors.white),),
                  ),

                ),

              ],
            ),
            SizedBox(height: 2.5,),
            Row(
              children: [
                Expanded(
                  child: FlatButton(
                    onPressed: (){
                      context.locale=(Locale('fr','FR'));
                    },
                    height: 45,
                    color: Colors.orange,
                    child: Text("French",style: TextStyle(color: Colors.white),),
                  ),

                ),
                SizedBox(width: 5,),
                Expanded(
                  child: FlatButton(
                    onPressed: (){
                      context.locale=(Locale('ko','KO'));
                    },
                    height: 45,
                    color: Colors.purple,
                    child: Text("Korean",style: TextStyle(color: Colors.white),),
                  ),

                ),
                SizedBox(width: 5,),
                Expanded(
                  child: FlatButton(
                    onPressed: (){
                      context.locale=(Locale('ja','JA'));
                    },
                    height: 45,
                    color: Colors.pink,
                    child: Text("Japan",style: TextStyle(color: Colors.white),),
                  ),

                ),
              ],
            ),
          ],
        ),
      ),

    );
  }
}