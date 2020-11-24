import 'package:anzyproject/primary_button.dart';
import 'package:anzyproject/web_view.dart';
import 'package:flutter/material.dart';

class Home_page extends StatefulWidget {
  @override
  _Home_pageState createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "كليات الخليج",
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(right: 8, left: 8),
          child: ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Fixed_Sized_12(),
                  First_Row_general_tabs(context),
                  Fixed_Sized_12(),
                  Text_3noan("عام"),
                  Sized_8(),
                  Row_3amm(),
                  Fixed_Sized_12(),
                  Text_3noan("الدبلومات"),
                  Sized_8(),
                  Row_diploma(),
                  Fixed_Sized_12(),
                  Text_3noan("البكالريوس"),
                  Sized_8(),
                  First_row_bakalrious(),
                  Second_row_bakalrious(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _handleURLButtonPress(
      BuildContext context, String url_inc, String title_appbar) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => WebViewContainer(url_inc, title_appbar),
      ),
    );
  }

  Widget Fixed_Sized_12() {
    return SizedBox(
      height: 12,
    );
  }

  Widget Sized_8() {
    return SizedBox(
      height: 8,
    );
  }

  Widget First_Row_general_tabs(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 8,
        ),
        PrimaryButton(
          text: "البوابة الاكاديمية",
          onPressssed: () {
            _handleURLButtonPress(
                context,
                "https://gulf.edu.sa/ar/website/contact-us/",
                "البوابة الاكاديمية");
          },
        ),
        SizedBox(
          width: 12,
        ),
        PrimaryButton(
          text: " نظام معلومات الطالب ",
          onPressssed: () {
            _handleURLButtonPress(
                context, "https://lms.gulf.edu.sa/", "نظام معلومات الطالب");
          },
        ),
        SizedBox(
          width: 12,
        ),
        PrimaryButton(
          text: " الدعم الفني ",
          onPressssed: () {
            _handleURLButtonPress(context,
                "https://gulf.edu.sa/ar/support-system/", "الدعم الفني");
          },
        ),
        SizedBox(
          width: 12,
        ),
        PrimaryButton(
          text: " تواصل معنا ",
          onPressssed: () {
            _handleURLButtonPress(context,
                "https://gulf.edu.sa/ar/website/contact-us/", "تواصل معنا");
          },
        ),
        SizedBox(
          width: 12,
        ),
      ],
    );
  }

  Widget Text_3noan(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 20,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          width: 20,
        ),
      ],
    );
  }

  Widget Row_3amm() {
    return Row(
      children: [
        SizedBox(
          width: 8,
        ),
        PrimaryButton(
          text: " البحث العلمي ",
          onPressssed: () {
            _handleURLButtonPress(
                context,
                "https://gulf.edu.sa/ar/scientific-research-platform/",
                " البحث العلمي ");
          },
        ),
        SizedBox(
          width: 12,
        ),
        PrimaryButton(
          text: " القبول اوالتسجيل ",
          onPressssed: () {
            _handleURLButtonPress(context, "https://gulf.edu.sa/ar/admissions/",
                " القبول اوالتسجيل ");
          },
        ),
        SizedBox(
          width: 12,
        ),
        PrimaryButton(
          text: " عن الكليات ",
          onPressssed: () {
            _handleURLButtonPress(
                context, "https://gulf.edu.sa/ar/about/", " عن الكليات ");
          },
        ),
        SizedBox(
          width: 8,
        ),
      ],
    );
  }

  Widget Row_diploma() {
    return Row(
      children: [
        SizedBox(
          width: 8,
        ),
        PrimaryButton(
          text: " الدبلومات العاليا ",
          onPressssed: () {
            _handleURLButtonPress(
                context,
                "https://gulf.edu.sa/ar/diploma-programs/high-diploma/",
                "الدبلومات العاليا");
          },
        ),
        SizedBox(
          width: 12,
        ),
        PrimaryButton(
          text: " الدبلومات المتوسطة ",
          onPressssed: () {
            _handleURLButtonPress(
                context,
                "https://gulf.edu.sa/ar/diploma-programs/academic-diploma/",
                " الدبلومات المتوسطة ");
          },
        ),
        SizedBox(
          width: 8,
        ),
      ],
    );
  }

  Widget Card_to_click(String imagePath, String text, Function onTap) {
    return Expanded(
      flex: 1,
      child: Card(
        elevation: 5,
        child: InkWell(
          onTap: onTap,
          child: Column(
            children: [
              Image.asset(imagePath),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget First_row_bakalrious() {
    return Row(
      children: [
        Card_to_click(
          'assets/images/cs.jpg',
          "علوم الحاسب والمعلومات",
          () {
            _handleURLButtonPress(
                context,
                "https://gulf.edu.sa/ar/academic-departments/computer-science-information/",
                "علوم الحاسب والمعلومات");
          },
        ),
        Card_to_click(
          'assets/images/law.jpg',
          "القانون",
          () {
            _handleURLButtonPress(context,
                "https://gulf.edu.sa/ar/academic-departments/law/", "القانون");
          },
        ),
      ],
    );
  }

  Widget Second_row_bakalrious() {
    return Row(
      children: [
        Card_to_click(
          'assets/images/managment.jpg',
          "ادارة الاعمال",
          () {
            _handleURLButtonPress(
              context,
              "https://gulf.edu.sa/ar/academic-departments/business-administration/",
              "ادارة الاعمال",
            );
          },
        ),
        Card_to_click(
          'assets/images/english.jpg',
          "اللغة الانجليزية",
          () {
            _handleURLButtonPress(
                context,
                "https://gulf.edu.sa/ar/academic-departments/english/",
                "اللغة الانجليزية");
          },
        ),
      ],
    );
  }
}
