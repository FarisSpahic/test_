import 'package:flutter/material.dart';
import 'package:testapp/custombottomnav.dart';
import 'package:testapp/navbar.dart';
import 'package:testapp/post.dart';

class HomePage extends StatelessWidget {
  
  HomePage({Key? key}) : super(key: key);
  List<Post> posts = Post.getPosts();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          color: Colors.black,
        ),
        child: SafeArea(
          child: Column(
              children: [
                NavBar(),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: posts.map((e) => PostWidget(post: e,)).toList(),
                    ),
                  ),
                ),
                BottomNavBar()
              ],
          ) 
          ),
      ),
    );
  }
}