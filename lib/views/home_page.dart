import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:search_cep_api/services/via_cep_service.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _searchCepController = TextEditingController();
  bool _loading = false;
  bool _enableFiest = true;
  String _result;

  @override
  void dispose() {
    super.dispose();
    _searchCepController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Consulta CEP'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: <Widget>[
          _buildSearchCepTextField(),
          _buildSearchCepButton(),
          _buildResultForm()
        ],
      ),
    );
  }
}

Widget _buildSearchCepTextField() {
  return TextField(
    autofocus: true,
    keyboardType: TextInputType.number,
    textInputAction: TextInputAction.done,
    decoration: InputDecoration(labelText: 'CEP'),
    controller: _searchCepController,
    enabled: _enableField,
  );
}

Widget _buildSearchCepButton() {
  return Padding(
    padding: const EdgeInsets.only(top: 20.0),
    child: RaisedButton(
      onPressed: _searchCep,
      child: _loading ? _circularLoading() : Text('Consiltar'),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    ),
  );
}

void _searching(bool enable) {
  setState(() {
    _result = enable ? '' : _result;
    _loading = enable;
    _enableField = !enable;
  });
}

Widget _circularLoading() {
  return Container(
    height: 15.0,
    width: 15.0,
    child: CircularProgressIndicator(),
  );
}
