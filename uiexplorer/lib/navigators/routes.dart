import '../includes.dart';

List<SliceExample> _sliceExamples = [
  SliceAlertDialog(),
  SliceAlign(),
  SliceAppBar(),
  SliceBackdropFilter(),
  SliceBottomAppBar(),
  SliceBottomNavigationBar(),
  SliceBottomSheet(),
  SliceButtonBar(),
  SliceCard(),
  SliceCenter(),
  SliceCheckbox(),
  SliceCheckboxListTile(),
  SliceChip(),
  SliceCircleAvatar(),
  SliceColumn(),
  SliceCustomPaint(),
  SliceContainer(),
  SliceCupertinoActionSheet(),
  SliceCupertinoActivityIndicator(),
  SliceCupertinoButton(),
  SliceDataTable(),
  SliceDatePicker(),
  SliceDialog(),
  SliceDivider(),
  SliceDrawer(),
  SliceDropdown(),
  SliceFlatButton(),
  SliceFloatingActionButton(),
  SliceFlutterLogo(),
  SliceGridTile(),
  SliceGridTileBar(),
  SliceIcon(),
  SliceIconButton(),
  SliceInkWell(),
  SliceListTile(),
  SlicePopupMenuButton(),
  SliceProgressIndicator(),
  SliceRadio(),
  SliceRadioListTile(),
  SliceRaisedButton(),
  SliceRefreshIndicator(),
  SliceRichText(),
  SliceRow(),
  SliceSafeArea(),
  SliceScaffold(),
  SliceSimpleDialog(),
  SliceSizedBox(),
  SliceSwitch(),
  SliceText(),
  SliceTextField(),
  SliceTextFormField(),
  SliceTextSelection(),
  SliceTransform(),
  SliceWrap(),
];

class _PageExamplePageRoute {}
class _SliceExamplePageRoute {
  SliceExample example;

  String routeName;
  WidgetBuilder buildRoute;

  _SliceExamplePageRoute(this.example) {
    this.routeName = this.example.name ?? this.example.runtimeType.toString();
    this.buildRoute = (_) => Preview4SliceExamplePage(this.example);
  }
}

List<_PageExamplePageRoute> _pageExampleRoutes = [];
List<_SliceExamplePageRoute> _sliceExampleRoutes = []
  ..addAll(_sliceExamples.map((v) => _SliceExamplePageRoute(v)));

List<dynamic> routes = []
  ..addAll(_pageExampleRoutes)
  ..addAll(_sliceExampleRoutes);