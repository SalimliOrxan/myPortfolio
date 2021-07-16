import 'package:flutter/material.dart';
import 'package:my_portfolio/responsive.dart';
import 'package:websafe_svg/websafe_svg.dart';

import 'card_socal.dart';
import 'components/section_title.dart';
import 'constants.dart';

class SectionContact extends StatelessWidget {

  const SectionContact();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(height: kDefaultPadding * 2.5),
          SectionTitle(
            title: "Contact Me",
            subTitle: "For Project inquiry and information",
            color: Color(0xFF07E24A),
          ),
          ContactBox()
        ],
      ),
    );
  }
}

class ContactBox extends StatelessWidget {
  const ContactBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: Container(
          width: double.infinity,
          padding: EdgeInsets.all(kDefaultPadding),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              )
          ),
          child: Column(
              children: [
                Wrap(
                    direction: Axis.horizontal,
                    spacing: 10,
                    runSpacing: 10,
                    children: [
                      SocalCard(
                        color: Color(0xFFD9FFFC),
                        icon: WebsafeSvg.asset("assets/images/ic_linkedin.svg", width: 30, height: 30),
                        name: 'aaa',
                        press: () {},
                      ),
                      SocalCard(
                        color: Color(0xFFE4FFC7),
                        icon: WebsafeSvg.asset("assets/images/ic_gmail.svg", width: 30, height: 30),
                        name: 'bbb',
                        press: () {},
                      ),
                      SocalCard(
                        color: Color(0xFFE8F0F9),
                        icon: WebsafeSvg.asset("assets/images/ic_github.svg", width: 30, height: 30),
                        name: 'ccc',
                        press: () {},
                      )
                    ]
                ),
                SizedBox(height: kDefaultPadding * 2),
                ContactForm(),
              ]
          )
      ),
      tablet: Container(
          constraints: BoxConstraints(maxWidth: 1099),
          margin: EdgeInsets.only(top: kDefaultPadding * 2),
          padding: EdgeInsets.all(kDefaultPadding * 3),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              )
          ),
          child: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SocalCard(
                        color: Color(0xFFD9FFFC),
                        icon: WebsafeSvg.asset("assets/images/ic_linkedin.svg", width: 30, height: 30),
                        name: 'aaa',
                        press: () {},
                      ),
                      SocalCard(
                        color: Color(0xFFE4FFC7),
                        icon: WebsafeSvg.asset("assets/images/ic_gmail.svg", width: 30, height: 30),
                        name: 'bbb',
                        press: () {},
                      ),
                      SocalCard(
                        color: Color(0xFFE8F0F9),
                        icon: WebsafeSvg.asset("assets/images/ic_github.svg", width: 30, height: 30),
                        name: 'ccc',
                        press: () {},
                      )
                    ]
                ),
                SizedBox(height: kDefaultPadding * 2),
                ContactForm(),
              ]
          )
      ),
      desktop: Container(
          constraints: BoxConstraints(maxWidth: 1110),
          margin: EdgeInsets.only(top: kDefaultPadding * 2),
          padding: EdgeInsets.all(kDefaultPadding * 3),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              )
          ),
          child: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SocalCard(
                        color: Color(0xFFD9FFFC),
                        icon: WebsafeSvg.asset("assets/images/ic_linkedin.svg", width: 30, height: 30),
                        name: 'aaa',
                        press: () {},
                      ),
                      SocalCard(
                        color: Color(0xFFE4FFC7),
                        icon: WebsafeSvg.asset("assets/images/ic_gmail.svg", width: 30, height: 30),
                        name: 'bbb',
                        press: () {},
                      ),
                      SocalCard(
                        color: Color(0xFFE8F0F9),
                        icon: WebsafeSvg.asset("assets/images/ic_github.svg", width: 30, height: 30),
                        name: 'ccc',
                        press: () {},
                      )
                    ]
                ),
                SizedBox(height: kDefaultPadding * 2),
                ContactForm(),
              ]
          )
      )
    );
  }
}

