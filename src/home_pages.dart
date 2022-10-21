//?            HOME PAGE
//?  This is the page that displays all the
//? home pages that the app includes, which are:
//? --Settings
//? --Chat
//? --Post
//? --Asset
// .
part of 'main.dart';

class _HomePages extends StatefulWidget {
  const _HomePages({Key? key}) : super(key: key);

  @override
  State<_HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<_HomePages> {
  @override
  Widget build(BuildContext context) {
    //*
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Powered by EarnDee",
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
        ),
        home: DefaultTabController(
            length: 4,
            initialIndex: 2,
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.brown,
                shadowColor: Color.fromARGB(255, 36, 20, 65),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [Text("NFCS"), Icon(Icons.search)],
                ),
                bottom: TabBar(
                  tabs: [
                    const Icon(Icons.settings, size: 20),
                    Column(
                      children: const [
                        Icon(Icons.person, size: 20),
                        Text("Chat"),
                      ],
                    ),
                    Column(
                      children: const [
                        Icon(Icons.tv, size: 20),
                        Text("Post"),
                      ],
                    ),
                    Column(
                      children: const [
                        Icon(Icons.assessment, size: 20),
                        Text("Assets"),
                      ],
                    ),
                  ],
                ),
              ),
              body: const TabBarView(
                children: [
                  SettingsHome(),
                  ChatHome(),
                  PostHome(),
                  AssetHome(),
                ],
              ),
            )));
  }
}
