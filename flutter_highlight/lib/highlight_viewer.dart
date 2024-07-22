import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'flutter_highlight.dart';

class HighlightViewer extends StatefulWidget {
  final String source;
  final String? language;
  final Map<String, TextStyle>? theme;
  const HighlightViewer(
      {super.key, required this.source, this.language, this.theme});

  @override
  State<HighlightViewer> createState() => _HighlightViewerState();
}

class _HighlightViewerState extends State<HighlightViewer> {
  TextStyle? _textStyle;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var theme = widget.theme ?? _defaultTheme;
    final backgroundColor = theme['root']!.backgroundColor;
    final foregroundColor = theme['root']!.color;

    _textStyle ??= Theme.of(context).textTheme.bodyLarge!.copyWith(
        color: foregroundColor,
        fontFamily: 'SFMono-Regular,Consolas,Liberation Mono,Menlo,monospace');

    return Container(
        color: backgroundColor, // 设置背景色
        child: AnnotatedRegion<SystemUiOverlayStyle>(
            value: SystemUiOverlayStyle.light, // 这里设置你想要的样式
            child: SafeArea(
                child: Scaffold(
              backgroundColor: backgroundColor,
              body: _buildSourceContentView(theme, backgroundColor, foregroundColor),
              bottomNavigationBar:
                  _buildBottomNavigationBar(backgroundColor, foregroundColor),
            ))));
  }

  Widget _buildSourceContentView(Map<String, TextStyle> theme, Color? backgroundColor, Color? foregroundColor ) {
    return CustomScrollView(slivers: <Widget>[
      SliverAppBar(
        floating: true,
        snap: false,
        pinned: false,
        surfaceTintColor: Colors.transparent,
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
      ),
      SliverList(
          delegate: SliverChildListDelegate([
            HighlightView(
              textSelectable: true,
              widget.source,
              language: widget.language,
              padding: EdgeInsets.all(12),
              theme: theme,
              textStyle: _textStyle,
            )
          ])),
    ]);
  }

  Widget _buildBottomNavigationBar(
      Color? backgroundColor, Color? foregroundColor) {
    return BottomAppBar(
      color: backgroundColor,
      surfaceTintColor: Colors.transparent,
      child: Row(
        children: <Widget>[
          const SizedBox(width: 10),
          IconButton(
            icon: Icon(
              Icons.text_decrease_outlined,
              color: foregroundColor,
            ),
            onPressed: () {
              setState(() {
                final fontSize = max(8.0, _textStyle!.fontSize! - 2);
                _textStyle = _textStyle!.copyWith(fontSize: fontSize);
              });
            },
          ),
         const Spacer(),
          IconButton(
            icon: Icon(
              Icons.text_increase_outlined,
              color: foregroundColor,
            ),
            onPressed: () {
              setState(() {
                final fontSize = min(24.0, _textStyle!.fontSize! + 2);
                _textStyle = _textStyle!.copyWith(fontSize: fontSize);
              });
            },
          ),
          const Spacer(),
          IconButton(
            icon: Icon(
              Icons.copy,
              color: foregroundColor,
            ),
            onPressed: () {
              Clipboard.setData(ClipboardData(text: widget.source));
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Copied to clipboard'),
                ),
              );
            },
          ),
          const SizedBox(width: 10),
        ],
      ),
    );
  }
}

const _defaultTheme = {
  'comment': TextStyle(color: Color(0xffd4d0ab)),
  'quote': TextStyle(color: Color(0xffd4d0ab)),
  'variable': TextStyle(color: Color(0xffffa07a)),
  'template-variable': TextStyle(color: Color(0xffffa07a)),
  'tag': TextStyle(color: Color(0xffffa07a)),
  'name': TextStyle(color: Color(0xffffa07a)),
  'selector-id': TextStyle(color: Color(0xffffa07a)),
  'selector-class': TextStyle(color: Color(0xffffa07a)),
  'regexp': TextStyle(color: Color(0xffffa07a)),
  'deletion': TextStyle(color: Color(0xffffa07a)),
  'number': TextStyle(color: Color(0xfff5ab35)),
  'built_in': TextStyle(color: Color(0xfff5ab35)),
  'builtin-name': TextStyle(color: Color(0xfff5ab35)),
  'literal': TextStyle(color: Color(0xfff5ab35)),
  'type': TextStyle(color: Color(0xfff5ab35)),
  'params': TextStyle(color: Color(0xfff5ab35)),
  'meta': TextStyle(color: Color(0xfff5ab35)),
  'link': TextStyle(color: Color(0xfff5ab35)),
  'attribute': TextStyle(color: Color(0xffffd700)),
  'string': TextStyle(color: Color(0xffabe338)),
  'symbol': TextStyle(color: Color(0xffabe338)),
  'bullet': TextStyle(color: Color(0xffabe338)),
  'addition': TextStyle(color: Color(0xffabe338)),
  'title': TextStyle(color: Color(0xff00e0e0)),
  'section': TextStyle(color: Color(0xff00e0e0)),
  'keyword': TextStyle(color: Color(0xffdcc6e0)),
  'selector-tag': TextStyle(color: Color(0xffdcc6e0)),
  'root': TextStyle(backgroundColor: Colors.black, color: Color(0xfff8f8f2)),
  'emphasis': TextStyle(fontStyle: FontStyle.italic),
  'strong': TextStyle(fontWeight: FontWeight.bold),
};
