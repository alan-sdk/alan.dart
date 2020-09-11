// This file has been generated by the reflectable package.
// https://github.com/dart-lang/reflectable.

import 'dart:core';
import 'package:alan/types/std_msg.dart' as prefix0;
import 'package:alan/x/bank/types/messages/msg_send.dart' as prefix3;
import 'package:alan/x/staking/types/messages/msg_create_validator.dart'
    as prefix1;
import 'package:alan/x/staking/types/messages/msg_edit_validator.dart'
    as prefix2;

// ignore_for_file: prefer_adjacent_string_concatenation
// ignore_for_file: prefer_collection_literals
// ignore_for_file: unnecessary_const
// ignore_for_file: implementation_imports

// ignore:unused_import
import 'package:reflectable/mirrors.dart' as m;
// ignore:unused_import
import 'package:reflectable/src/reflectable_builder_based.dart' as r;
// ignore:unused_import
import 'package:reflectable/reflectable.dart' as r show Reflectable;

final _data = <r.Reflectable, r.ReflectorData>{
  const prefix0.Reflector(): r.ReflectorData(
      <m.TypeMirror>[
        r.NonGenericClassMirrorImpl(
            r'MsgCreateValidator',
            r'.MsgCreateValidator',
            7,
            0,
            const prefix0.Reflector(),
            const <int>[-1],
            null,
            null,
            -1,
            {},
            {},
            {
              r'': (b) => (
                      {description,
                      commission,
                      minSelfDelegation,
                      delegatorAddress,
                      validatorAddress,
                      publicKey,
                      value}) =>
                  b
                      ? prefix1.MsgCreateValidator(
                          commission: commission,
                          delegatorAddress: delegatorAddress,
                          description: description,
                          minSelfDelegation: minSelfDelegation,
                          publicKey: publicKey,
                          validatorAddress: validatorAddress,
                          value: value)
                      : null,
              r'fromJson': (b) =>
                  (json) => b ? prefix1.MsgCreateValidator.fromJson(json) : null
            },
            -1,
            -1,
            const <int>[-1],
            null,
            {}),
        r.NonGenericClassMirrorImpl(
            r'MsgEditValidator',
            r'.MsgEditValidator',
            7,
            1,
            const prefix0.Reflector(),
            const <int>[-1],
            null,
            null,
            -1,
            {},
            {},
            {
              r'': (b) => (
                      {description,
                      validatorAddress,
                      commissionRate,
                      minSelfDelegation}) =>
                  b
                      ? prefix2.MsgEditValidator(
                          commissionRate: commissionRate,
                          description: description,
                          minSelfDelegation: minSelfDelegation,
                          validatorAddress: validatorAddress)
                      : null,
              r'fromJson': (b) =>
                  (json) => b ? prefix2.MsgEditValidator.fromJson(json) : null
            },
            -1,
            -1,
            const <int>[-1],
            null,
            {}),
        r.NonGenericClassMirrorImpl(
            r'MsgSend',
            r'.MsgSend',
            7,
            2,
            const prefix0.Reflector(),
            const <int>[-1],
            null,
            null,
            -1,
            {},
            {},
            {
              r'': (b) => ({fromAddress, toAddress, amount}) => b
                  ? prefix3.MsgSend(
                      amount: amount,
                      fromAddress: fromAddress,
                      toAddress: toAddress)
                  : null,
              r'fromJson': (b) =>
                  (json) => b ? prefix3.MsgSend.fromJson(json) : null
            },
            -1,
            -1,
            const <int>[-1],
            null,
            {})
      ],
      null,
      null,
      <Type>[
        prefix1.MsgCreateValidator,
        prefix2.MsgEditValidator,
        prefix3.MsgSend
      ],
      3,
      {},
      {},
      null,
      [
        const [
          0,
          0,
          const [
            #description,
            #commission,
            #minSelfDelegation,
            #delegatorAddress,
            #validatorAddress,
            #publicKey,
            #value
          ]
        ],
        const [1, 0, null],
        const [
          0,
          0,
          const [
            #description,
            #validatorAddress,
            #commissionRate,
            #minSelfDelegation
          ]
        ],
        const [
          0,
          0,
          const [#fromAddress, #toAddress, #amount]
        ]
      ])
};

final _memberSymbolMap = null;

void initializeReflectable() {
  r.data = _data;
  r.memberSymbolMap = _memberSymbolMap;
}