class ContactForm extends StatelessWidget {
  const ContactForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Responsive(
        mobile: Form(
            child: Wrap(
                spacing: kDefaultPadding * 2.5,
                runSpacing: kDefaultPadding * 1.5,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: TextFormField(
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        labelText: "Your Name",
                        hintText: "Enter Your Name",
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: TextFormField(
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        labelText: "Email Address",
                        hintText: "Enter your email address",
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: TextFormField(
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        labelText: "Project Type",
                        hintText: "Select Project Type",
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: TextFormField(
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        labelText: "Project Budget",
                        hintText: "Select Project Budget",
                      ),
                    ),
                  ),
                  SizedBox(
                    // height: 300,
                    // TextField by default cover the height, i tried to fix this problem but i cant
                    child: TextFormField(
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        labelText: "Description",
                        hintText: "Write some description",
                      ),
                        keyboardType: TextInputType.multiline,
                        minLines: 3,
                        maxLines: 5
                    ),
                  ),
                  Center(
                      child: FittedBox(
                          child: FlatButton(
                              padding: EdgeInsets.symmetric(
                                vertical: 20,
                                horizontal: 30,
                              ),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                              color: Color(0xFFE8F0F9),
                              onPressed: (){

                              },
                              child: Row(
                                  children: [
                                    Image.asset("assets/images/contact_icon.png", height: 40),
                                    SizedBox(width: 5),
                                    Text(
                                        "Contact Me!",
                                        style: TextStyle(fontSize: 10)
                                    )
                                  ]
                              )
                          )
                      )
                  )
                ]
            )
        ),
        tablet: Form(
            child: Wrap(
                alignment: WrapAlignment.center,
                spacing: kDefaultPadding * 2.5,
                runSpacing: kDefaultPadding * 1.5,
                children: [
                  SizedBox(
                    width: size.width <= 970 ? double.infinity : 400,
                    child: TextFormField(
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        labelText: "Your Name",
                        hintText: "Enter Your Name",
                      ),
                    ),
                  ),
                  SizedBox(
                    width: size.width <= 970 ? double.infinity : 400,
                    child: TextFormField(
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        labelText: "Email Address",
                        hintText: "Enter your email address",
                      ),
                    ),
                  ),
                  SizedBox(
                    width: size.width <= 970 ? double.infinity : 400,
                    child: TextFormField(
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        labelText: "Project Type",
                        hintText: "Select Project Type",
                      ),
                    ),
                  ),
                  SizedBox(
                    width: size.width <= 970 ? double.infinity : 400,
                    child: TextFormField(
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        labelText: "Project Budget",
                        hintText: "Select Project Budget",
                      ),
                    ),
                  ),
                  SizedBox(
                    child: TextFormField(
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        labelText: "Description",
                        hintText: "Write some description",
                      ),
                        keyboardType: TextInputType.multiline,
                        minLines: 3,
                        maxLines: 5
                    ),
                  ),
                  SizedBox(height: kDefaultPadding * 2),
                  Center(
                      child: FittedBox(
                          child: FlatButton(
                              padding: EdgeInsets.symmetric(
                                vertical: Responsive.isMobile(context) ? 10 : 20,
                                horizontal: Responsive.isMobile(context) ? 10 : 20 * 2.5,
                              ),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                              color: Color(0xFFE8F0F9),
                              onPressed: (){

                              },
                              child: Row(
                                  children: [
                                    Image.asset("assets/images/contact_icon.png", height: Responsive.isMobile(context) ? 20 : 40),
                                    SizedBox(width: Responsive.isMobile(context) ? 5 : 20),
                                    Text(
                                        "Contact Me!",
                                        style: TextStyle(fontSize: 10)
                                    )
                                  ]
                              )
                          )
                      )
                  )
                ]
            )
        ),
        desktop: Form(
            child: Wrap(
                spacing: kDefaultPadding * 2.5,
                runSpacing: kDefaultPadding * 1.5,
                children: [
                  SizedBox(
                    width: 470,
                    child: TextFormField(
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        labelText: "Your Name",
                        hintText: "Enter Your Name",
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 470,
                    child: TextFormField(
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        labelText: "Email Address",
                        hintText: "Enter your email address",
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 470,
                    child: TextFormField(
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        labelText: "Project Type",
                        hintText: "Select Project Type",
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 470,
                    child: TextFormField(
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        labelText: "Project Budget",
                        hintText: "Select Project Budget",
                      ),
                    ),
                  ),
                  SizedBox(
                    // height: 300,
                    // TextField by default cover the height, i tried to fix this problem but i cant
                    child: TextFormField(
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        labelText: "Description",
                        hintText: "Write some description",
                      ),
                      keyboardType: TextInputType.multiline,
                      minLines: 3,
                      maxLines: 5
                    ),
                  ),
                  SizedBox(height: kDefaultPadding * 2),
                  Center(
                      child: FittedBox(
                          child: FlatButton(
                              padding: EdgeInsets.symmetric(
                                vertical: Responsive.isMobile(context) ? 10 : 20,
                                horizontal: Responsive.isMobile(context) ? 10 : 20 * 2.5,
                              ),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                              color: Color(0xFFE8F0F9),
                              onPressed: (){

                              },
                              child: Row(
                                  children: [
                                    Image.asset("assets/images/contact_icon.png", height: Responsive.isMobile(context) ? 20 : 40),
                                    SizedBox(width: Responsive.isMobile(context) ? 5 : 20),
                                    Text(
                                        "Contact Me!",
                                        style: TextStyle(fontSize: 10)
                                    )
                                  ]
                              )
                          )
                      )
                  )
                ]
            )
        )
    );
  }
}