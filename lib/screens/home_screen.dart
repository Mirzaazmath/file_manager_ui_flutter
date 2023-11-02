import 'package:flutter/material.dart';

import '../utils/text_utlis.dart';
import '../widgets/my_folder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.grey,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading:const  Icon(Icons.menu),
        title: const Text("File Manager"),
        actions:const [
          Icon(Icons.search),
          SizedBox(width: 10,),
        ],

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding:const  EdgeInsets.all(10),
                      height: 110,
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(Icons.developer_board,size: 40,),
                          const Spacer(),
                          TextUtil(
                            text: "Internal",
                            weight: true,
                            size: 20,
                          ),
                          TextUtil(
                            text: "256 GB",
                            size: 14,

                          )
                        ],
                      ),

                    ),
                  ),
                 const  SizedBox(width: 15,),
                  Expanded(
                    child: Container(
                      padding:const  EdgeInsets.all(10),
                      height: 110,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(Icons.sd_card_outlined,size: 40,),
                          const Spacer(),
                          TextUtil(
                            text: "External",
                            weight: true,
                            size: 20,
                          ),
                          TextUtil(
                            text: "64 GB",
                            size: 14,

                          )
                        ],
                      ),

                    ),
                  ),
                ],

              ),
              const SizedBox(height: 20,),
              Container(
                padding:const  EdgeInsets.all(10),
                height: 160,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(20),
                  color:const  Color(0xff0a0a0a)

                ),
                child: Row(
                  children: [
                    Expanded(child: Stack(
                      alignment: Alignment.center,

                      children: [
                        Container(
                          padding:const  EdgeInsets.all(20),
                          height: 110,
                          width: 120,
                          child:  CircularProgressIndicator(
                              value: 0.7,
                              strokeWidth: 10,
                              color: Colors.grey.shade200,
                              strokeCap: StrokeCap.round
                          ),
                        ),

                        Container(
                          padding:const  EdgeInsets.all(20),
                          height: 150,
                          width: 160,
                          child:  CircularProgressIndicator(
                            value: 0.8,
                            strokeWidth: 10,
                            color: Theme.of(context).primaryColor,
                            strokeCap: StrokeCap.round
                          ),
                        ),
                      ],
                    )),
                    Expanded(child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(children:[ CircleAvatar(
                            radius: 6,
                            backgroundColor: Theme.of(context).primaryColor,
                          ),
                     const  SizedBox(width: 10,),
                      TextUtil(text: "Phone Memory",color: Colors.grey,size: 13,weight: true,),



                        ]),
                        const  SizedBox(height: 5,),
                        TextUtil(text: "Used 204 GB",color: Colors.grey,size: 13,),
                        const  SizedBox(height: 5,),
                        TextUtil(text: "Free 60 GB",color: Colors.grey,size: 13,),
                        const Divider(color: Colors.grey,),
                        Row(children:[
                           CircleAvatar(
                          radius: 6,
                          backgroundColor: Colors.grey.shade200,
                        ),
                          const  SizedBox(width: 10,),
                          TextUtil(text: "Phone Memory",color: Colors.grey,size: 13,weight: true,),



                        ]),
                        const  SizedBox(height: 5,),
                        TextUtil(text: "Used 16 GB",color: Colors.grey,size: 13,),
                        const  SizedBox(height: 5,),
                        TextUtil(text: "Free 48 GB",color: Colors.grey,size: 13,),

                      ],
                    )),

                  ],
                ),
              ),
              const SizedBox(height: 20,),
              TextUtil(text: "My Favorites",color: Colors.grey,size: 22,),
              const SizedBox(height: 10,),
              Row(
                children: [

                  Expanded(
                    child: Container(
                      padding:const  EdgeInsets.all(10),
                      height: 90,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(Icons.image_outlined,size: 28,),
                          const Spacer(),
                          TextUtil(
                            text: "Images",
                            weight: true,

                          ),
                          TextUtil(
                            text: "1340 Items",
                            size: 13,

                          )
                        ],
                      ),

                    ),
                  ),
                  const  SizedBox(width: 15,),
                  Expanded(
                    child: Container(
                      padding:const  EdgeInsets.all(10),
                      height: 90,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(Icons.video_camera_back_outlined,size: 28,),
                          const Spacer(),
                          TextUtil(
                            text: "Videos",
                            weight: true,

                          ),
                          TextUtil(
                            text: "120 Items",
                            size: 13,

                          )
                        ],
                      ),

                    ),
                  ),
                  const  SizedBox(width: 15,),
                  Expanded(
                    child: Container(
                      padding:const  EdgeInsets.all(10),
                      height: 90,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(Icons.music_note_outlined,size: 28,),
                          const Spacer(),
                          TextUtil(
                            text: "Music",
                            weight: true,

                          ),
                          TextUtil(
                            text: "230 Items",
                            size: 12,

                          )
                        ],
                      ),

                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              const MyFolderWidget(),

            ],
          ),
        ),
      ),

    );
  }
}
