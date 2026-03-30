import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/resources/colors_app.dart';
import '../../../../core/resources/styles.dart';
@RoutePage()
class CarComparisonScreen extends StatelessWidget {
  final dynamic car1;
  final dynamic car2;

  const CarComparisonScreen({
    super.key,
    required this.car1,
    required this.car2,
  });

  dynamic _getValue(dynamic obj, String key) {
    try {
      return obj.toJson()[key];
    } catch (e) {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Compare Cars', style: StyleApp.text18BlueDark),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  _buildHeaderSection(),
                  _buildComparisonSection(
                    title: 'BASIC INFO',
                    icon: Icons.info_outline,
                    rows: [
                      _buildComparisonRow('MAKE', car1.make ?? 'N/A', car2.make ?? 'N/A'),
                      _buildComparisonRow('MODEL', car1.model ?? 'N/A', car2.model ?? 'N/A'),
                      _buildComparisonRow('YEAR', '${car1.year ?? 'N/A'}', '${car2.year ?? 'N/A'}'),
                    ],
                  ),
                  _buildComparisonSection(
                    title: 'TECHNICAL SPECS',
                    icon: Icons.settings,
                    rows: [
                      _buildComparisonRow('ENGINE', _getValue(car1, 'engine') ?? 'N/A', _getValue(car2, 'engine') ?? 'N/A'),
                      _buildComparisonRow('TYPE', _getValue(car1, 'type') ?? 'N/A', _getValue(car2, 'type') ?? 'N/A'),
                      _buildComparisonRow('ECONOMY', _getValue(car1, 'highwayMpg') ?? 'N/A', _getValue(car2, 'highwayMpg') ?? 'N/A'),
                    ],
                  ),
                ],
              ),
            ),
          ),
          _buildBottomActionButtons(),
        ],
      ),
    );
  }

  Widget _buildHeaderSection() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 16.w),
      child: Row(
        children: [
          Expanded(child: _buildCarHeaderItem(car1)),
          SizedBox(width: 16.w),
          Expanded(child: _buildCarHeaderItem(car2)),
        ],
      ),
    );
  }

  Widget _buildCarHeaderItem(dynamic car) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12.r),
          child: CachedNetworkImage(
            imageUrl: car.imageUrl ?? '',
            height: 100.h,
            width: double.infinity,
            fit: BoxFit.cover,
            errorWidget: (context, url, error) => Container(color: Colors.grey.shade200, child: Icon(Icons.directions_car)),
          ),
        ),
        SizedBox(height: 8.h),
        Text('${car.year ?? ''} ${car.make ?? ''}', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.sp)),
        Text('SAR ${car.msrp ?? 0}', style: TextStyle(color: ColorsApp.lightgreen, fontSize: 13.sp, fontWeight: FontWeight.w600)),
      ],
    );
  }

  Widget _buildComparisonSection({required String title, required IconData icon, required List<Widget> rows}) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(12.r),
          color: Colors.grey.shade50,
          child: Row(
            children: [
              Icon(icon, size: 18.sp, color: Colors.cyan),
              SizedBox(width: 8.w),
              Text(title, style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        ...rows,
      ],
    );
  }

  Widget _buildComparisonRow(String label, String val1, String val2) {
    return Row(
      children: [
        Expanded(child: _buildValueCell(label, val1)),
        Container(width: 1, height: 50.h, color: Colors.grey.shade100),
        Expanded(child: _buildValueCell(label, val2)),
      ],
    );
  }

  Widget _buildValueCell(String label, String value) {
    return Container(
      padding: EdgeInsets.all(10.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: TextStyle(fontSize: 10.sp, color: Colors.grey)),
          Text(value, style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  Widget _buildBottomActionButtons() {
    return Container(
      padding: EdgeInsets.all(16.r),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(backgroundColor: Colors.cyan, minimumSize: Size(double.infinity, 45.h)),
        child: Text('Get Best Quote', style: TextStyle(color: Colors.white)),
      ),
    );
  }
}