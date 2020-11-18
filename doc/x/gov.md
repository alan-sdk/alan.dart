# Gov module
> The gov module enables Cosmos-SDK based blockchain to support an on-chain governance system. In this system, holders of the native staking token of the chain can vote on proposals on a 1 token 1 vote basis.
> 
> [Source](https://docs.cosmos.network/v0.40/modules/gov/)

## Supported messages
- [`MsgDeposit`](#msgdeposit)
- [`MsgSubmitProposal`](#msgsubmitproposal)
- [`MsgVote`](#msgvote)

### MsgDeposit
```dart
import "package:alan/alan.dart";

final message = MsgDeposit(
  proposalId: '20',
  depositor: 'cosmos1wtv0kp6ydt03edd8kyr5arr4f3yc52vp5g7na0',
  amount: [StdCoin(denom: 'uatom', amount: '1')],
);
```

### MsgSubmitProposal
```dart
import "package:alan/alan.dart";

final message = MsgSubmitProposal(
  content: TextProposal(
    title: 'Proposal title',
    description: 'Proposal description',
  ),
  initialDeposit: [
    StdCoin(denom: 'uatom', amount: '512000000'),
  ],
  proposer: 'cosmos1grgelyng2v6v3t8z87wu3sxgt9m5s03xvslewd',
);
```

### MsgVote
```dart
import "package:alan/alan.dart";

final message = MsgVote(
  proposalId: '21',
  voter: 'cosmos1l7r03unxglzala6dx3kndyqjlqrzpdwxuzm365',
  option: VoteOption.Yes,
);
```

## Supported queries
- [Proposals list](#proposals-list)
- [Proposal detail](#proposal-detail)
- [Proposal proposer](#proposal-proposer)
- [Proposal deposits](#proposal-deposits)
- [Proposal's depositor's deposit](#proposals-depositors-deposit)
- [Proposal votes](#proposal-votes)
- [Proposal vote by voter](#proposal-vote-by-voter)
- [Proposal tally result](#proposal-tally-result)
- [Deposit parameters](#deposit-parameters)
- [Tallying parameters](#tallying-parameters)
- [Voting parameters](#voting-parameters)

### Proposals list
```dart
import "package:http/http.dart" as http;
import "package:alan/alan.dart";

final querier = GovQuerier.build(http.Client());

final lcdEndpoint = "http://localhost:1317";
final proposals = await querier.getProposals(lcdEndpoint);
``` 

### Proposal detail
```dart
import "package:http/http.dart" as http;
import "package:alan/alan.dart";

final querier = GovQuerier.build(http.Client());

final lcdEndpoint = "http://localhost:1317";
final proposal = await querier.getProposal(lcdEndpoint, "27");
``` 

### Proposal proposer
```dart
import "package:http/http.dart" as http;
import "package:alan/alan.dart";

final querier = GovQuerier.build(http.Client());

final lcdEndpoint = "http://localhost:1317";
final proposer = await querier.getProposalProposer(lcdEndpoint, "27");
``` 

### Proposal deposits
```dart
import "package:http/http.dart" as http;
import "package:alan/alan.dart";

final querier = GovQuerier.build(http.Client());

final lcdEndpoint = "http://localhost:1317";
final deposits = await querier.getProposalDeposits(lcdEndpoint, "27");
``` 

### Proposal's depositor's deposit
```dart
import "package:http/http.dart" as http;
import "package:alan/alan.dart";

final querier = GovQuerier.build(http.Client());

final lcdEndpoint = "http://localhost:1317";
final deposit = await querier.getProposalDepositorDeposit(
  lcdEndpoint, 
  "27",
  "cosmos1q9pzkm5x6sjdc3wvyyvm8vlzxqyrr47j20zft2",
);
``` 

### Proposal votes
```dart
import "package:http/http.dart" as http;
import "package:alan/alan.dart";

final querier = GovQuerier.build(http.Client());

final lcdEndpoint = "http://localhost:1317";
final delegations = await querier.getProposalVotes(lcdEndpoint, "27");
``` 

### Proposal vote by voter
```dart
import "package:http/http.dart" as http;
import "package:alan/alan.dart";

final querier = GovQuerier.build(http.Client());

final lcdEndpoint = "http://localhost:1317";
final vote = await querier.getProposalVoteByVoter(
  lcdEndpoint, 
  "27",
  "cosmos1q9pzkm5x6sjdc3wvyyvm8vlzxqyrr47j20zft2",
);
``` 

### Proposal tally result
```dart
import "package:http/http.dart" as http;
import "package:alan/alan.dart";

final querier = GovQuerier.build(http.Client());

final lcdEndpoint = "http://localhost:1317";
final result = await querier.getProposalTallyResult(lcdEndpoint, "27");
```

### Deposit parameters
```dart
import "package:http/http.dart" as http;
import "package:alan/alan.dart";

final querier = GovQuerier.build(http.Client());

final lcdEndpoint = "http://localhost:1317";
final params = await querier.getDepositParams(lcdEndpoint);
```

### Tallying parameters
```dart
import "package:http/http.dart" as http;
import "package:alan/alan.dart";

final querier = GovQuerier.build(http.Client());

final lcdEndpoint = "http://localhost:1317";
final params = await querier.getTallyingParams(lcdEndpoint);
```

### Voting parameters
```dart
import "package:http/http.dart" as http;
import "package:alan/alan.dart";

final querier = GovQuerier.build(http.Client());

final lcdEndpoint = "http://localhost:1317";
final params = await querier.getVotingParams(lcdEndpoint);
```
