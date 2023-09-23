---
title: Workshop Overview
---

```terminal:execute
command: helm install --set ingress.enabled=true --set ingress.hostname=apache.{{< param session_name >}}.{{< param ingress_domain >}} httpd oci://registry-1.docker.io/bitnamicharts/apache
```

```terminal:execute
command: kubectl rollout status deployment/httpd-apache
```

```terminal:execute
command: curl http://apache.{{< param session_name >}}.{{< param ingress_domain >}}
```
