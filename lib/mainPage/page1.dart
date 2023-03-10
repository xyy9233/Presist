import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class Page1 extends StatefulWidget {

  const Page1({Key? key,}) : super(key: key);
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/page1.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(children: [
            Positioned(
              left: 12.0.w,
              top: 25.0.h,
              child: Container(
                width: 393.w,
                height: 88.h,
                child: buildHiname(),
              ),
            ),
            Positioned(
              left: 13.0.w,
              top: 104.0.h,
              child: Container(
                width: 393.w,
                height: 31.h,
                child: buildguli(),
              ),
            ),
            Positioned(
              left: 329.0.w,
              top: 56.0.h,
              child: Container(
                width: 40.w,
                height: 40.h,
                child: buildavatar(),
              ),
            ),
            Positioned(
              left: 320.0.w,
              top: 47.0.h,
              child: Container(
                width: 57.w,
                height: 56.h,
                child: getImage("assets/avatarkuang.png"),
              ),
            ),
            Positioned(
              left: 180.0.w,
              top: 158.0.h,
              child: Container(
                width: 210.w,
                height: 30.h,
                child: buildDatenow(),
              ),
            ),
            Positioned(
              left: 300.0.w,
              top: 160.0.h,
              child: Container(
                width: 86.w,
                height: 30.h,
                child: Text("2023",
                    style: TextStyle(
                      fontSize: 22,
                      color: Color.fromRGBO(134, 159, 249, 1),
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ),
            Positioned(
              left: 15.0.w,
              top: 134.0.h,
              child: Container(
                width: 378.w,
                height: 167.h,
                child: buildDatekuang(),
              ),
            ),
            Positioned(
              left: 27.0.w,
              top: 193.0.h,
              child: Container(
                width: 324.w,
                height: 96.h,
                child: buildDate(),
              ),
            ),
            Positioned(
              left: 12.0.w,
              top: 303.0.h,
              child: Container(
                width: 303.w,
                height: 65.h,
                child: buildtask(),
              ),
            ),
            Positioned(
              left: 332.0.w,
              top: 320.0.h,
              child: Container(
                width: 45.w,
                height: 45.h,
                child: buildAdd(),
              ),
            ),
            Positioned(
              left: 16.0.w,
              top: 369.0.h,
              child: Container(
                width: 361.w,
                height: 632.h,
                child: buildDailyPlan(),
              ),
            ),
          ]),
        ));
  }

  Widget buildHiname() {
    return Container(
      child: Text(
        'Hi,XX',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 64.0,
          color: Color.fromRGBO(73, 108, 251, 1),
        ),
      ),
    );
  }

  Widget buildguli() {
    return Container(
      child: Text(
        'Where there is a will, there is a way.???',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16.0,
          color: Color.fromRGBO(118, 118, 118, 1),
        ),
      ),
    );
  }

  Widget buildavatar() {
    return Flex(direction: Axis.vertical, children: [
      Flexible(
        fit: FlexFit.tight,
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: NetworkImage(
                  'https://img.duotegame.com/article/contents/2022/10/17/2022101795825615.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    ]);
  }

  Widget buildDatenow() {
    return Container(
      child: Text(
        DateFormat.MMMM().format(DateTime.now()),
        style: TextStyle(
          fontSize: 24,
          color: Color.fromRGBO(134, 159, 249, 1),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget buildDatekuang() {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/Datekuang.png"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget buildDate() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          // ????????????
          Expanded(
            child: Row(
              children: List.generate(6, (index) {
                var date = DateTime.now().add(Duration(days: index - 1));
                var today = DateTime.now();
                return Container(
                    width: 54.w,
                    height: 96.h,
                    decoration: BoxDecoration(
                        border:
                        Border.all(color: Colors.transparent, width: 1)),
                    child: TextButton(
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 10.h),
                          Text(
                            DateFormat.E().format(date),
                            style: TextStyle(
                              color: (date.day == today.day &&
                                  date.month == today.month &&
                                  date.year == today.year)
                                  ? Color.fromRGBO(73, 108, 251, 1)
                                  : Color.fromRGBO(225, 225, 225, 1),
                              fontSize: 14.0,
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Text(DateFormat.d().format(date),
                              style: TextStyle(
                                color: (date.day == today.day &&
                                    date.month == today.month &&
                                    date.year == today.year)
                                    ? Color.fromRGBO(73, 108, 251, 1)
                                    : Color.fromRGBO(225, 225, 225, 1),
                                fontSize: 26.0,
                              ))
                        ],
                      ),
                      onPressed: () {
                        print(
                            'Pressed button for date: ${DateFormat.yMMMd()
                                .format(date)}');
                      },
                    ));
              }),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildtask() {
    return Container(
      child: Text(
        'Task Today',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 48.0,
          color: Color.fromRGBO(73, 108, 251, 1),
        ),
      ),
    );
  }


  Widget buildDailyPlan() {
    return Container(
      width: 393.w,
      height: 700.h,
      child: FutureBuilder<List<dynamic>>(
        //future: getData(),
        builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data?.length,
              itemBuilder: (BuildContext context, dynamic index) {
                return Container(
                  margin: EdgeInsets.only(bottom: 0),
                  height: 180.h,
                  child: Row(
                    children: <Widget>[
                      index % 2 == 0
                          ? Expanded(
                          child: Text(
                            snapshot.data![index]["habitName"],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22.0,
                            ),
                          ))
                          : SizedBox(),
                      CircleAvatar(
                        radius: 100.r,
                        backgroundColor: Colors.transparent,
                        child: Container(
                          padding: EdgeInsets.all(0),
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/jutierenwu.png"),
                              ),
                              border: Border.all(
                                color: Color.fromRGBO(73, 108, 251, 1),
                                width: 5.0.w,
                              ),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ),
                      index % 2 == 1
                          ? Expanded(
                          child: Text(
                            snapshot.data![index]["habitName"],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22.0,
                            ),
                          ))
                          : SizedBox(),
                    ],
                  ),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }
          return CircularProgressIndicator();
        },
      ),
    );
  }


  bool isVisible = false;

  Widget buildAdd() {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return SingleChildScrollView(
                child: AddPage());
          },
        );
      },
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/addquan.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }



  Widget AddPage() {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/page2.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
            children: [
              Positioned(
                left: 16.0.w,
                top: 416.0.h,
                child: Container(
                  width: 168.w,
                  height: 48.h,
                  child: Text("hhi"),
                ),
              )
            ]
        )
    );
  }

//????????????
/*class _GestureTestState extends State<GestureTest> {
  String _operation = "No Gesture detected!"; //???????????????
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        child: Container(
          alignment: Alignment.center,
          color: Colors.blue,
          width: 200.0,
          height: 100.0,
          child: Text(
            _operation,
            style: TextStyle(color: Colors.white),
          ),
        ),
        onTap: () => updateText("Tap"), //??????
        onDoubleTap: () => updateText("DoubleTap"), //??????
        onLongPress: () => updateText("LongPress"), //??????
      ),
    );
  }
  void updateText(String text) {
    //????????????????????????
    setState(() {
      _operation = text;
    });
  }
}*/
  Widget getImage(String imageUrl) {
    return Image.asset(imageUrl);
  }
}