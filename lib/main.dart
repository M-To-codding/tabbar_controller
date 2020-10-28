import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {


  static const String _title = 'Flutter Code Sample';


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatelessWidget(),
    );
  }
}

final List<Tab> tabs = <Tab>[
  Tab(
    text: 'Zeroth',
  ),
  Tab(text: 'First'),
  Tab(text: 'Second'),
  Tab(text: 'Second1'),
];

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      // The Builder widget is used to have a different BuildContext to access
      // closest DefaultTabController.
      child: Builder(builder: (BuildContext context) {
        final TabController tabController = DefaultTabController.of(context);
        tabController.addListener(() {
          if (!tabController.indexIsChanging) {
            // Your code goes here.
            // To get index of current tab use tabController.index
          }
        });

        return MaterialApp(
          theme: ThemeData(
            backgroundColor: Colors.green,
            // cardColor: Colors.white,
            // buttonColor: Colors.white,
            // bottomAppBarColor: Colors.black,
            // brightness: Brightness.dark,
            //primaryColor: Colors.pink[200],
            //Changing this will change the color of the TabBar - ПІДПИСАНО
            //accentColor: Colors.red[600],
          ),
          home: DefaultTabController(
            length: 3,
            child: Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                title: Text(
                  'Dashboard',
                  textAlign: TextAlign.center,
                ),
                centerTitle: true,
                backgroundColor: Colors.red,
              ),
              body:
          //     ListView(
          //       children: events
          //           .map((e))=>Text(
          //         e,
          //       style:TextStyle(fontSize:100),
          //     ))
          //     .toList(),
          //
          // )
          // )
          //     )


              Container(

                  child: Column(


                children: [
                  TabBar(
                    indicatorColor: Colors.green,
                    labelPadding: EdgeInsets.all(0),
                    tabs: [
                      Tab(
                        child: Container(
                          color: Colors.blue,
                          child: Align(
                            alignment: Alignment.center,
                            child: Icon(
                              Icons.directions_car,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        // title: Text('Dashboard'),
                      ),
                      Tab(
                          icon: Icon(
                        Icons.directions_transit,
                        color: Colors.red,
                      )),
                      Tab(icon: Icon(Icons.directions_bike)
                          //   titile: const Text(
                          //   'Dashboard',
                          //   textAlign: TextAlign.center,
                          // ),
                          ),
                    ],
                  ),
                  // ListView(),

                  SizedBox(//alt+enter

                    height: MediaQuery.of(context).size.height * 0.75,
                    child: ListView(
                      padding: const EdgeInsets.all(8),
                      children: <Widget>[
                        Container(
                          height: 50,
                          color: Colors.amber[600],
                          child: const Center(child: Text('Entry A')),
                        ),
                        Container(
                          height: 50,
                          color: Colors.amber[500],
                          child: const Center(child: Text('Entry B')),
                        ),
                        Container(
                          height: 70,
                          color: Colors.amber[100],
                          child: const Center(child: Text('Entry C')),
                        ),
                      ],
                    ),
                  )

                ],
              )),

              //     final List<String> entries = <String>['A', 'B', 'C'];
              // final List<int> colorCodes = <int>[600, 500, 100];

              //   ListView.builder(
              //   padding: const EdgeInsets.all(8),
              //     // itemCount: entries.length,
              //     itemBuilder: (BuildContext context, int index) {
              //       return Container(
              //         height: 50,
              //         color: Colors.amber[colorCodes[index]],
              //         child: Center(child: Text('Entry ${entries[index]}')),
              //       );
              //     }
              // );

              // body: TabBarView(
              //   children: [
              //     Icon(
              //       Icons.directions_car,
              //       color: Colors.blueAccent,
              //     ),
              //     Icon(Icons.directions_transit),
              //     Icon(Icons.directions_bike),
              //   ],
              // ),

              bottomNavigationBar: BottomNavigationBar(
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home,
                      color: Colors.black,
                    ),
                    title: const Text(
                      'Dashboard',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.graphic_eq,
                      color: Colors.black,
                    ),
                    title: const Text(
                      'Reports',
                      textAlign: TextAlign.center,
                    ),
                    // title:"widget",
                    // title:Text('BottomNavigationBar Sample'),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.accessibility,
                      color: Colors.black,
                    ),
                    title: const Text('Profile'),
                  ),
                  BottomNavigationBarItem(
                    //backgroundColor: Colors.green,
                    icon: Icon(
                      Icons.seven_k,
                      color: Colors.black,
                    ),
                    title: const Text('Settings'),
                  ),
                ],
                selectedItemColor: Colors.red,
                unselectedItemColor: Colors.black,
              ),
            ),
          ),
        );

        return Scaffold(
          appBar: AppBar(
            title: const Text('Dashboard'),
            centerTitle: true,
            backgroundColor: Colors.red,
            bottom: TabBar(
              tabs: tabs,
              labelColor: Colors.grey,
            ),
          ),
          body: TabBarView(
            children: tabs.map((Tab tab) {
              return Center(
                child: Text(
                  tab.text + ' Tab',
                  style: Theme.of(context).textTheme.headline5,
                ),
              );
            }).toList(),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.red,
                ),
                title: const Text('Dashboard'),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.graphic_eq,
                  color: Colors.grey,
                ),
                title: const Text('Reports'),
                // title:"widget",
                // title:Text('BottomNavigationBar Sample'),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.accessibility,
                  color: Colors.grey,
                ),
                title: const Text('Profile'),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.seven_k,
                  color: Colors.grey,
                ),
                title: const Text('Settings'),
              ),
            ],
          ),
        );
      }),
    );
  }
}
