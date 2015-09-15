# Version Control
- tag each release which means each deployment to production `> git tag -a v1.0 -m "version 1.0"`
- each commit should correspond to exactly one JIRA item
- prefix each commit message with "JIRA_ISSUE_CODE: <message>"


# How to do a feature
1. Create an automated test case
1. Run a test case against existing code
1. Understand existing code behaviour
1. Change existing code
1. Run a test case against changed code
1. Commit, close Jira ticket
1. Tag, release 
