---
title: Deploying a Service
---

To demonstrate deployment of an application to the virtual cluster, use `helm`
to install the Apache httpd web server.

```terminal:execute
command: helm install --set ingress.enabled=true --set ingress.hostname=apache-{{< param session_name >}}.{{< param ingress_domain >}} httpd oci://registry-1.docker.io/bitnamicharts/apache
```

The deployment will occur in background. To wait until the deployment has
completed run:

```terminal:execute
command: kubectl rollout status deployment/httpd-apache
```

You should now be able to access the Apache httpd web server instance using
the ingress which was created.

```terminal:execute
command: curl http://apache-{{< param session_name >}}.{{< param ingress_domain >}}
```

If access doesn't work immediately try again as the ingress may take a moment
to be setup properly.
