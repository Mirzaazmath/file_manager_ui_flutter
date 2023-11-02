import 'package:flutter/material.dart';

import '../utils/text_utlis.dart';
class MyFolderWidget extends StatelessWidget {
  const MyFolderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextUtil(text: "My Folders",color: Colors.grey,size: 22,),
        const SizedBox(height: 10,),
        Container(

          height: 75,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(20)
          ),
          alignment: Alignment.center,
          child: ListTile(
            leading: const Icon(Icons.description,size: 40,),
            title:  TextUtil(
              text: "Documents",
              weight: true,

            ),
            subtitle: TextUtil(
              text: "235 Items",
              size: 13,

            ),
            trailing: const Icon(Icons.more_vert,size: 23,),


          ),

        ),

      ],
    );
  }
}
