import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';

class ContactMe extends StatelessWidget {
  const ContactMe({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: 545,
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: width * 0.50,
            padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
            decoration: BoxDecoration(
              color: const Color(0xff88efe0),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                const Text(
                  "Get in touch!",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    ContactMeTile(
                      data: "+91 8287505276",
                      icon: FontAwesomeIcons.phone,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    ContactMeTile(
                        data: "sagarkumar.dev2301@gmail.com",
                        icon: FontAwesomeIcons.envelope)
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                ContactDetailTile(),
              ],
            ),
          ),
          SizedBox(
              height: height * 0.863309353,
              width: width * 0.439238653,
              child: Lottie.asset('lottie/contact_us.json')),
        ],
      ),
    );
  }
}

class ContactDetailTile extends StatelessWidget {
  ContactDetailTile({super.key});
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: height * 0.115107914,
                      width: width * 0.219619327,
                      child: TextFormField(
                        decoration: customInputDecoration(
                            labeltext: "Your Name",
                            icondata: FontAwesomeIcons.user),
                        keyboardType: TextInputType.name,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter your name.";
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(
                      height: height * 0.115107914,
                      width: width * 0.219619327,
                      child: TextFormField(
                        decoration: customInputDecoration(
                            labeltext: "Email", icondata: FontAwesomeIcons.at),
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter your email.";
                          } else if (value.contains('@') &&
                              (value.endsWith('.gmail') ||
                                  value.endsWith('.yahoo'))) {
                            return "Please enter valid email.";
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(
                      height: height * 0.115107914,
                      width: width * 0.219619327,
                      child: TextFormField(
                        decoration: customInputDecoration(
                            labeltext: "Contact No.",
                            icondata: FontAwesomeIcons.idBadge),
                        keyboardType: TextInputType.number,
                      ),
                    )
                  ],
                ),
                // const SizedBox(
                //   width: 5,
                // ),
                Column(
                  children: [
                    SizedBox(
                      height: height * 0.316546763,
                      width: width * 0.197657394,
                      child: TextFormField(
                        expands: true,
                        minLines: null,
                        maxLines: null,
                        decoration: InputDecoration(
                            labelText: "Message",
                            labelStyle: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                            hintText: 'Write your message here.',
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: const BorderSide(
                                  color: Colors.indigo,
                                  width: 1,
                                ))),
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          TextButton(onPressed: () {}, child: const Text("Submit"))
        ],
      ),
    );
  }

  InputDecoration customInputDecoration(
      {required String labeltext, required IconData icondata}) {
    return InputDecoration(
        labelText: labeltext,
        labelStyle: const TextStyle(
            fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
        //hintText: 'Sagar Kumar',
        icon: Icon(icondata),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              color: Colors.indigo,
              width: 1,
            )));
  }
}

class ContactMeTile extends StatelessWidget {
  const ContactMeTile({
    super.key,
    required this.data,
    required this.icon,
  });
  final String data;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Row(children: [
        Icon(
          icon,
          size: 18,
          color: Colors.black,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          " |  $data",
          style: const TextStyle(fontSize: 18),
        )
      ]),
    );
  }
}
