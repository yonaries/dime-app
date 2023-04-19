import 'package:flutter/material.dart';

import '../../core/common/keypad.dart';

class WithdrawView extends StatefulWidget {
  WithdrawView({super.key});
  TextEditingController _cnt = TextEditingController(text: "0");
  @override
  State<WithdrawView> createState() => _WithdrawViewState(KeyPad(_cnt), _cnt);
}

class _WithdrawViewState extends State<WithdrawView> {
  static const _textStyle = TextStyle(fontSize: 30, color: Colors.white);
  final TextEditingController _cnt;
  _WithdrawViewState(this._keypad, this._cnt);
  String _ammt = "0";
  KeyPad _keypad;

  @override
  void initState() {
    super.initState();
    _cnt.addListener(() {
      setState(() {
        _ammt = _cnt.text;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.background,
          title: const Text(
            "Withdraw",
          ),
          centerTitle: true,
        ),
        body: Builder(builder: (context) {
          return Column(
            children: [
              const Expanded(
                  flex: 1,
                  child: SizedBox(
                    height: 1,
                  )),
              Expanded(
                  flex: 2,
                  child: Text(
                    _ammt,
                    style: _textStyle,
                  )),
              const Expanded(
                  flex: 1,
                  child: SizedBox(
                    height: 1,
                  )),
              Expanded(flex: 17, child: _keypad),
              const Expanded(
                  flex: 1,
                  child: SizedBox(
                    height: 1,
                  )),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.secondary,
                    minimumSize: Size(size.width * 0.9, 50)),
                child: const Text(
                  "Withdraw",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
              const Expanded(
                  flex: 1,
                  child: SizedBox(
                    height: 1,
                  )),
            ],
          );
        }));
    ;
  }
}
