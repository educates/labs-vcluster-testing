---
title: Workshop Overview
---

```terminal:execute
session: vcluster
command: vcluster create test --connect
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
