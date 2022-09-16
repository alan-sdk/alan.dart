## Version 0.41.2+1
- Replaced legacy `/node_info` query with new gRPC client

## Version 0.41.1+1
- Added support for fee payer and granter fields

## Version 0.41.0+1
- `GRPCInfo#getChannel` now returns a new gRPC channel each time it's called. This makes it possible to easily switch between gRPC URLs if needed
- Updated Cosmos SDK to `v0.45.4` 
- Added support for CosmWASM

## Version 0.40.2+1
- Changed how `NetworkInfo` is built.
- Upgraded Cosmos Proto files to `v0.42.5`

## Version 0.40.1+1
Added support for null-safety

## Version 0.40.0+2 
Fixed incompatible dependencies versions

## Version 0.40.0+1
Support the Cosmos `v0.40.x`, `v0.41.x` and `v0.42.x` versions.

- Custom messages are now Protobuf-generated classes
- Transactions are serialized using Protobuf and signed using the `MODE_DIRECT` mode
- Queries are performed using the different `QueryClient` implementations
