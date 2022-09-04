## covid19_app_ui :tada:
A new Flutter project.

## Project Look In Real Device: :tada:
<img src='https://github.com/DeveloperOrpon/Covid-19-UI-App/blob/main/covid19.gif?raw=true' width="300px" height="300px" alt='Video Prohressbar'/>

## Importent Note : :tada:
# ChangeNotifier in Flutter : :tada:
1. First Make Data Class That Change <br>
class strong>ClassName</strong> with ChangeNotifier {<br>
  ValueNotifier<bool> <strong>VariableName</strong> = ValueNotifier(<strong>Value</strong>);<br>
}<br>
// <strong>Object Of This Class</strong>
ValueNavbar valueNavbar = ValueNavbar();
2. In Parent Class Use Widget:
ValueListenableBuilder(<br>
// define which value is change <strong>valueListenable: valueNavbar.enable,</strong>)<br>
Container(color: Colors.transparent),<br>
value: selectedValue,<br>
items: dropdownItems, //list Items<br>
onChanged: ((value) {}),<br>
)<br>

# CarouselSlider in Flutter : :tada:
1. Use dependencies (carousel_slider: ^4.1.1)
https://pub.dev/packages/carousel_slider :tada: Dependencie Git Link

# DraggableScrollableSheet in Flutter : :tada:

# Chart in Flutter : :tada:
https://pub.dev/packages/charts_painter :tada: Dependencie Git Link
