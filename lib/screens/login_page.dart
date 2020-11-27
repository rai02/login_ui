import "package:flutter/material.dart";
import 'package:flutter/rendering.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class LoginUI extends StatelessWidget {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController controller = TextEditingController();
  String initialCountry = 'NG';
  PhoneNumber number = PhoneNumber(isoCode: 'IN');
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      // backgroundColor: Colors.green,
      body: Center(
        child: Container(

            decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.black87,
                    width: 1
                )
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget> [
                Container(
                  width: size.width/8,
                  height: size.width/4,
                  color: Colors.black87,
                  child: Center(
                    child: Container(
                      margin: EdgeInsets.all(8.0),
                      alignment: Alignment.topCenter,
                      child: Text("LOGIN",style: TextStyle(fontSize: 35, color: Colors.white),),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8.0),
                  width: size.width/4,
                  height: size.width/4,
                  color: Colors.white,
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      // mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center ,
                      children: <Widget>[
                        Container(

                          child: Text("Enter Mobile number",style:
                          TextStyle(fontSize: 10,color: Colors.grey),),
                          // left: 10,
                          // top: 200,
                          // color: Colors.yellow,
                        ),
                        Positioned(
                          // left: 150,
                          // top: 205,
                          child: Container(
                            alignment: Alignment.center,
                            color: Colors.green,
                            child: InternationalPhoneNumberInput(
                              countrySelectorScrollControlled: true,
                              onInputChanged: (PhoneNumber number) {
                                print(number.phoneNumber);
                              },
                              onInputValidated: (bool value) {
                                print(value);
                              },
                              selectorConfig: SelectorConfig(
                                selectorType: PhoneInputSelectorType.DROPDOWN,
                                backgroundColor: Colors.white,
                              ),
                              ignoreBlank: false,
                              autoValidateMode: AutovalidateMode.disabled,
                              selectorTextStyle: TextStyle(color: Colors.black),
                              initialValue: number,
                              textFieldController: controller,
                              // inputBorder: OutlineInputBorder(),
                            ),
                          ),
                        ),

                        // SizedBox(height: 0,),
                        // Positioned(
                        //   left: 150,
                        //   top: 205,
                        //   child: Container(
                        //     // color: Colors.grey,
                        //     height: 30,
                        //     width: 250,
                        //     // constraints: BoxConstraints.m,
                        //     child: TextField(
                        //       decoration: InputDecoration(
                        //           labelText: "phone number"
                        //       ),
                        //     ),
                        //   ),
                        // ),

                        Positioned(
                          left: 200,
                          top: 270,
                          child: Container(
                            // height: 100,
                            width: 150,
                            // color: Colors.green,
                            child: MyButton(),
                          ),
                        ),
                   
                        Positioned(
                          left: 205,
                          top: 330,
                          child: Container(
                            child: Text("Login as Merchant" , style: TextStyle(fontSize: 15,color: Colors.black),),
                          ),
                        )


                      ],
                    ),
                  ),

              ],
            )
          // Text("MediaQuery 📱",style: TextStyle(fontSize: 25),),
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(

      color: Colors.black,
      padding: const EdgeInsets.all(0.0),
      child: Container(
        // decoration: BoxDecoration(
        //     gradient: LinearGradient(
        //       begin: Alignment.centerLeft ,
        //       end: Alignment.centerRight,
        //       colors: [
        //         Colors.indigo,
        //         Colors.white,
        //         Colors.redAccent
        //       ],
        //     )
        // ),
        padding: const EdgeInsets.all(10),
        child: Text(" Request OTP ", style: TextStyle(fontSize: 15,color: Colors.white),),
      ),
      onPressed: () {},
      // child: Text(" ✌  😂  😎  🎉  ", style: TextStyle(fontSize: 25),),
    );
  }
}
