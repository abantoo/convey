import 'package:flutter/material.dart';
import 'package:chatapp/models/chatUserModel.dart';
import 'package:chatapp/ui/widgets/conversationsList.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}
  
class _ChatPageState extends State<ChatPage> {
    List<ChatUsers> chatUsers = [
    ChatUsers(name: "Tamim Iqbal", messageText: "Ajke dot ball kom khelsi xD", image: "images/images.jpeg", time: "Now"),
    ChatUsers(name: "Chaldal.com", messageText: "Big discount on eggs", image: "images/images.jpeg", time: "Yesterday"),
    ChatUsers(name: "Arnold", messageText: "Hey where are you?", image: "images/images.jpeg", time: "24 Feb"),
    ChatUsers(name: "Abanto", messageText: "Busy! Call me in 20 mins", image: "images/images.jpeg", time: "23 Feb"),
    ChatUsers(name: "Stephen Hawkins", messageText: "Thankyou, It's awesome", image: "images/images.jpeg", time: "21 Jan"),
    ChatUsers(name: "Nick Cage", messageText: "-__-", image: "images/images.jpeg", time: "12 June"),
    ChatUsers(name: "Cypher", messageText: "This is a good spot", image: "images/images.jpeg", time: "29 Feb"),
    ChatUsers(name: "Kang", messageText: "Hmm....", image: "images/images.jpeg", time: "13 March"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Conversations",
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      padding:
                          EdgeInsets.only(left: 8, right: 8, top: 2, bottom: 2),
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.pink[50],
                      ),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.add,
                            color: Colors.pink,
                            size: 20,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            "Add New",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16, left: 16, right: 16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search...",
                  hintStyle: TextStyle(color: Colors.grey.shade600),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey.shade600,
                    size: 20,
                  ),
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  contentPadding: EdgeInsets.all(8),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.grey.shade100)),
                ),
              ),
            ),
            ListView.builder(
  itemCount: chatUsers.length,
  shrinkWrap: true,
  padding: EdgeInsets.only(top: 16),
  physics: NeverScrollableScrollPhysics(),
  itemBuilder: (context, index){
    return ConversationList(
      name: chatUsers[index].name,
      messageText: chatUsers[index].messageText,
      image: chatUsers[index].image,
      time: chatUsers[index].time,
      isMessageRead: (index == 0 || index == 3)?true:false,
    );
  },
),
          ],
        ),
      ),
    );
  }
}
