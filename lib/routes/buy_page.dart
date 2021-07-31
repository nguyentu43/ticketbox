import 'package:flutter/material.dart';
import 'package:smart_select/smart_select.dart';

class BuyPage extends StatefulWidget {
  BuyPage({Key key}) : super(key: key);

  @override
  _BuyPageState createState() => _BuyPageState();
}

class _BuyPageState extends State<BuyPage> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Stepper(
        currentStep: _index,
        onStepCancel: () {
          if (_index > 0) {
            setState(() {
              _index -= 1;
            });
          }
        },
        onStepContinue: () {
          if (_index <= 0) {
            setState(() {
              _index += 1;
            });
          }
        },
        onStepTapped: (int index) {
          setState(() {
            _index = index;
          });
        },
        steps: <Step>[
          Step(
            title: const Text('1. Choose ticket',
                style: TextStyle(fontSize: 20.0)),
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Theater', style: TextStyle(fontSize: 18.0)),
                SmartSelect.single(
                  modalTitle: 'Choose Theater',
                  value: 'Theater 1',
                  onChange: (_) {},
                  choiceItems: List.generate(
                      5,
                      (index) => S2Choice(
                          value: 'Theater ${index + 1}',
                          title: 'Theater ${index + 1}')),
                ),
                Text('Room', style: TextStyle(fontSize: 18.0)),
                SmartSelect.single(
                  modalTitle: 'Choose room',
                  value: 'Room 1',
                  onChange: (_) {},
                  choiceItems: List.generate(
                      5,
                      (index) => S2Choice(
                          value: 'Room ${index + 1}',
                          title: 'Room ${index + 1}')),
                ),
                Text('Time', style: TextStyle(fontSize: 18.0)),
                SmartSelect.single(
                  modalTitle: 'Choose time',
                  value: '8h30',
                  onChange: (_) {},
                  choiceItems: List.generate(
                      5,
                      (index) => S2Choice(
                          value: '${index + 8}:30AM',
                          title: '${index + 8}:30:AM')),
                ),
                Text('Seat', style: TextStyle(fontSize: 18.0)),
                SizedBox(
                  height: 10.0,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    children: [
                      Row(
                        children: List.generate(
                            5,
                            (index) => Container(
                                margin: EdgeInsets.all(2.0),
                                decoration: BoxDecoration(
                                    border: Border.all(width: 1.0),
                                    borderRadius: BorderRadius.circular(5.0)),
                                height: 40,
                                width: 40,
                                child: Center(child: Text('A${index + 1}')))),
                      ),
                      Row(
                        children: List.generate(
                            8,
                            (index) => Container(
                                margin: EdgeInsets.all(2.0),
                                decoration: BoxDecoration(
                                    border: Border.all(width: 1.0),
                                    borderRadius: BorderRadius.circular(5.0)),
                                height: 40,
                                width: 40,
                                child: Center(child: Text('B${index + 1}')))),
                      ),
                      Row(
                        children: List.generate(
                            10,
                            (index) => Container(
                                margin: EdgeInsets.all(2.0),
                                decoration: BoxDecoration(
                                    border: Border.all(width: 1.0),
                                    borderRadius: BorderRadius.circular(5.0)),
                                height: 40,
                                width: 40,
                                child: Center(child: Text('C${index + 1}')))),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const Step(
            title: Text('2. Checkout'),
            content: Text('Content for Step 2'),
          ),
        ],
      )),
    );
  }
}
