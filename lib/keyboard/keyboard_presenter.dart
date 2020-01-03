
import 'keyboard_model.dart';
import '../event_forwarder.dart';

class KeyboardPresenter {

  KeyboardModel _model;
  EventForwarder<KeyboardNoteSelected> onKeySelected;

  KeyboardPresenter(this._model) {
    onKeySelected = EventForwarder(_model.events);
  }

  void pressKey(int note) {
    _model.setNote(note, true);
  }

  void releaseKey(int note) {
    _model.setNote(note, false);
  }

  void setKey(int note, bool on) {
    _model.setNote(note, on);
  }

  void toggleKey(int note) {
    _model.toggleNote(note);
  }
}
