import 'package:flutter/material.dart';
import '../../../../core/resources/colors_app.dart';
import '../../../../core/resources/styles.dart';
import '../../data/models/fliterd_slider.dart';
import '../bloc/home_bloc.dart';
import '../bloc/home_event.dart';

class FilterBottomShet extends StatefulWidget {
  final HomeBloc homeBloc;

  const FilterBottomShet({super.key, required this.homeBloc});

  @override
  State<FilterBottomShet> createState() => _FilterBottomShetState();
}

class _FilterBottomShetState extends State<FilterBottomShet> {

  RangeValues currentPriceRange = const RangeValues(45000, 350000);
  double currentMileage = 80000;
  String selectedTransmission = "Automatic";
  int selectedYearFrom = 2020;
  int selectedYearTo = 2024;
  List<int> years = List.generate(30, (index) => 2026 - index);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.close)),
              Text("Filters", style: StyleApp.text24Black),
              Text("Reset All",
                  style: StyleApp.text12BlueDark
                      .copyWith(color: ColorsApp.lightgreen)),
            ],
          ),
          const SizedBox(height: 25),


          Text("Price Range",
              style: StyleApp.text18BlueDark
                  .copyWith(color: Colors.black, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              activeTrackColor: ColorsApp.lightgreen,
              inactiveTrackColor: ColorsApp.lightgreen.withOpacity(0.2),
              thumbColor: Colors.white,
              rangeThumbShape: const RoundRangeSliderThumbShape(
                  enabledThumbRadius: 10, elevation: 5),
            ),
            child: RangeSlider(
              values: currentPriceRange,
              min: 0,
              max: 500000,
              onChanged: (values) {
                setState(() => currentPriceRange = values);
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("SAR ${currentPriceRange.start.round() / 1000}k",
                  style: TextStyle(
                      color: ColorsApp.lightgreen, fontWeight: FontWeight.bold)),
              Text("SAR ${currentPriceRange.end.round() / 1000}k+",
                  style: TextStyle(
                      color: ColorsApp.lightgreen, fontWeight: FontWeight.bold)),
            ],
          ),
          const SizedBox(height: 25),


          const Text("Year",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 15),
          Row(
            children: [
              Expanded(
                child: yearDropdown("From", selectedYearFrom, (val) {
                  setState(() => selectedYearFrom = val!);
                }),
              ),
              const SizedBox(width: 15),
              Expanded(
                child: yearDropdown("To", selectedYearTo, (val) {
                  setState(() => selectedYearTo = val!);
                }),
              ),
            ],
          ),
          const SizedBox(height: 25),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Mileage (km)",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Text("Up to ${currentMileage.round()} km",
                  style: TextStyle(color: ColorsApp.lightgreen)),
            ],
          ),
          Slider(
            value: currentMileage,
            min: 0,
            max: 200000,
            activeColor: ColorsApp.lightgreen,
            onChanged: (val) => setState(() => currentMileage = val),
          ),
          const SizedBox(height: 25),


          const Text("Transmission",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 15),
          Row(
            children: [
              transmissionOption("Automatic"),
              const SizedBox(width: 15),
              transmissionOption("Manual"),
            ],
          ),
          const SizedBox(height: 30),


          SizedBox(
            width: double.infinity,
            height: 55,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: ColorsApp.lightgreen,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
              ),
              onPressed: () {
                final myFilters = CarFilters(
                  fromYear: selectedYearFrom,
                  toYear: selectedYearTo,
                  minPrice: currentPriceRange.start.round().toDouble(),
                  maxPrice: currentPriceRange.end.round().toDouble(),
                  transmission: selectedTransmission,
                );

                widget.homeBloc.add(getSpce(myFilters));
                Navigator.pop(context);
              },
              child: const Text("Show Results →",
                  style: TextStyle(color: Colors.white, fontSize: 18)),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget yearDropdown(String label, int value, ValueChanged<int?> onChanged) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: ColorsApp.secondaryGrey.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<int>(
          value: value,
          icon: const Icon(Icons.keyboard_arrow_down),
          items: years.map((int year) {
            return DropdownMenuItem<int>(
              value: year,
              child: Text("$label $year",
                  style: const TextStyle(fontWeight: FontWeight.bold)),
            );
          }).toList(),
          onChanged: onChanged,
        ),
      ),
    );
  }


  Widget transmissionOption(String type) {
    bool isSelected = selectedTransmission == type;
    return Expanded(
      child: GestureDetector(
        onTap: () => setState(() => selectedTransmission = type),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            border: Border.all(
                color: isSelected ? ColorsApp.lightgreen : ColorsApp.secondaryGrey),
            color: isSelected
                ? ColorsApp.lightgreen.withOpacity(0.05)
                : Colors.transparent,
          ),
          child: Center(
              child: Text(type,
                  style: TextStyle(
                      color: isSelected
                          ? ColorsApp.lightgreen
                          : ColorsApp.secondaryGrey,
                      fontWeight: FontWeight.bold))),
        ),
      ),
    );
  }
}