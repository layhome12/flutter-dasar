import 'package:flutter/material.dart';
import 'package:layout_basic/models/tourism_model.dart';

class ListItem extends StatelessWidget {
  final TourismDetail place;
  final bool isDone;
  final Function(bool? value) onCheckBoxClick;

  const ListItem({
    Key? key,
    required this.place,
    required this.isDone,
    required this.onCheckBoxClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: isDone?Colors.white60:Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Image.network(place.wisataImg),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      place.wisataNama,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 0, top: 4),
                    child: SizedBox(
                      width: double.infinity,
                      child: Text(
                        place.wisataLokasi,
                        textAlign: TextAlign.left,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Checkbox(
              checkColor: Colors.blue,
              value: isDone,
              onChanged: onCheckBoxClick)
        ],
      ),
    );
  }
}
