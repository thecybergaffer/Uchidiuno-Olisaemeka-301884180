# portfolio 5 distributed cloud
Portfolio 5: Distributed and Cloud Databases

1. Objective
This portfolio explores cloud database deployment, remote data access, security controls, and the benefits and limitations of distributed database systems.

2. Scenario
SecFin is a fictional digital wallet that stores transaction records. A cloud-hosted database can support remote access and availability for authorised users, while a local PostgreSQL database can support relational operations and structured financial data.

3. Environment
- Relational database: PostgreSQL 18 (`walletdb`)
- Cloud database: MongoDB Atlas (`secfin` database, `transactions` collection)
- Cloud deployment region: Paris, France (eu-west-3)
- Case study: SecFin Secure Finance Wallet

4. Practical Exercise
The exercise uses MongoDB Atlas to store and query SecFin transaction documents from a managed cloud database. It examines remote database access, document retrieval, and cloud access controls.

The practical checks will include:
- Confirming the cloud cluster and database exist.
- Retrieving transaction documents from the `transactions` collection.
- Testing filters against transaction type and amount.
- Reviewing the network access list and database-user permissions.
- Recording the cloud deployment region and available cluster configuration.

5. Distributed and Cloud Database Concepts
Cloud database services reduce the need to maintain database infrastructure locally and can provide managed operations and remote access. Distributed databases may use replication to improve availability and resilience. However, cloud hosting alone does not prove that replication or sharding has been configured or tested; these capabilities must be verified in the deployment settings.

6. Security Considerations
Access should be limited to authorised users and trusted network sources. Database credentials must be kept private and excluded from source control. Network access rules should be restricted where practical, and only the permissions required for the exercise should be granted.

7. Comparison with PostgreSQL
PostgreSQL provides relational tables, foreign keys, constraints, and transactional capabilities suited to structured financial operations. MongoDB Atlas provides managed cloud hosting and flexible document storage. The appropriate choice depends on data structure, consistency requirements, operational needs, security, and cost.


8. Conclusion
This portfolio compares a local relational database with a managed cloud document database. It considers remote access, security, flexibility, and availability while distinguishing verified test results from features that have not been tested.
