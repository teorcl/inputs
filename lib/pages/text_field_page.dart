import 'package:flutter/material.dart';
import 'package:inputs/models/country_model.dart';

import '../constants/countries.dart';

class TextFieldPage extends StatefulWidget {
  const TextFieldPage({super.key});

  @override
  State<TextFieldPage> createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {
  late final List<CountryModel> _countries;
  String searchText = '';
  final _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    late final List<CountryModel> filteredCountries;
    if (searchText.isNotEmpty) {
      filteredCountries = _countries
          .where((country) =>
              country.name.toLowerCase().contains(searchText.toLowerCase()))
          .toList();
    } else {
      filteredCountries = _countries;
    }

    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: _textEditingController,
          onChanged: (value) {
            setState(() {
              searchText = value;
            });
          },
          decoration: InputDecoration(
            label: const Text('Buscar país...'),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 10,
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.red,
              ),
            ),
            hintText: 'Search country',
            border: InputBorder.none,
            prefixIcon: const Icon(Icons.search),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black54,
              ),
            ),
            suffixIcon: IconButton(
              onPressed: () {
                _textEditingController.clear();
                searchText = '';
                // setState(() {
                // });
                FocusScope.of(context)
                    .unfocus(); // Esta linea forza a que se vuelva a renderizar la visata, puesto que cada vez que se oculta o aparece el teclado la ui se renderiza
              },
              icon: const Icon(Icons.clear),
            ),
          ),
        ),
      ),
      body: GestureDetector(
        child: ListView.builder(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          itemBuilder: (_, index) {
            final country = filteredCountries[index];

            return ListTile(
              title: Text(country.name),
            );
          },
          itemCount: filteredCountries.length,
        ),
        onTap: () {
          FocusScope.of(context).unfocus();
        },
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _countries = countries.map((item) => CountryModel.fromJson(item)).toList();
    // _textEditingController.addListener(() {
    //   setState(() {
    //     searchText = _textEditingController.text;
    //   });
    // });
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }
}
