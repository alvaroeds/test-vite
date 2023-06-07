import 'package:freezed_annotation/freezed_annotation.dart';
part 'payment.freezed.dart';
part 'payment.g.dart';

@freezed
class Payment with _$Payment {
  @FreezedUnionValue('CASH')
  const factory Payment.cash() = Cash;
  @FreezedUnionValue('DEBIT_CARD')
  const factory Payment.debitCard() = DebitCard;
  @FreezedUnionValue('CREDIT_CARD')
  const factory Payment.creditCard() = CreditCard;
  @FreezedUnionValue('BANK_TRANSFER')
  const factory Payment.bankTransfer() = BankTransfer;
  const factory Payment.newMethod(String method) = NewMethod;

  const Payment._();

  bool get isCash => this is Cash;

  factory Payment.fromJson(Map<String, dynamic> json) =>
      _$PaymentFromJson(json);

  factory Payment.fromString(String value) {
    try {
      return Payment.fromJson({'runtimeType': value});
    } catch (_) {
      return Payment.newMethod(value);
    }
  }
}
