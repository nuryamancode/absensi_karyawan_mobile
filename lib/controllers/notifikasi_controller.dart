import 'package:get/get.dart';

class NotifikasiController extends GetxController {

  final List<HistoryItem> historyItems = [
    HistoryItem(
      title: 'Title 1',
      date: '10 Februari 2024',
      jam: '10:00',
    ),
    HistoryItem(
      title: 'Title 2',
      date: '11 Februari 2024',
      jam: '11:00',
    ),
    HistoryItem(
      title: 'Title 3',
      date: '12 Februari 2024',
      jam: '12:00',
    ),
    HistoryItem(
      title: 'Title 3',
      date: '12 Februari 2024',
      jam: '12:00',
    ),
    HistoryItem(
      title: 'Title 3',
      date: '12 Februari 2024',
      jam: '12:00',
    ),
    HistoryItem(
      title: 'Title 3',
      date: '12 Februari 2024',
      jam: '12:00',
    ),
    HistoryItem(
      title: 'Title 3',
      date: '12 Februari 2024',
      jam: '12:00',
    ),
    HistoryItem(
      title: 'Title 3',
      date: '12 Februari 2024',
      jam: '12:00',
    ),
    HistoryItem(
      title: 'Title 3',
      date: '12 Februari 2024',
      jam: '12:00',
    ),
    HistoryItem(
      title: 'Title 3',
      date: '12 Februari 2024',
      jam: '12:00',
    ),
    HistoryItem(
      title: 'Title 3',
      date: '12 Februari 2024',
      jam: '12:00',
    ),
    HistoryItem(
      title: 'Title 3',
      date: '12 Februari 2024',
      jam: '12:00',
    ),
    HistoryItem(
      title: 'Title 3',
      date: '12 Februari 2024',
      jam: '12:00',
    ),
  ];

  @override
  void onInit() {
    super.onInit();
  }
}


class HistoryItem {
  final String title;
  final String date;
  final String jam;

  HistoryItem({
    required this.title,
    required this.date,
    required this.jam,
  });
}