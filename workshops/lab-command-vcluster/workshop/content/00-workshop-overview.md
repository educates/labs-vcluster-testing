---
title: Workshop Overview
---

```terminal:execute
session: vcluster
command: vcluster create test --extra-values ~/exercises/vcluster-values.yaml --connect
```

```terminal:execute
session: vcluster
command: vcluster create test --connect
```

```editor:open-file
file: ~/exercises/vcluster-values.yaml
```

```terminal:execute
command: vcluster list
```

```terminal:execute
command: kubectl config get-contexts
```

```terminal:execute
command: kubectl config set-context --current --namespace default
```

```terminal:execute
command: kubectl config get-contexts
```

```terminal:execute
command: kubectl get nodes
```

```terminal:execute
command: kubectl get namespaces
```

```terminal:execute
command: kubectl get serviceaccounts
```

```terminal:execute
command: kubectl get nodes --context educates
```

```terminal:execute
command: kubectl get namespaces --context educates
```

```terminal:execute
command: kubectl get serviceaccounts --context educates --namespace default
```

```dashboard:open-dashboard
name: Console
```

```terminal:execute
command: helm install --set ingress.enabled=true --set ingress.hostname=apache-{{< param session_name >}}.{{< param ingress_domain >}} httpd oci://registry-1.docker.io/bitnamicharts/apache
```

```terminal:execute
command: kubectl rollout status deployment/httpd-apache
```

```terminal:execute
command: curl http://apache-{{< param session_name >}}.{{< param ingress_domain >}}
```

```terminal:execute
command: vcluster delete test
```

```terminal:execute
command: vcluster list
```

```terminal:execute
command: kubectl config get-contexts
```

```dashboard:open-dashboard
name: Cluster
```

```terminal:interrupt
session: vcluster
```
