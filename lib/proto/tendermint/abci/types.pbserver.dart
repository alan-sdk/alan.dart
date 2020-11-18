///
//  Generated code. Do not modify.
//  source: tendermint/abci/types.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'types.pb.dart' as $7;
import 'types.pbjson.dart';

export 'types.pb.dart';

abstract class ABCIApplicationServiceBase extends $pb.GeneratedService {
  $async.Future<$7.ResponseEcho> echo($pb.ServerContext ctx, $7.RequestEcho request);
  $async.Future<$7.ResponseFlush> flush($pb.ServerContext ctx, $7.RequestFlush request);
  $async.Future<$7.ResponseInfo> info($pb.ServerContext ctx, $7.RequestInfo request);
  $async.Future<$7.ResponseSetOption> setOption($pb.ServerContext ctx, $7.RequestSetOption request);
  $async.Future<$7.ResponseDeliverTx> deliverTx($pb.ServerContext ctx, $7.RequestDeliverTx request);
  $async.Future<$7.ResponseCheckTx> checkTx($pb.ServerContext ctx, $7.RequestCheckTx request);
  $async.Future<$7.ResponseQuery> query($pb.ServerContext ctx, $7.RequestQuery request);
  $async.Future<$7.ResponseCommit> commit($pb.ServerContext ctx, $7.RequestCommit request);
  $async.Future<$7.ResponseInitChain> initChain($pb.ServerContext ctx, $7.RequestInitChain request);
  $async.Future<$7.ResponseBeginBlock> beginBlock($pb.ServerContext ctx, $7.RequestBeginBlock request);
  $async.Future<$7.ResponseEndBlock> endBlock($pb.ServerContext ctx, $7.RequestEndBlock request);
  $async.Future<$7.ResponseListSnapshots> listSnapshots($pb.ServerContext ctx, $7.RequestListSnapshots request);
  $async.Future<$7.ResponseOfferSnapshot> offerSnapshot($pb.ServerContext ctx, $7.RequestOfferSnapshot request);
  $async.Future<$7.ResponseLoadSnapshotChunk> loadSnapshotChunk($pb.ServerContext ctx, $7.RequestLoadSnapshotChunk request);
  $async.Future<$7.ResponseApplySnapshotChunk> applySnapshotChunk($pb.ServerContext ctx, $7.RequestApplySnapshotChunk request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'Echo': return $7.RequestEcho();
      case 'Flush': return $7.RequestFlush();
      case 'Info': return $7.RequestInfo();
      case 'SetOption': return $7.RequestSetOption();
      case 'DeliverTx': return $7.RequestDeliverTx();
      case 'CheckTx': return $7.RequestCheckTx();
      case 'Query': return $7.RequestQuery();
      case 'Commit': return $7.RequestCommit();
      case 'InitChain': return $7.RequestInitChain();
      case 'BeginBlock': return $7.RequestBeginBlock();
      case 'EndBlock': return $7.RequestEndBlock();
      case 'ListSnapshots': return $7.RequestListSnapshots();
      case 'OfferSnapshot': return $7.RequestOfferSnapshot();
      case 'LoadSnapshotChunk': return $7.RequestLoadSnapshotChunk();
      case 'ApplySnapshotChunk': return $7.RequestApplySnapshotChunk();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'Echo': return this.echo(ctx, request);
      case 'Flush': return this.flush(ctx, request);
      case 'Info': return this.info(ctx, request);
      case 'SetOption': return this.setOption(ctx, request);
      case 'DeliverTx': return this.deliverTx(ctx, request);
      case 'CheckTx': return this.checkTx(ctx, request);
      case 'Query': return this.query(ctx, request);
      case 'Commit': return this.commit(ctx, request);
      case 'InitChain': return this.initChain(ctx, request);
      case 'BeginBlock': return this.beginBlock(ctx, request);
      case 'EndBlock': return this.endBlock(ctx, request);
      case 'ListSnapshots': return this.listSnapshots(ctx, request);
      case 'OfferSnapshot': return this.offerSnapshot(ctx, request);
      case 'LoadSnapshotChunk': return this.loadSnapshotChunk(ctx, request);
      case 'ApplySnapshotChunk': return this.applySnapshotChunk(ctx, request);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => ABCIApplicationServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => ABCIApplicationServiceBase$messageJson;
}

