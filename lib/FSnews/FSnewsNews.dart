import 'package:flutter/material.dart';

class FSnewsNews extends StatelessWidget {
  final String _title;
  final String _body;
  static const double _hPad = 16.0;

  FSnewsNews(this._title, this._body);

  @override
  Widget build(BuildContext context) {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(_hPad, 32.0, _hPad, 4.0),
          child: Text(_title),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(_hPad, 10, _hPad, _hPad),
          child: Text(_body),
        ),
      ],
    );
  }
}
