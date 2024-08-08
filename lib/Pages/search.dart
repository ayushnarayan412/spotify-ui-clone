import 'package:clone_spotify/widgets/app_drawer.dart';
import 'package:clone_spotify/widgets/app_drawer_button.dart';
import 'package:clone_spotify/widgets/search_cards.dart';
import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        forceMaterialTransparency: true,
        title: const Text('Search',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25
        ),),
        leading:const AppDrawerButton(),
         actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.camera_alt_outlined,
          size: 35,
          ))
         ],
       ),
      
      drawer:const AppDrawer(),
      body: Container(
        padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors:[
            Colors.transparent,
            Color.fromARGB(255, 65, 43, 69)
          ],
          begin: Alignment.topLeft,
          end: Alignment.center )
        ),
        child: ListView(
          children: [
            const SizedBox(height: 20,),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white
              ),
              
              child :TextFormField( 
                
              decoration:  const InputDecoration(
                hintText: 'What do you want to listen to?',
                hintStyle: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.bold
                ),
                prefixIcon: Icon(Icons.search,color: Colors.black,),
                enabledBorder:  OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white
                  ),
                ),
              focusedBorder:  OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white
                ),
              )
              ),
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            )
            ),
            const SizedBox(height: 30,),
            const Column(
          
            crossAxisAlignment: CrossAxisAlignment.start,
             children: [
            Text('Explore your genres',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize:20 
              
            ),
           
            ),
            SizedBox(height: 20,),
            SearchCards(),
            SizedBox(height: 10,),
            SearchCards(),
             SizedBox(height: 10,),
            SearchCards(),
             SizedBox(height: 10,),
            SearchCards(),
             SizedBox(height: 10,),
            SearchCards(),
             SizedBox(height: 10,),
             SearchCards(),
             SizedBox(height: 10,),
             SearchCards(),
             SizedBox(height: 10,),
             ],
             )
            
          ],
        ),
      )
    );
  }
}