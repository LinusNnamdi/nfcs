//?               POST HOME PAGE
//?  This is the main home page for POST, which is
//? incharge of mutilating what is being seen in post.
//?
//?
//.

part of '../main.dart';

class PostHome extends StatefulWidget {
  const PostHome({Key? key}) : super(key: key);

  @override
  State<PostHome> createState() => _PostHomeState();
}

class _PostHomeState extends State<PostHome> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Page1(),
      floatingActionButton: Icon(Icons.add),
    );
  }
}
