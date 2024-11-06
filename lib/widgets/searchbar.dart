import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:maps_app/delegates/delegates.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      height: 50,
      child: GestureDetector(
        onTap: () {
          showSearch(context: context, delegate: SearchDestinationDelegate());
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(100),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black12, blurRadius: 5, offset: Offset(0, 5))
              ]),
          child: Row(
            children: const [
              Icon(Icons.search),
              SizedBox(
                width: 5,
              ),
              Text(
                "¿Donde quieres ir?",
                style: TextStyle(color: Colors.black87),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
