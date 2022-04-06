import 'package:flutter/material.dart';
import 'package:vrsclone/app/utils/app_color.dart';
import 'package:vrsclone/app/utils/app_sizes.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: false,
        title: Text("VRS DEMO",style: TextStyle(
          fontSize: AppFontSize.fontSize_16,
          color: AppColors.textBlackColor,
          fontWeight: FontWeight.w500
        ),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search,size: 28,color: AppColors.textBlueColor,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.bar_chart_outlined,size: 28,color: AppColors.textBlueColor,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart_outlined,size: 28,color: AppColors.textBlueColor,))
        ],
      ),
      body: SafeArea(child: ListView(
        children: [
          _buildTopCategory(context),
          _buildBanner(context),
          _buildList(context),
        ],
      )),
    );
  }

 Widget _buildTopCategory(BuildContext context)
 {
   return Container(
     height: 150,
     child: ListView.builder(
       shrinkWrap: true,
       itemCount: 5,
       scrollDirection: Axis.horizontal,
       itemBuilder: (context,int index){
         return Card(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Image.network(
                 'https://picsum.photos/250?image=9',
                 height: 100,
               ),
               SizedBox(height: 10,),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 8.0),
                 child: Text("Category 1"),
               ),
             ],
           ),
         );
       },
     ),
   );
 }

 Widget _buildBanner(context)
 {
   return Container(
     width: MediaQuery.of(context).size.width,
     height: 200,
     child: PageView.builder(
         itemBuilder: (context,int index){
       return Image.network(
         'https://picsum.photos/250?image=9',
         width: MediaQuery.of(context).size.width,
         height: MediaQuery.of(context).size.height/2,
       );
     }),
   );
 }

  Widget _buildList(context){
    return Container(
      height: MediaQuery.of(context).size.height/2,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (context,int index){
          return Image.network( 'https://picsum.photos/250?image=9',);
        },
      ),
    );
  }

}
