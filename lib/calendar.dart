import 'package:flutter/material.dart';

class Calendar extends StatefulWidget {
  const Calendar({
    super.key,
    required this.day,
    required this.numberDay,
  });

  final String numberDay;
  final String day;

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  late bool _hasBorder = true;

  @override
  void initState() {
    super.initState();
    _hasBorder = true;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 100,
      decoration: BoxDecoration(
        border: _hasBorder ? Border.all(color: Colors.grey) : null,
        borderRadius: BorderRadius.circular(15),
        color: _hasBorder ? null : Color(0xffcae9ae),
      ),
      child: InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () => {
          setState(() {
            _hasBorder = !_hasBorder;
          }),
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.numberDay,
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Roboto",
                )),
            Text(widget.day,
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontFamily: "Times New Roman",
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
          ],
        ),
      ),
    );
  }
}
