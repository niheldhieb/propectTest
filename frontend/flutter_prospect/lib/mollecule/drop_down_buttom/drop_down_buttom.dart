import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_prospect/utils/app-fonts/app_fonts.dart';
import 'package:flutter_prospect/utils/app_color/appcolors.dart';



class CustomDropdownButton extends StatelessWidget {
  final List<String> items;
  final String? currentItem;
  final void Function(String?)? onSelected;
  final Icon? icon;
  final Offset? offset;
  final double? width;
  final Color menuBackgroundColor;
  final Color selectedItemColor;

  const CustomDropdownButton({
    super.key,
    required this.items,
    this.currentItem,
    this.onSelected,
    this.icon,
    this.offset,
    this.width = 500,
    this.menuBackgroundColor =  Colors.blue,
    this.selectedItemColor = AppColor.kPrimaryColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:width,
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
           value: currentItem, 
          items: items.map((String choice) {
            final isSelected = currentItem != null && choice == currentItem;
            return DropdownMenuItem<String>(
              value: choice,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: isSelected ? selectedItemColor : menuBackgroundColor,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    child: Align(child: Text(choice, style: AppFonts.x14Regular.copyWith(color: isSelected ? Colors.grey : Colors.black))),
                  ),
                ),
              ),
            );
          }).toList(),
          onChanged: onSelected,
        
        ),
      ),
    );
  }
}
