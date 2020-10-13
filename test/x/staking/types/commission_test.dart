import 'package:alan/alan.dart';
import 'package:test/test.dart';

void main() {
  final json = {
    'commission_rates': {
      'rate': '0.100000000000000000',
      'max_rate': '0.200000000000000000',
      'max_change_rate': '0.010000000000000000'
    },
    'update_time': '2020-10-08T02:12:14.371495019Z'
  };
  final value = Commission(
    commissionRates: CommissionRates(
      rate: '0.100000000000000000',
      maxRate: '0.200000000000000000',
      maxChangeRate: '0.010000000000000000',
    ),
    updateTime: '2020-10-08T02:12:14.371495019Z',
  );

  test('fromJson works properly', () {
    expect(Commission.fromJson(json), equals(value));
  });

  test('toJson works properly', () {
    expect(value.toJson(), equals(json));
  });
}
