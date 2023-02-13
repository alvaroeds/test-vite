import 'package:dartz/dartz.dart';
import 'package:pedido_listo_web/features/contact/domain/interface_contact_repository.dart';
import 'package:pedido_listo_web/features/contact/domain/value_objects.dart';
import 'package:pedido_listo_web/resources/injections/firebase_injection.dart';
import 'package:values_object_and_failures_base/values_object_and_failures_base.dart';

class FirebaseContactRepository implements InterfaceContactRepository {
  final FirebaseInjection injection;

  FirebaseContactRepository(this.injection);

  @override
  Future<Either<GlobalFailure<dynamic>, Unit>> sendAndSaveEmail(
      {required EmailAddress emailAddress}) async {
    final emailStr = emailAddress.getOrCrash();
    final currentDate = DateTime.now();
    final docId = '${currentDate.year}-${currentDate.month}-${currentDate.day}';
    final storeVirtual =
        injection.firestore.collection('email-contact').doc(docId);
    final item = {
      'created_at': currentDate.toUtc(),
      'created_at_milliseconds': currentDate.millisecondsSinceEpoch,
      'email': emailStr,
    };
    try {
      await storeVirtual.update({
        'emails': FieldValue.arrayUnion([item])
      });
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.code == 'not-found') {
        await storeVirtual.set({
          'doc_created_at': FieldValue.serverTimestamp(),
          'emails': [item]
        });
        return right(unit);
      }
      return _getGlobalFailure(e);
    } catch (e) {
      return left(GlobalFailure.fromException(e));
    }
  }

  Either<GlobalFailure<dynamic>, Unit> _getGlobalFailure(FirebaseException e) {
    if (e.code == 'network-request-failed') {
      return const Left(GlobalFailure.notConnection());
    }

    return left(GlobalFailure.fromException(e));
  }
}
