Remote Cluster
==============

This workshop isn't strictly a demonstration of use of a virtual cluster, but
attaching a workshop session to a remote cluster. That remote cluster could
still be a virtual cluster, or a full Kubernetes cluster. In either case, for
each workshop session a namespace will be created in the remote cluster for use
by the workshop user during that workshop session.

In order to be able to access the remote cluster, a secret needs to be created
which contains a kubeconfig file with cluster admin access to the remote
cluster. By default this secret containing the kubeconfig file should be called
``cluster-credentials`` and placed in the ``default`` namespace. Alternatively,
you can name it and place it in a different namespace and if using the REST
API indicate its location use request parameters.

Because request parameters are used, this workshop would not normally be set up
to have reserved sessions as details of the location are only configured when
the workshop session is being allocated to a workshop user. The workshop could
be modified to not allow the location of the kubeconfig secret to be set via the
request parameters, in which case one could use reserved sessions.
