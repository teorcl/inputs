import 'package:flutter/material.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  late DateTime _initialDate, _selectedDate;

  @override
  void initState() {
    debugPrint('Me llamaron');

    super.initState();
    _initialDate = DateTime(1992, 5, 5);
    _selectedDate = _initialDate;

    while (!_selectableDayPredicate(_initialDate)) {
      _initialDate = _initialDate.add(const Duration(days: 1));
      _selectedDate = _initialDate;
    }
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('Me reconstrui con la fecha: $_selectedDate');

    return Scaffold(
      appBar: AppBar(
        title: const Text('Calendar'),
        actions: [
          IconButton(
            icon: const Icon(Icons.watch),
            onPressed: selectTime,
          ),
          IconButton(
            icon: const Icon(Icons.calendar_month),
            onPressed: selectDate,
          ),
          IconButton(
            icon: const Icon(Icons.save),
            onPressed: _selectedDate != _initialDate
                ? () {
                    debugPrint('Selected date: $_selectedDate');
                    _initialDate = _selectedDate;
                    Navigator.of(context).pop(_selectedDate);
                  }
                : null,
          ),
        ],
      ),
      body: SafeArea(
        child: CalendarDatePicker(
          key: ValueKey(
              _selectedDate), // Esto para que se reconstruya cada que cambie la fecha
          initialDate: _selectedDate,
          firstDate: DateTime(1900),
          lastDate: DateTime.now(),
          //initialCalendarMode: DatePickerMode.year,
          onDateChanged: (date) {
            debugPrint('Date selected 🧠🧠🧠🧠🧠🧠: $date');
            setState(() {
              _selectedDate = date;
            });
          },
          selectableDayPredicate: _selectableDayPredicate,
        ),
      ),
    );
  }

  bool _selectableDayPredicate(DateTime date) {
    return date.weekday != 6 && date.weekday != 7;
  }

  void selectDate() async {
    final date = await showDatePicker(
      context: context,
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
      initialDate: _selectedDate,
    );

    if (date != null) {
      setState(() {
        _selectedDate = date;
      });
    }
  }

  Future<void> selectTime() async {
    final time = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.fromDateTime(_selectedDate),
        builder: (_, child) {
          return PopScope(
            canPop: false,
            child: child!,
            onPopInvokedWithResult: (result, _) {
              debugPrint('Se cerro el time picker con: $result');
            },
          );
        });
    if (time != null) {
      debugPrint('Time selected XXXXXX: $time');
    }
  }
}
