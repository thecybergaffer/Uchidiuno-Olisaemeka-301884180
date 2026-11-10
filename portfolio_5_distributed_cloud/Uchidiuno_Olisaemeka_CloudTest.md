SecFin Cloud Database Test Report

1. Objective

To verify the cloud deployment, security settings, and distributed database features of the SecFin MongoDB Atlas environment.

2. Cloud Environment

- Platform: MongoDB Atlas
- Cluster: SecFinCluster
- Version: 8.0.34
- Cloud provider: AWS
- Region: Paris (eu-west-3)
- Cluster tier: Free (M0)

3. Distributed Database Evidence

The cluster operates as a replica set consisting of:

- One PRIMARY node
- Two SECONDARY nodes

This configuration provides replicated copies of data across multiple nodes, supporting availability and resilience.

4. Security Verification

Network Access

- One specific IP address (`/32`) is allowed in the IP access list.
- Atlas reported that the current IP address was not on the access list during verification.
- The configuration avoids unrestricted access from all IPv4 addresses.

Database User

- MongoDB role: `atlasAdmin`
- Resource scope: All Resources

The account has administrative permissions for the project. A production application would normally use a more restrictive role based on least-privilege principles.

5. Practical Checks Completed

- Verified the cloud cluster configuration.
- Confirmed replica-set members.
- Reviewed the IP access list.
- Verified database-user permissions.
- Previously inserted and queried transaction documents in the `secfin.transactions` collection.

6. Comparison with PostgreSQL

PostgreSQL provides structured tables, foreign keys, and ACID transactions for financial records. MongoDB Atlas provides managed cloud hosting, replicated data across multiple nodes, and flexible document storage.

7. Conclusion

The practical exercise confirmed that the SecFin cloud database is deployed in MongoDB Atlas with a replicated cluster configuration and managed access controls. The tests demonstrate key cloud database concepts while distinguishing verified observations from production best practices.
