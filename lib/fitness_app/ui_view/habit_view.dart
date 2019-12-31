import 'package:flutter/material.dart';
import '../fintness_app_theme.dart';
import 'package:tabiat/main.dart';
import 'package:tabiat/design_course/design_course_app_theme.dart';


class HabitView extends StatelessWidget {
  final AnimationController animationController;
  final Animation animation;
  final String name;
  final String desc;
  final int min;
  final int index;

  const HabitView({Key key, this.animationController, this.animation, this.name, this.desc, this.min, this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      builder: (BuildContext context, Widget child) {
        return FadeTransition(
          opacity: animation,
          child: new Transform(
            transform: new Matrix4.translationValues(
                0.0, 30 * (1.0 - animation.value), 0.0),
            child: GestureDetector(
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
                  padding: const EdgeInsets.only(
                      left: 24, right: 24, top: 0, bottom: 0),
                    child: Stack(
                      overflow: Overflow.visible,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 16, bottom: 16),
                          child: Container(
                            decoration: BoxDecoration(
                              color: HexColor("#D7E0F9"),
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
                                            left: 100,
                                            right: 16,
                                            top: 16,
                                          ),
                                          child: Text(
                                            name,
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontFamily:
                                                  FintnessAppTheme.fontName,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14,
                                              letterSpacing: 0.0,
                                              color:
                                                  FintnessAppTheme.nearlyDarkBlue,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 100,
                                        bottom: 12,
                                        top: 4,
                                        right: 16,
                                      ),
                                      child: Row(
                                        children: <Widget>[
                                          Icon(
                                            Icons.star,
                                            color: DesignCourseAppTheme.nearlyBlue,
                                            size: 15,
                                          ),
                                          Text(
                                            "New.",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontFamily: FintnessAppTheme.fontName,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12,
                                              letterSpacing: 0.0,
                                              color: FintnessAppTheme.grey
                                                  .withOpacity(0.5),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: -16,
                          left: 0,
                          child: SizedBox(
                            width: 110,
                            height: 110,
                            child: Icon(
                              Icons.fastfood,
                              // color: FintnessAppTheme.,
                              size: 70,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ),
        );
      },
    );
  }
}
