import 'package:faceboook/home.dart';
import 'package:flutter/material.dart';

class StatusAvathar extends StatelessWidget {
  final String avathar;

  const StatusAvathar({super.key, required this.avathar});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return const Home();
          },
        ));
      },
      child: CircleAvatar(
        radius: 35,
        backgroundImage: AssetImage(
          avathar,
        ),
      ),
    );
  }
}

// class Story extends StatelessWidget {
//   // final StoryController controller = StoryController();
//   Story({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: ListView(
//         children: <Widget>[
//           Container(
//             height: 300,
//             child: StoryView(
//               controller: controller,
//               storyItems: [
//                 StoryItem.text(
//                   title:
//                       "Hello world!\nHave a look at some great Ghanaian delicacies. I'm sorry if your mouth waters. \n\nTap!",
//                   backgroundColor: Colors.orange,
//                   roundedTop: true,
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
