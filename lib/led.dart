import 'package:flutter/material.dart';

class Led extends AnimatedWidget {
  Led({Key key, Animation<int> animation})
      : super(key: key, listenable: animation);

  @override
  Widget build(BuildContext context) {
    Animation<int> animation = listenable;
    return new Container(
      width: 50,
      height: 50,
      decoration: new BoxDecoration(
        gradient: new RadialGradient(
          colors: [new Color.fromRGBO(animation.value, 0, 0, 1), new Color.fromRGBO(168, 0, 0, 1)], // new Color.fromRGBO(166, 16, 24, 1)],
          stops: [0.3, 1],
        ),
        boxShadow: [
          new BoxShadow(color: new Color.fromRGBO(0, 0, 0, 0.2), offset: new Offset(0.0, -1.0), blurRadius: 7.0, spreadRadius: 1.0),
          new BoxShadow(color: new Color.fromRGBO(255, 0, 0, 1), offset: new Offset(0.0, 2.0), blurRadius: 12.0, spreadRadius: 0.0)
        ],
        shape: BoxShape.circle,
      ),
    );
  }
}

class AnimatedLed extends AnimatedWidget {
  AnimatedLed({Key key, Animation<Decoration> animation})
      : super(key: key, listenable: animation);

  @override
  Widget build(BuildContext context) {
    Animation<Decoration> animation = listenable;
    return new Container(
      width: 50,
      height: 50,
      decoration: animation.value
    );
  }
}