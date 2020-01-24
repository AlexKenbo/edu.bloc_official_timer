import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class TimerEvent extends Equatable {
  TimerEvent([List props = const <dynamic>[]]) : super(props);
}

// ! Генерируем в интерфейсе следующие события:
// * Start - сообщает TimerBloc, что таймер должен быть запущен.
class Start extends TimerEvent {
  final int duration;

  Start({@required this.duration}) : super([duration]);
  @override
  String toString() => "Start { duration: $duration }";
  
}

// * Пауза - сообщает TimerBloc, что таймер должен быть приостановлен.
class Pause extends TimerEvent {
  @override
  String toString() => "Pause";
  
}

// * Возобновить - сообщает TimerBloc, что таймер должен быть возобновлен.
class Resume extends TimerEvent {
  @override
  String toString() => "Resume";
}

// * Сброс - сообщает TimerBloc, что таймер должен быть сброшен в исходное состояние.
class Reset extends TimerEvent {
  @override
  String toString() => "Reset";
}

// * Тик - информирует TimerBloc о том, что тик произошел и что ему необходимо соответствующим образом обновить свое состояние.
class Tick extends TimerEvent {
  final int duration;

  Tick({@required this.duration}) : super([duration]);

  @override
  String toString() => "Tick { duration: $duration }";
}