part of '../../main.dart';

class _TextFormFieldRoundRect extends StatelessWidget {
  final Widget child;
  const _TextFormFieldRoundRect({Key? key, required this.child})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    //*
    final size = MediaQuery.of(context).size;

    //*
    return Container(
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(.2),
        borderRadius: BorderRadius.circular(_defaultPadding),
      ),
      child: child,
    );
  }
}
