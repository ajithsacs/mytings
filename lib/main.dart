import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    title: "Mythings",
    home: Mythings(),
    theme: ThemeData(primaryColor: Colors.white),
    debugShowCheckedModeBanner: false,
  ));
}

class Mythings extends StatefulWidget {
  const Mythings({Key? key}) : super(key: key);

  @override
  State<Mythings> createState() => _MythingsState();
}

class _MythingsState extends State<Mythings> {
  @override
  Widget build(BuildContext context) {
    return SearchPage();
  }
}

// Search Page
class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          // The search area here
          title: Container(
            height: 40,
            // width: MediaQuery.of(context).size.width * 0.7,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 223, 219, 219),
                borderRadius: BorderRadius.circular(5)),
            // child: Stack(
            //   children: [
            //     // Center(
            //     //   widthFactor: MediaQuery.of(context).size.width * 0.9,
            //     //   child: TextField(
            //     //     decoration: InputDecoration(
            //     //         prefixIcon: Icon(Icons.search),
            //     //         // suffixIcon: IconButton(
            //     //         //   icon: const Icon(Icons.clear),
            //     //         //   onPressed: () {
            //     //         //     /* Clear the search field */
            //     //         //   },
            //     //         // ),
            //     //         hintText: 'Search...',
            //     //         border: InputBorder.none),
            //     //   ),
            //     // ),

            //   ],
            // )
            child: Stack(
              children: [
                TextField(
                    autofocus: true,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                        focusColor: Colors.grey[200],
                        fillColor: Color.fromARGB(255, 242, 235, 235),
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Search...',
                        border: InputBorder.none)),
              ],
            ),
          ),
          actions: [
            TextButton(
                onPressed: () {},
                child: Text(
                  "Cancel",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ))
          ],
        ),
        body: DefaultTabController(
          length: 4,
          child: Column(
            children: [
              TabBar(
                tabs: [
                  Tab(
                    child: Container(
                      child: Text("All"),
                    ),
                  ),
                  Tab(
                    child: Container(child: Text("items")),
                  ),
                  Tab(
                    child: Container(child: Text("Doc")),
                  ),
                  Tab(
                    child: Container(child: Text("Task")),
                  )
                ],
              ),
              Expanded(
                  child: TabBarView(
                children: [
                  Center(
                    child: Text("1"),
                  ),
                  Center(
                    child: Text("2"),
                  ),
                  Center(
                    child: Text("3"),
                  ),
                  Center(
                    child: Text("4"),
                  ),
                ],
              )),
            ],
          ),
        ));
  }
}
