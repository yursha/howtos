# How to do a feature
1. Pick a Jira issue from the backlog
1. Create an automated test case
1. Run a test case against existing code
1. Understand existing code behaviour
1. Change existing code
1. Run a test case against changed code
1. Commit with message prefixed as `JIRA_ISSUE_CODE: <message>` and push
1. Close Jira issue
1. Tag `> git tag -a v1.0 -m "version 1.0"` and push
1. Release, i.e. deploy to production 
