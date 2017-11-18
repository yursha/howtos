# HTTP POST application/x-www-form-urlencoded

```bash
# bash
curl -d username=vim -d password=secret http://targethost/login
```

# HTTP POST multipart/form-data

```bash
# bash
curl -F username=vim -F password=secret -F filename=@localfile.txt http://targethost/login
```

# Skip SSL Certificates check
- `curl -k` - skip SSL Certificates check (useful for development on localhost)
