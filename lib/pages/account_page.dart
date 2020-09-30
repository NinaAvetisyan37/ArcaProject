import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  List<Map<String, dynamic>> items = [
    {'title': 'Կարգավորումներ', 'icon': Icons.account_circle},
    {'title': 'Վճարումների պատմություն', 'icon': Icons.format_list_numbered},
    {'title': 'Ծանուցումներ', 'icon': Icons.notifications},
    {'title': 'Իմ ծախսերը', 'icon': Icons.list},
    {'title': 'Էջանիշեր', 'icon': Icons.star_border},
    {'title': 'Շահառուներ', 'icon': Icons.group},
    {'title': 'Պարբերական վճարումներ', 'icon': Icons.credit_card},
    {'title': 'ԱԳՄ', 'icon': Icons.credit_card},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.account_circle,
              color: Color(0xff10A1E7),
            ),
            SizedBox(width: 10),
            Text(
              'aaaa6819@gmail.com',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
        Expanded(
          child: ListView.separated(
            padding: EdgeInsets.all(15),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    Icon(
                      items[index]['icon'],
                      color: Color(0xff10A1E7),
                      size: 30,
                    ),
                    SizedBox(width: 10),
                    Text(
                      items[index]['title'],
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) {
              return Divider();
            },
            itemCount: items.length,
          ),
        ),
        Center(
            child: Column(children: [
          Text(
            'Հեռասպասարկման կենտրոն',
            style: TextStyle(fontSize: 17),
          ),
          Card(
            shadowColor: Color(0xffF39122),
            child: Padding(
              padding:
                  EdgeInsets.only(bottom: 15, top: 15, left: 30, right: 30),
              child: Text(
                '+374 10 59 2222',
                style: TextStyle(
                  color: Color(0xff10A1E7),
                ),
              ),
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(
              Icons.exit_to_app,
              color: Color(0xff10A1E7),
            ),
            Text(
              'Դուրս գալ',
              style: TextStyle(color: Color(0xff10A1E7)),
            ),
          ]),
        ])),
      ],
    );
  }
}