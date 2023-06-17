// ignore_for_file: public_member_api_docs, sort_constructors_first
const String firstName = "Sagar";
const String name = "Sagar Kumar";
const String designation = "Flutter Developer";
const String about =
    "3rd Year Computer Science Undergrad from Delhi Technological University (DCE formerly).\nI like to solve DSA problems, doing little bit CP (competitive programming), and as usual Computer Science grad I also have little bit knowledge of OS, DBMS, CN.";
const String email = "sagarkumar.dev2301@gmail.com";
const String linkedInUrl = "https://www.linkedin.com/in/sagar-kumar-26a6b0219/";
const String githubUrl = "https://github.com/sagardev2301";
const String instaUrl = "https://www.instagram.com/sagar__2325/";
const String resumeUrl =
    "https://drive.google.com/file/d/1ZA3o8UOtlp0nRqtW7LUzbW7KHiltmE44/view?usp=sharing";
const String emailUrl = "mailto:$email";
// List<Project> project = [
//   Project(
//     name: "BMI App", 
//     shortDescription: "User can calculate their BMI using this app.", 
//     descriptionPoints: [
//       ""
//     ], 
//     assetsPath: [

//     ], 
//     githubUrl: "https://github.com/sagardev2301/bmi_calculator"),

// ];

class Project {
  String name;
  String shortDescription;
  List<String> descriptionPoints;
  List<String> assetsPath;
  String githubUrl;

  Project({
    required this.name,
    required this.shortDescription,
    required this.descriptionPoints,
    required this.assetsPath,
    required this.githubUrl,
  });
}
