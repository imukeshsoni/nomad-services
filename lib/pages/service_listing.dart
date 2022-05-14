import 'package:flutter/material.dart';
import 'package:nomad_services/models/service.dart';
import 'package:nomad_services/utils/colors.dart';
import 'package:nomad_services/utils/dimensions.dart';
import 'package:nomad_services/widgets/service_widget.dart';

class ServiceList extends StatefulWidget {
  const ServiceList({Key? key}) : super(key: key);

  @override
  State<ServiceList> createState() => _ServiceListState();
}

class _ServiceListState extends State<ServiceList> {
  List<Object> serviceList = [];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Service(
                // serviceDetailsArr: [
                //   new ServiceDetail(name: 'Financials', id: '12343'),
                //   new ServiceDetail(name: 'Financials', id: '12343'),
                //   new ServiceDetail(name: 'Financials', id: '12343'),
                // ],
                ),
          ],
        ),
      ),
    );
  }
}
