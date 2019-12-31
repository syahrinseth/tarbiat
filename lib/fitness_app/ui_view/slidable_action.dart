import 'package:flutter/material.dart';
import '../fintness_app_theme.dart';
import 'package:tabiat/main.dart';
import 'package:tabiat/design_course/design_course_app_theme.dart';


class SlidableAction extends StatelessWidget {
  final String name;
  final Icons icon;
  final String color;
  const SlidableAction({Key key, this.name, this.icon, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              // return object of type Dialog
              return AlertDialog(
                title: new Text(name),
                content: new Text("Mark ${this.name} as done?"),
                actions: <Widget>[
                  // usually buttons at the bottom of the dialog
                  new FlatButton(
                    child: new Text("Close"),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            },
          );
      },
      child: Column(
      children: <Widget>[
        Padding(
            padding: const EdgeInsets.only(top: 16, bottom: 16),
            child: Container(
              decoration: BoxDecoration(
                color: HexColor(color),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8.0),
                    bottomLeft: Radius.circular(8.0),
                    bottomRight: Radius.circular(8.0),
                    topRight: Radius.circular(8.0)),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: FintnessAppTheme.grey.withOpacity(0.4),
                      offset: Offset(1.1, 1.1),
                      blurRadius: 10.0),
                ],
              ),
              child: Stack(
                alignment: Alignment.topLeft,
                children: <Widget>[
                  ClipRRect(
                    borderRadius:
                        BorderRadius.all(Radius.circular(8.0)),
                    child: SizedBox(
                      height: 74,
                      child: AspectRatio(
                        aspectRatio: 1.714,
                        child: null,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 25,
                              right: 25,
                              top: 25,
                              bottom: 25
                            ),
                            child: Text(
                              name,
                              style: TextStyle(color: Colors.white)
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
