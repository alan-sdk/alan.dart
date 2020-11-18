import 'package:alan/alan.dart';
import 'package:test/test.dart';

void main() {
  final json = {
    'proposal_id': '27',
    'depositor': 'cosmos130mdu9a0etmeuw52qfxk73pn0ga6gawkryh2z6',
    'amount': [
      {'denom': 'uatom', 'amount': '256000000'}
    ]
  };
  final value = Deposit(
    proposalId: '27',
    depositor: 'cosmos130mdu9a0etmeuw52qfxk73pn0ga6gawkryh2z6',
    amount: [
      StdCoin(denom: 'uatom', amount: '256000000'),
    ],
  );

  test('fromJson works properly', () {
    expect(Deposit.fromJson(json), equals(value));
  });

  test('toJson works properly', () {
    expect(value.toJson(), equals(json));
  });
}
