import 'package:flutter/material.dart';
import 'package:nomad_services/pages/profile_page.dart';
import 'package:nomad_services/pages/service_listing.dart';
import 'package:nomad_services/utils/colors.dart';
import 'package:nomad_services/utils/dimensions.dart';

class ServicesPage extends StatefulWidget {
  const ServicesPage({Key? key}) : super(key: key);

  @override
  State<ServicesPage> createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _searchService(String value) {
    print(value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimensions.radius30),
            color: AppColors.textColor),
        padding: EdgeInsets.all(Dimensions.height15),
        child: const Icon(
          Icons.add,
          color: AppColors.white,
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(
            left: Dimensions.width20,
            right: Dimensions.width20,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'NOMAD Services',
                    style: TextStyle(
                        color: AppColors.textColor,
                        fontWeight: FontWeight.w600,
                        fontSize: Dimensions.font26),
                  ),
                  Icon(
                    Icons.hdr_weak,
                    size: Dimensions.iconSize24,
                  )
                ],
              ),
              SizedBox(
                height: Dimensions.height45,
              ),
              TextField(
                controller: _controller,
                onChanged: _searchService,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Search Services',
                ),
              ),
              SizedBox(
                height: Dimensions.height45,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Your Services',
                        style: TextStyle(
                            color: AppColors.textColor,
                            fontSize: Dimensions.font16,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(width: Dimensions.width10),
                      Icon(
                        Icons.keyboard_arrow_down_rounded,
                        size: Dimensions.iconSize24,
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.view_headline,
                        size: Dimensions.iconSize28,
                        color: AppColors.textColor,
                      ),
                      SizedBox(width: Dimensions.width10),
                      Icon(
                        Icons.grid_view_rounded,
                        size: Dimensions.iconSize28,
                        color: AppColors.textColor,
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: Dimensions.height45,
              ),
              ServiceList()
            ],
          ),
          // Services listing
        ),
      ),
    );
  }
}
