import 'package:flutter/material.dart';
import 'package:pluto_grid/pluto_grid.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Grid(),
    );
  }
}

class Grid extends StatelessWidget {
  const Grid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PlutoGrid(
        columns: [
          PlutoColumn(
              title: 'quotaNumber',
              field: 'quotaNumber',
              type: PlutoColumnType.text()),
          PlutoColumn(
              title: 'vendorNumber',
              field: 'vendorNumber',
              type: PlutoColumnType.text()),
          PlutoColumn(
              title: 'breeder', field: 'name', type: PlutoColumnType.text()),
          PlutoColumn(
              title: 'origin', field: 'origin', type: PlutoColumnType.text()),
          PlutoColumn(
              title: 'cycleType',
              field: 'cycleType',
              type: PlutoColumnType.text()),
          PlutoColumn(
              title: 'tolerance',
              field: 'cycleTolerance',
              type: PlutoColumnType.number()),
          PlutoColumn(
              title: 'nbBuilding',
              field: 'henhousesCount',
              type: PlutoColumnType.number()),
          PlutoColumn(
              title: 'city', field: 'city', type: PlutoColumnType.text()),
          PlutoColumn(
              title: 'phone', field: 'phone1', type: PlutoColumnType.text()),
          PlutoColumn(
              title: 'phone', field: 'phone2', type: PlutoColumnType.text()),
          PlutoColumn(
              title: 'totalCapacity',
              field: 'totalCapacity',
              type: PlutoColumnType.number()),
          PlutoColumn(
              title: 'status', field: 'isActive', type: PlutoColumnType.text()),
        ],
        rows: [
          PlutoRow(
            key: UniqueKey(),
            cells: {
              'id': PlutoCell(value: 2),
              'quotaNumber': PlutoCell(value: 'quotaNumber'),
              'vendorNumber': PlutoCell(value: 'vendorNumber'),
              'name': PlutoCell(value: 'companyName'),
              'origin': PlutoCell(value: 'origin.code'),
              'cycleType': PlutoCell(value: 'origin'),
              'cycleTolerance': PlutoCell(value: 'cycleTolerance'),
              'henhousesCount': PlutoCell(value: 'henhousesCount'),
              'city': PlutoCell(value: 'city'),
              'phone1': PlutoCell(value: 'phone1'),
              'phone2': PlutoCell(value: 'phone2'),
              'totalCapacity': PlutoCell(value: 'henhousesTotalCapacity'),
              'isActive': PlutoCell(value: 'active'),
            },
          ),
        ],
        mode: PlutoGridMode.select,
      ),
    );
  }
}
