import 'package:alan/alan.dart';
import 'package:test/test.dart';

/// Allows to test the serialization and deserialization of a message easily.
void testMsgJson<T>(StdMsg message, Map<String, dynamic> json) =>
    group('Serialization', () {
      test('toJson works properly', () {
        expect(Codec.serialize(message), json);
      });

      test('fromJson works properly', () {
        final msg = Codec.deserialize(json);
        expect(msg, isA<T>());

        final castedMsg = msg as T;
        expect(castedMsg, equals(msg));
      });
    });
