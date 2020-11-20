import 'dart:async';

import 'package:alan/alan.dart';
import 'package:alan/proto/cosmos/staking/v1beta1/export.dart' as staking;
import 'package:fixnum/fixnum.dart' as fixnum;
import 'package:grpc/grpc.dart';
import 'package:meta/meta.dart';

/// Allows to easily query the x/staking module of a chain.
class StakingQuerier extends QueryHelper {
  final staking.QueryClient _client;

  StakingQuerier._({
    @required ClientChannel channel,
  }) : _client = staking.QueryClient(channel);

  factory StakingQuerier.build(ClientChannel channel) {
    return StakingQuerier._(channel: channel);
  }

  /// Returns all validators.
  Future<List<staking.Validator>> getValidators({
    String status = '',
    int page = 1,
    int limit = 100,
  }) async {
    final pagination = PageRequest.create()
      ..limit = fixnum.Int64(limit)
      ..offset = fixnum.Int64((page - 1) * limit);
    final response = await _client.validators(
      staking.QueryValidatorsRequest.create()
        ..status = status
        ..pagination = pagination,
    );
    return response.validators;
  }

  /// Returns a single validator info based on its [operatorAddress].
  /// Returns `null` if such validator cannot be found.
  Future<staking.Validator> getValidator(String operatorAddress) async {
    final response = await _client.validator(
      staking.QueryValidatorRequest.create()..validatorAddr = operatorAddress,
    );
    return response.hasValidator() ? response.validator : null;
  }

  /// Get all delegations to the validator having the given [operatorAddress].
  Future<List<staking.DelegationResponse>> getValidatorDelegations(
    String operatorAddress, {
    int page = 1,
    int limit = 100,
  }) async {
    final pagination = PageRequest.create()
      ..limit = fixnum.Int64(limit)
      ..offset = fixnum.Int64((page - 1) * limit);
    final response = await _client.validatorDelegations(
      staking.QueryValidatorDelegationsRequest.create()
        ..validatorAddr = operatorAddress
        ..pagination = pagination,
    );
    return response.delegationResponses;
  }

  /// Returns all unbonding delegations from the validator
  /// having the given [operatorAddress].
  Future<List<staking.UnbondingDelegation>> getValidatorUnbondingDelegations(
    String operatorAddress, {
    int page = 1,
    int limit = 100,
  }) async {
    final pagination = PageRequest.create()
      ..limit = fixnum.Int64(limit)
      ..offset = fixnum.Int64((page - 1) * limit);
    final response = await _client.validatorUnbondingDelegations(
      staking.QueryValidatorUnbondingDelegationsRequest.create()
        ..validatorAddr = operatorAddress
        ..pagination = pagination,
    );
    return response.unbondingResponses;
  }

  // ---------------------------------------------------------------------
  // -------------------------- DELEGATORS -------------------------------
  // ---------------------------------------------------------------------

  /// Returns the list of delegations made from the
  /// user having the given [delegatorAddress].
  Future<List<staking.DelegationResponse>> getDelegatorDelegations(
    String delegatorAddress, {
    int page = 1,
    int limit = 100,
  }) async {
    final pagination = PageRequest.create()
      ..limit = fixnum.Int64(limit)
      ..offset = fixnum.Int64((page - 1) * limit);
    final response = await _client.delegatorDelegations(
      staking.QueryDelegatorDelegationsRequest.create()
        ..delegatorAddr = delegatorAddress
        ..pagination = pagination,
    );
    return response.delegationResponses;
  }

  /// Returns the list of unbonding delegations for the user
  /// having the given [delegatorAddress].
  Future<List<staking.UnbondingDelegation>> getDelegatorsUnbondingDelegations(
    String delegatorAddress, {
    int page = 1,
    int limit = 100,
  }) async {
    final pagination = PageRequest.create()
      ..limit = fixnum.Int64(limit)
      ..offset = fixnum.Int64((page - 1) * limit);
    final response = await _client.delegatorUnbondingDelegations(
      staking.QueryDelegatorUnbondingDelegationsRequest.create()
        ..delegatorAddr = delegatorAddress
        ..pagination = pagination,
    );
    return response.unbondingResponses;
  }

