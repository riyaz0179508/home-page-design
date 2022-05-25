import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_page_design/app%20theme/all_text_style.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Dashboard", style: ALlTextStyle().dashboard),
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.black54,
            )),
        actions: [
          Padding(
            padding: EdgeInsets.all(8.sp),
            child: Icon(Icons.shopping_cart_rounded, color: Colors.grey),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.sp, right: 15.sp),
            child: Icon(Icons.call, color: Colors.lightBlue),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 40.w, right: 40.w, top: 30.h, bottom: 25.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.h,
            ),
            Text(
              " Hi Riyaz Ahmed",
              style: ALlTextStyle().name,
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              " Do you need to buy or refil cooking gas? We are\n just a few tabs awat!",
              style: ALlTextStyle().details,
            ),
            SizedBox(
              height: 40.h,
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                    height: 150.h,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage("assets/images/f.png"),
                            fit: BoxFit.fill)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(),
                        Spacer(),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            height: 40.h,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.lightBlue,
                                borderRadius: BorderRadius.circular(60)),
                            child: Center(
                                child: Text("Order Food",
                                    style: TextStyle(color: Colors.white))),
                          ),
                        ),
                      ],
                    )),
              ),
            ),
            SizedBox(height: 40.h),
            ElevatedButton(onPressed: () {}, child: Text("Tesing")),
            SizedBox(height: 40.h),
            Container(
                height: 150.h,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Color(0xffE8F5E9),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/gas.png",
                      height: 150.h,
                      width: 100.w,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Buy Cooking Gas and other\n cooking Accessories"),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Container(
                            height: 40.h,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.lightBlue,
                                borderRadius: BorderRadius.circular(60)),
                            child: Center(
                                child: Text("Buy Gas",
                                    style: TextStyle(color: Colors.white))),
                          ),
                        ),
                      ],
                    ),
                  ],
                )),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){},
        child: Icon(Icons.message),
      ),
    );
  }
}
