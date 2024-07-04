Here's the `sonar-scanner` command with the specified parameters for analyzing a project and uploading the results to a SonarQube server:

```sh
sonar-scanner -Dsonar.host.url=https://sonar.chaitu.net -Dsonar.login=admin -Dsonar.password=@123Chaitu -Dsonar.projectKey=frontend -Dsonar.qualitygate.wait=true
```

Here's a breakdown of the command:

- `sonar-scanner`: The command-line utility for running SonarQube analysis.
- `-Dsonar.host.url=https://sonar.chaitu.net`: Specifies the URL of the SonarQube server.
- `-Dsonar.login=admin`: The username for authentication with the SonarQube server.
- `-Dsonar.password=@123Chaitu`: The password for authentication with the SonarQube server.
- `-Dsonar.projectKey=frontend`: The unique key for the project being analyzed.
- `-Dsonar.qualitygate.wait=true`: Ensures that the command waits for the quality gate to be evaluated before completing.

When executed, this command will run a SonarQube analysis on the project, upload the results to the specified SonarQube server, and wait for the quality gate to be evaluated.