  /// Returns all validators that the delegator having the
  /// given [delegatorAddress] is bonded to.
  Future<List<staking.Validator>> getDelegatorValidators(
    String delegatorAddress, {
    int page = 1,
    int limit = 100,
  }) async {
    final pagination = PageRequest.create()
      ..limit = fixnum.Int64(limit)
      ..offset = fixnum.Int64((page - 1) * limit);
    final response = await _client.delegatorValidators(
      staking.QueryDelegatorValidatorsRequest.create()
        ..delegatorAddr = delegatorAddress
        ..pagination = pagination,
    );
    return response.validators;
  }

  /// Returns the validator having the given [validatorAddress]
  /// that the delegator having the given [delegatorAddress] is bonded to.
  Future<staking.Validator> getDelegatorValidator(
    String delegatorAddress,
    String validatorAddress,
  ) async {
    final response = await _client.delegatorValidator(
      staking.QueryDelegatorValidatorRequest.create()
        ..delegatorAddr = delegatorAddress
        ..validatorAddr = validatorAddress,
    );
    return response.hasValidator() ? response.validator : null;
  }

  /// Returns the delegation between the delegator having the
  /// given [delegatorAddress] and the validator having
  /// the given [validatorAddress].
  /// Returns `null` if no delegation could be found.
  Future<staking.DelegationResponse> getDelegationBetweenDelegatorAndValidator(
    String delegatorAddress,
    String validatorAddress,
  ) async {
    final response = await _client.delegation(
      staking.QueryDelegationRequest.create()
        ..validatorAddr = validatorAddress
        ..delegatorAddr = delegatorAddress,
    );
    return response.hasDelegationResponse()
        ? response.delegationResponse
        : null;
  }

  /// Returns the unbonding delegation between the delegator having
  /// the given [delegatorAddress] and the validator having the
  /// given [validatorAddress], or `null` if not found.
  Future<staking.UnbondingDelegation>
      getUnbondingDelegationBetweenDelegatorAndValidator(
    String delegatorAddress,
    String validatorAddress,
  ) async {
    final response = await _client.unbondingDelegation(
      staking.QueryUnbondingDelegationRequest.create()
        ..delegatorAddr = delegatorAddress
        ..validatorAddr = validatorAddress,
    );
    return response.hasUnbond() ? response.unbond : null;
  }

  /// Returns the redelegations based on the given
  /// [delegatorAddress], [sourceValidatorAddress] and
  /// [destinationValidatorAddress] given.
  Future<List<staking.RedelegationResponse>> getRedelegations({
    String delegatorAddress = '',
    String sourceValidatorAddress = '',
    String destinationValidatorAddress = '',
    int page = 1,
    int limit = 100,
  }) async {
    final pagination = PageRequest.create()
      ..limit = fixnum.Int64(limit)
      ..offset = fixnum.Int64((page - 1) * limit);
    final response = await _client.redelegations(
      staking.QueryRedelegationsRequest.create()
        ..delegatorAddr = delegatorAddress
        ..srcValidatorAddr = sourceValidatorAddress
        ..dstValidatorAddr = destinationValidatorAddress
        ..pagination = pagination,
    );
    return response.redelegationResponses;
  }

  // ---------------------------------------------------------------------
  // --------------------------- GENERIC ---------------------------------
  // ---------------------------------------------------------------------

  /// Returns the current state of the staking pool, or `null` if not found.
  Future<staking.Pool> getPool(String lcdEndpoint) async {
    final response = await _client.pool(staking.QueryPoolRequest.create());
    return response.hasPool() ? response.pool : null;
  }

  /// Returns the current staking parameter values, or `null` if not found.
  Future<staking.Params> getParams(String lcdEndpoint) async {
    final response = await _client.params(staking.QueryParamsRequest.create());
    return response.hasParams() ? response.params : null;
  }
}
