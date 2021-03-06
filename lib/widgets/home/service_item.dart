import 'package:bookbarber/themes/default_theme.dart';
import 'package:flutter/material.dart';

class ServiceItem extends StatelessWidget {
  final String imageIcon;
  final String label;
  Function funcao;

  ServiceItem({this.imageIcon, this.label, this.funcao});

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.only(right: 40),
      width: 150,
      height: 150,
      child: Material(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
          bottomLeft: Radius.circular(20),
        ),
        color: DefaultTheme.lightTheme.colorScheme.secondary,
        child: InkWell(
          borderRadius: BorderRadius.circular(20.0),
          onTap: funcao,
          //splashColor: Colors.redAccent,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 50, top: 5, right: 10),
                child: Image.asset(
                  imageIcon,
                  height: 100,
                  width: 100,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15, left: 10),
                child: Text(
                  label,
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
