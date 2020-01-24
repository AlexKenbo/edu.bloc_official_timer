import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class TimerState extends Equatable {
  final int duration;
  TimerState(this.duration, [List props = const <dynamic>[]]) : super([duration]..addAll(props));
}

// ! Состояния которые будут отраженны в UI
// * Готов - готов начать отсчет с указанной продолжительности
// * если состояние «готово», пользователь сможет запустить таймер.
class Ready extends TimerState {
  Ready(int duration) : super(duration);

  @override
  String toString() => 'Ready { duration: $duration }';
}

// * Приостановлено - приостановлено на некоторое оставшееся время
// * если состояние «приостановлено», пользователь сможет возобновить таймер и сбросить таймер.
class Paused extends TimerState {
  Paused(int duration) : super(duration);

  @override
  String toString() => 'Paused { duration: $duration }';
}

// * Бег - активный отсчет от указанной продолжительности
// * если состояние «работает», пользователь сможет приостановить и сбросить таймер, а также увидеть оставшуюся продолжительность.
class Running extends TimerState {
  Running(int duration) : super(duration);

  @override
  String toString() => 'Running { duration: $duration }';
}

// * Завершено - завершено с оставшейся продолжительностью 0
// * если состояние «закончено», пользователь сможет сбросить таймер.
class Finished extends TimerState {
  Finished() : super(0);

  @override
  String toString() => 'Finished';
}

