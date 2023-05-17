import 'package:all_in_one_app/provider/all_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

All? providerF;
All? providerT;

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  Widget build(BuildContext context) {
    providerF = Provider.of<All>(context, listen: false);
    providerT = Provider.of<All>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.menu,
                  color: Colors.white,
                  size: 30,
                ),
                SizedBox(
                  width: 90,
                ),
                Text(
                  "Enterterment",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                SizedBox(
                  width: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.access_time_filled,
                      color: Colors.blue,
                      size: 35,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(shape: BoxShape.circle),
                        child: Icon(
                          Icons.notification_add,
                          color: Colors.yellow,
                          size: 35,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                height: 50,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.white),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    label: Text("Seach", style: TextStyle(color: Colors.white)),
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                    suffixIcon: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Expanded(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2
                  ),
                scrollDirection: Axis.vertical,

                itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, 'link',arguments: index);
                        },
                          child: allin(index)),
                    );
                  },
                itemCount: providerF!.alllogo.length,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget allin(int index) {
    return Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Container(
            height: 140,
            width: 140,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                image: DecorationImage(
                    image: AssetImage("${providerF!.alllogo[index].img}"),fit: BoxFit.cover)),
          ),
          SizedBox(height: 15),
          Text("${providerF!.alllogo[index].name}",style: TextStyle(color: Colors.white,fontSize: 18),)
        ],
      ),
    );
  }
}
