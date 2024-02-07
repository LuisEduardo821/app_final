import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movil_wrc_app/providers/calendar_provider.dart';
import 'package:movil_wrc_app/widgets/tile_calendar.dart';

class CalendarPage extends ConsumerWidget {
  static const name = 'calendar';

  const CalendarPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //cometario 1: final calendar = ref.watch(getCalendar);
    final calendarProv = ref.watch(calendarProvider);
    return const CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("Calendar"),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 50),
        child: SingleChildScrollView(
          child: Center(
            // comentario 2: implementar la lista de carreras con el widget TileCalendar
            // child: calendarProv.value.content.((element) => TileCalendar(
            //   imgUrlLocation: element.images, 
            //   imgUrlFlagCountry: element.championshipLogo, 
            //   nameRally: element.rallyId, 
            //   nameCountry: element.country.name, 
            //   startDate: element.startDate, 
            //   endDate: element.endDate)),
          ),
        ),
      ),
    );
  }
}
