import 'package:rxdart/rxdart.dart';

// An in-memory store backed by BehaviorSubject that can be used to
// store the data for all the fake repositories in the app.
class InMemoryStore<T> {
  // //! comes from outside and recreates it every time we use it
  // InMemoryStore(this._subject);

  //? it creates it once and use the already created value everywhere
  InMemoryStore(T initial) : _subject = BehaviorSubject<T>.seeded(initial);

  // The BehaviorSubject that holds the data
  final BehaviorSubject<T> _subject;

  // The output stream that can be used to listhen to the data
  Stream<T> get stream => _subject.stream;

  // A asynchronous getter for the current value
  T get value => _subject.value;

  // A setter for updating the value
  set value(T value) => _subject.add(value);

  // Don't forget to call this when done
  void close() => _subject.close();
}
