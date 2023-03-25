import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';

class ContactMe extends StatelessWidget {
  const ContactMe({super.key});

  @override
  Widget build(BuildContext context) {
    //final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      //color: Colors.amber[200],
      width: double.infinity,
      padding: width < 900
          ? const EdgeInsets.fromLTRB(0, 20, 0, 20)
          : const EdgeInsets.fromLTRB(0, 50, 0, 50),
      child: Wrap(
        alignment: WrapAlignment.center,
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: width < 900 ? width * 0.8 : width * 0.50,
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            decoration: BoxDecoration(
              color: const Color(0xff88efe0),
              borderRadius: BorderRadius.circular(20),
            ),
            child: ContactDetailTile(),
          ),
          SizedBox(
              width: width < 900 ? width * 1.0 : width * 0.439238653,
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
          const Text(
            "Get in touch!",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: width < 900 ? width * 0.7 : width * 0.5,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Wrap(
              spacing: 20,
              runSpacing: 20,
              //crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: width < 900 ? height * 0.25 : height * 0.26,
                  width: width < 900 ? width * 0.6 : width * 0.22,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextFormField(
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
                      TextFormField(
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
                      TextFormField(
                        decoration: customInputDecoration(
                            labeltext: "Contact No.",
                            icondata: FontAwesomeIcons.idBadge),
                        keyboardType: TextInputType.number,
                      )
                    ],
                  ),
                ),
                // const SizedBox(
                //   width: 5,
                // ),
                SizedBox(
                  height: width < 900 ? height * 0.25 : height * 0.26,
                  width: width < 900 ? width * 0.6 : width * 0.2,
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
    return Container(
      clipBehavior: Clip.hardEdge,
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
