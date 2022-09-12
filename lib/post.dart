import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Post{
  final String username, description;
  final Image image, postImage;
  final int likes, shares, comments;

  Post({required this.username, required this.image, required this.likes, required this.shares, required this.comments, required this.postImage, required this.description});

  static List<Post> getPosts(){
    return [
      Post(username: "dzemo", image: Image.network("https://media-exp1.licdn.com/dms/image/C5603AQFGx1uOToY73w/profile-displayphoto-shrink_800_800/0/1549550726565?e=2147483647&v=beta&t=3YIwOrjGSldnHVwL4zHUaykuOsfZlEc0IOzWVZ_IqYI", width: 30, height: 30,), likes: 1000, shares: 420, comments: 10, postImage: Image.asset("./assets/nigru.jpg"), description:  "crni gru."),
      Post(username: "kanitak", image: Image.asset("./assets/kkk.png", width: 30, height: 30,), likes: 69420, shares: 0, comments: 9, postImage: Image.asset("./assets/kk.jpg"), description:  "can relate 100000%")

    ];
  }
}

class PostWidget extends StatelessWidget {
  final Post post;
  const PostWidget({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      
      padding: const EdgeInsets.all(8.0),
      
      child: Container(
        margin: EdgeInsets.only(top: 12),
        decoration: BoxDecoration(
          color: Colors.black87,
          borderRadius: BorderRadius.all(Radius.circular(12)),
          border: Border.all(
            color: Colors.white12
          )  
        ),
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PostHeader(username: post.username, image: post.image,),
            Center(
              child: post.postImage,
            ),
            PostFooter(username: post.username, comments: post.comments, description: post.description, likes: post.likes, shares: post.shares,)
          ],
        ),
      ),
    );
  }
}

class PostHeader extends StatelessWidget {
  final String username;
  final Image image;
  const PostHeader({Key? key, required this.username, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        decoration: BoxDecoration(
          //borderRadius: BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5))
          ),
        child: Row(
          
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(

              children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: image,
              ),
                
                SizedBox(width: 15,),
                Text(username, style: GoogleFonts.karla(textStyle: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.bold)),)
              ],  
            ),
            Center(              
              child: Row(
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.draw, color: Colors.lightBlue[300],)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.linear_scale_outlined, color: Colors.white,))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PostFooter extends StatelessWidget {
  final String username, description;
  final int likes, shares, comments;

  const PostFooter({Key? key, required this.username, required this.description, required this.likes, required this.shares, required this.comments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
      child: Container(
        child: Column(
          children: [
            EngagementBar(likes: likes, comments: comments, shares: shares,),
            SizedBox(height: 10,),
            DescriptionBar(username: username, description: description)
          ],
        ),
      ),
    );
  }
}

class DescriptionBar extends StatelessWidget {
  final String username, description;
  const DescriptionBar({Key? key, required this.username, required this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5),
      child: Row(
        
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          RichText(text: TextSpan(
          children: [
            TextSpan(text: "$username  ", style: GoogleFonts.karla(textStyle: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.bold))),
            TextSpan(text: description, style: GoogleFonts.karla(textStyle: TextStyle(color: Colors.white54, fontSize: 12, fontFamily: "Regular")))
          ]
            )
            ),
        ],
      ),
    );
  }
}

class EngagementBar extends StatelessWidget {
  final int likes, shares, comments;
  const EngagementBar({Key? key, required this.likes, required this.shares, required this.comments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          EngagementButton(num: shares, icon: Icon(Icons.bookmark_border, color: Colors.white, size: 30,)),
          EngagementButton(num: comments, icon: Icon(Icons.comment_sharp, color: Colors.white,size: 30)),
          EngagementButton(num: likes, icon: Icon(Icons.heart_broken, color: Colors.white,size: 30)),
        ],
      ),
    );
  }
}

class EngagementButton extends StatelessWidget {
  final int num;
  final Icon icon;
  const EngagementButton({Key? key, required this.num, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            icon,
            SizedBox(height: 8,),
            Text("$num", style: GoogleFonts.karla(textStyle: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.bold)),)
          ],
        ),
      ),
    );
  }
}