import 'dart:async';

import 'package:alan/alan.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

/// Allows to easily query the x/staking module of a chain.
class StakingQuerier extends QueryHelper {
  StakingQuerier({
    @required http.Client httpClient,
  }) : super(httpClient: httpClient);

  /// Returns all validators.
  Future<List<Validator>> getValidators(
    String lcdEndpoint, {
    String status = '',
    int page = 1,
    int limit = 100,
  }) async {
    final url =
        '/staking/validators?status=${status}&page=${page}&limit=${limit}';
    final result = await queryChain(lcdEndpoint + url);
    if (!result.isSuccessful) {
      return [];
    }

    final response = LcdResponse.fromJson(result.value);
    return (response.result as List)
        .map((e) => Validator.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  /// Returns a single validator info based on its [operatorAddress].
  /// Returns `null` if such validator cannot be found.
  Future<Validator> getValidator(
    String lcdEndpoint,
    String operatorAddress,
  ) async {
    final url = '/staking/validators/${operatorAddress}';
    final result = await queryChain(lcdEndpoint + url);
    if (!result.isSuccessful) {
      return null;
    }

    final response = LcdResponse.fromJson(result.value);
    return Validator.fromJson(response.result as Map<String, dynamic>);
  }

  /// Get all delegations to the validator having the given [operatorAddress].
  Future<List<Delegation>> getValidatorDelegations(
    String lcdEndpoint,
    String operatorAddress,
  ) async {
    final url = '/staking/validators/${operatorAddress}/delegations';
    final result = await queryChain(lcdEndpoint + url);
    if (!result.isSuccessful) {
      return [];
    }

    final response = LcdResponse.fromJson(result.value);
    return (response.result as List)
        .map((e) => Delegation.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  /// Returns all unbonding delegations from the validator
  /// having the given [operatorAddress].
  Future<List<UnbondingDelegation>> getValidatorUnbondingDelegations(
    String lcdEndpoint,
    String operatorAddress,
  ) async {
    final url = '/staking/validators/${operatorAddress}/unbonding_delegations';
    final result = await queryChain(lcdEndpoint + url);
    if (!result.isSuccessful) {
      return [];
    }

    final response = LcdResponse.fromJson(result.value);
    return (response.result as List)
        .map((e) => UnbondingDelegation.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  // ---------------------------------------------------------------------
  // -------------------------- DELEGATORS -------------------------------
  // ---------------------------------------------------------------------

  /// Returns the list of delegations made from the
  /// user having the given [delegatorAddress].
  Future<List<Delegation>> getDelegatorDelegations(
    String lcdEndpoint,
    String delegatorAddress,
  ) async {
    final url = '/staking/delegators/${delegatorAddress}/delegations';
    final result = await queryChain(lcdEndpoint + url);
    if (!result.isSuccessful) {
      return [];
    }

    final lcdResponse = LcdResponse.fromJson(result.value);
    return (lcdResponse.result as List)
        .map((e) => Delegation.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  /// Returns the list of unbonding delegations for the user
  /// having the given [delegatorAddress].
  Future<List<UnbondingDelegation>> getDelegatorsUnbondingDelegations(
    String lcdEndpoint,
    String delegatorAddress,
  ) async {
    final url = '/staking/delegators/${delegatorAddress}/unbonding_delegations';
    final result = await queryChain(lcdEndpoint + url);
    if (!result.isSuccessful) {
      return [];
    }

    final lcdResponse = LcdResponse.fromJson(result.value);
    return (lcdResponse.result as List)
        .map((e) => UnbondingDelegation.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  /// Returns all validators that the delegator having the
  /// given [delegatorAddress] is bonded to.
  Future<List<Validator>> getDelegatorValidators(
    String lcdEndpoint,
    String delegatorAddress,
  ) async {
    final url = '/staking/delegators/${delegatorAddress}/validators';
    final result = await queryChain(lcdEndpoint + url);
    if (!result.isSuccessful) {
      return [];
    }

    final response = LcdResponse.fromJson(result.value);
    return (response.result as List)
        .map((e) => Validator.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  /// Returns the validator having the given [validatorOperatorAddress]
  /// that the delegator having the given [delegatorAddress] is bonded to.
  Future<Validator> getDelegatorValidator(
    String lcdEndpoint,
    String delegatorAddress,
    String validatorOperatorAddress,
  ) async {
    final url =
        '/staking/delegators/${delegatorAddress}/validators/${validatorOperatorAddress}';
    final result = await queryChain(lcdEndpoint + url);
    if (!result.isSuccessful) {
      return null;
    }

    final response = LcdResponse.fromJson(result.value);
    return Validator.fromJson(response.result as Map<String, dynamic>);
  }

  /// Returns the delegation between the delegator having the
  /// given [delegatorAddress] and the validator having
  /// the given [validatorOperatorAddress].
  /// Returns `null` if no delegation could be found.
  Future<Delegation> getDelegationBetweenDelegatorAndValidator(
    String lcdEndpoint,
    String delegatorAddress,
    String validatorOperatorAddress,
  ) async {
    final url =
        '/staking/delegators/${delegatorAddress}/delegations/${validatorOperatorAddress}';
    final result = await queryChain(lcdEndpoint + url);
    if (!result.isSuccessful) {
      return null;
    }

    final response = LcdResponse.fromJson(result.value);
    return Delegation.fromJson(response.result as Map<String, dynamic>);
  }

  /// Returns all unbonding delegations between the delegator having
  /// the given [delegatorAddress] and the validator having the
  /// given [validatorOperatorAddress].
  Future<List<UnbondingDelegation>>
      getUnbondingDelegationsBetweenDelegatorAndValidator(
    String lcdEndpoint,
    String delegatorAddress,
    String validatorOperatorAddress,
  ) async {
    final url =
        '/staking/delegators/${delegatorAddress}/unbonding_delegations/${validatorOperatorAddress}';
    final result = await queryChain(lcdEndpoint + url);
    if (!result.isSuccessful) {
      return [];
    }

    final response = LcdResponse.fromJson(result.value);
    return (response.result as List)
        .map((e) => UnbondingDelegation.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  /// Returns the redelegations based on the given
  /// [delegatorAddress], [sourceValidatorOperatorAddress] and
  /// [destinationValidatorOperatorAddress] given.
  Future<List<Redelegation>> getRedelegations(
    String lcdEndpoint, {
    String delegatorAddress = '',
    String sourceValidatorOperatorAddress = '',
    String destinationValidatorOperatorAddress = '',
  }) async {
    final url =
        '/staking/redelegations?delegator=${delegatorAddress}&validator_from=${sourceValidatorOperatorAddress}&validator_to=${destinationValidatorOperatorAddress}';
    final result = await queryChain(lcdEndpoint + url);
    if (!result.isSuccessful) {
      return [];
    }

    final response = LcdResponse.fromJson(result.value);
    return (response.result as List)
        .map((e) => Redelegation.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  // ---------------------------------------------------------------------
  // --------------------------- GENERIC ---------------------------------
  // ---------------------------------------------------------------------

  /// Returns the current state of the staking pool.
  Future<StakingPool> getPool(String lcdEndpoint) async {
    final url = '/staking/pool';
    final result = await queryChain(lcdEndpoint + url);
    if (!result.isSuccessful) {
      return null;
    }

    final response = LcdResponse.fromJson(result.value);
    return StakingPool.fromJson(response.result as Map<String, dynamic>);
  }

  /// Returns the current staking parameter values.
  Future<StakingParams> getParams(String lcdEndpoint) async {
    final url = '/staking/parameters';
    final result = await queryChain(lcdEndpoint + url);
    if (!result.isSuccessful) {
      return null;
    }

    final response = LcdResponse.fromJson(result.value);
    return StakingParams.fromJson(response.result as Map<String, dynamic>);
  }
}
