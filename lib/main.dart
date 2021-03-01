import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Profile List",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with SingleTickerProviderStateMixin{
  TabController controller;

  @override
  void initState(){
    super.initState();
    controller = new TabController(vsync: this, length: 4, initialIndex: 0);
  }
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.green));
    return Scaffold(
      appBar: AppBar(
        title: TabBar(
          indicator: UnderlineTabIndicator(
            insets: EdgeInsets.symmetric(horizontal: 16)
          ),
          controller: controller,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.home)),
            Tab(icon: Icon(Icons.person_add)),
            Tab(icon: Icon(Icons.notifications)),
            Tab(icon: Icon(Icons.apps)),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          HomePage(),
          HomePage(),
          HomePage(),
          HomePage(),
        ],


      ),
    );
  }
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List names = ["Lucas Lyon","Giovanny Lyon","Vanessa Lungov","Marli Azevedo","Alexandre Azevedo","Maria Candia","Mirian Ayres","Random 1","Random 2","Random 3"];
  List designations = ["Owner","Brother","Girlfriend","Mother","Father","Father GrandMother","aunt","Random 1","Random 2","Random 3"];
  List pictures = ["https://media-exp1.licdn.com/dms/image/C4D03AQFNJbri-KxTcw/profile-displayphoto-shrink_200_200/0/1592265269963?e=1619049600&v=beta&t=Rtc02BUKK4tLKY2IcfxaX0UQMnmRfrsLCEtkWTXNN08","https://scontent.fcgh10-1.fna.fbcdn.net/v/t31.0-8/14352224_1766475873598997_1033914711935392850_o.jpg?_nc_cat=108&ccb=3&_nc_sid=a4a2d7&_nc_eui2=AeE_rjjf4xAjHuw2VS-aa-XTsUSvgMoYpkaxRK-AyhimRqsB58lvad0kqQN1ES3dyKf-YFb2G_P42FBfCN_yEbjt&_nc_ohc=dSiNeI84WxIAX9w-oa_&_nc_pt=1&_nc_ht=scontent.fcgh10-1.fna&oh=d490b885f1193f3ce066b1fbf193c5e0&oe=606001B6","https://scontent.fcgh10-1.fna.fbcdn.net/v/t1.0-9/19905394_1403865879702385_6669289002252694995_n.jpg?_nc_cat=109&ccb=3&_nc_sid=09cbfe&_nc_eui2=AeEfABhwBJ8ZLiAryYGp4SBhtGlYQN48ySu0aVhA3jzJK3k_4ZQwgMUlUTMaThtgsULITChDpib-TJ9yMnFGk9Ma&_nc_ohc=D1wlrt32Wq0AX82ZMPM&_nc_pt=1&_nc_ht=scontent.fcgh10-1.fna&oh=3a513c65b5533140358457936e80b694&oe=606014F6","https://scontent.fcgh10-1.fna.fbcdn.net/v/t1.0-1/p200x200/92617826_2873234232752105_5271718759772454912_o.jpg?_nc_cat=108&ccb=3&_nc_sid=7206a8&_nc_eui2=AeFVfyuaevCnl_T8exIZsPxghyxwVo0_ggyHLHBWjT-CDEZ9oxQCHbi4B9wHK8xcQsG-rDlZgDmaq2a5bh34ZPZK&_nc_ohc=cwP82AdBXnoAX-qtOJw&_nc_pt=1&_nc_ht=scontent.fcgh10-1.fna&tp=6&oh=108b7c2712bd6e6ee186a2a2a07a0e51&oe=605E82D6","https://scontent.fcgh10-1.fna.fbcdn.net/v/t1.0-9/15380855_1186138624787217_6520791803861199015_n.jpg?_nc_cat=111&ccb=3&_nc_sid=09cbfe&_nc_eui2=AeGlB7RF4EWhqcx3X-BcdPfk2l8hUqMwFpLaXyFSozAWksXHIT_KftVsKDycyzrsBKU6SWuu-t6NDjMyc904XAn6&_nc_ohc=NqeXLfk2UiQAX-VPnoK&_nc_pt=1&_nc_ht=scontent.fcgh10-1.fna&oh=f8df6e40d80576d26ade198a06971c68&oe=605E8C3F","https://scontent.fcgh10-1.fna.fbcdn.net/v/t1.0-9/64648100_105668870717329_372121189205671936_o.jpg?_nc_cat=102&ccb=3&_nc_sid=09cbfe&_nc_eui2=AeGAz1qdPr_T9Cuxn9Yw_99WSaYV19JCUJBJphXX0kJQkEAHjrDjeXTivTznH9HEozUA6P2vX-pFAkZlSir9F3R4&_nc_ohc=K8KknML2zPEAX-Kpc68&_nc_pt=1&_nc_ht=scontent.fcgh10-1.fna&oh=cc6aa4a9421a98816d2f2de51c2b473a&oe=6060CF69","https://scontent.fcgh10-1.fna.fbcdn.net/v/t1.0-9/30743662_1964409786914260_3736610530928885760_n.jpg?_nc_cat=109&ccb=3&_nc_sid=09cbfe&_nc_eui2=AeH6bCKeW4hm--mCOXVXy1VAQk6V_FUsYlpCTpX8VSxiWlz99pfpW4gBftW6_b2lAG_KYfHEihJXLqx3RzU_7h1V&_nc_ohc=tMXlYVsFhpwAX-4eqLv&_nc_pt=1&_nc_ht=scontent.fcgh10-1.fna&oh=2db48e716ed097a5083182200604326a&oe=605E8082","https://conteudo.imguol.com.br/blogs/174/files/2018/05/iStock-648229868-1024x909.jpg","https://conteudo.imguol.com.br/blogs/174/files/2018/05/iStock-648229868-1024x909.jpg","https://conteudo.imguol.com.br/blogs/174/files/2018/05/iStock-648229868-1024x909.jpg"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(
          padding: EdgeInsets.symmetric(vertical: 10),
          itemCount: 10,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) => Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5.0),
            child: Card(
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: 55.0,
                          height: 55.0,
                          color: Colors.white,
                          child: CircleAvatar(
                            backgroundColor: Colors.grey,
                            foregroundColor: Colors.black,
                            backgroundImage: NetworkImage
                              (pictures[index]),
                          ),
                        ),
                        SizedBox(width: 5.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(names[index],style: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.bold)),
                            Text(designations[index],style: TextStyle(color: Colors.grey)),
                          ],
                        )
                      ],
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                      child: FlatButton(
                        onPressed: (){},
                        color: Colors.red[200],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)
                        ),
                        child: Text("Invite", style: TextStyle(color: Colors.white)),
                      ),
                    ),

                  ],
                ),
              ),
            ),

          ),

        ),
      ),
    );
  }
}

