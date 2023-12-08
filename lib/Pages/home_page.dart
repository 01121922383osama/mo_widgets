import 'package:flutter/material.dart';
import 'package:mo_widgets/Widgets/dropdown_button.dart';
import 'package:mo_widgets/Widgets/image_picker_widgets.dart';

import '../Widgets/flush_bar_page.dart';
import '../Widgets/images_sliders_page.dart';
import '../Widgets/widget_check_box_page.dart';
import '../Widgets/widget_radio_button_page.dart';
import '../Widgets/widgets_switch_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Widgets'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        itemCount: nameOfPages.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                child: Text('${index + 1}'),
              ),
              trailing: const Icon(Icons.widgets),
              title: Text(nameOfPages[index]),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => widgetsPage[index]));
              },
            ),
          );
        },
      ),
    );
  }
}

List<String> nameOfPages = [
  'Flushbar',
  'Image Slider (Carousel)',
  'Radio Button',
  'CheckBox',
  'Switch',
  'DropdownButton',
  'Image Picker (New)',
  // 'Color Picker',
  // 'Percent Indicator',
  // 'ListWheelScrollView',
  // 'TextFormField',
  // 'Splash Screen',
  // 'Page View ',
  // 'Google Nav Bar',
];
List<Widget> widgetsPage = [
  const FlushbarPage(),
  const ImagesSliderPage(),
  const WidgetRadioButtonPage(),
  const WidgetCheckBoxPage(),
  const WidgetsSwitchPage(),
  const CustomDropdownButtonWidget(),
  const ImagePickerWidget(),
];
