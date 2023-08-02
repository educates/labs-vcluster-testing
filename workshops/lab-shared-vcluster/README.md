Shared vcluster
===============

This workshop demonstrates the creation of a virtual cluster. Rather than using
the builtin feature of Educates to do this, which creates a virtual cluster per
workshop session, in this case we create a single virtual cluster for the whole
workshop environment, and then create a single namespace in that shared virtual
cluster for each workshop session. A workshop user only has the ability to
create resources inside of the single namespace in the virtual cluster and has
no cluster admin access.

To create the shared virtual cluster the `vcluster` Helm chart is used, with it
being deployed using the `App` resource of `kapp-controller`. A further `App`
resource is used per workshop session to create a namespace and service account
with appropriate access in the virtual cluster. An init container attached to
the workshop pod is used to retrieve credentials from the virtual cluster, from
which a `kubeconfig` file is created for use by the workshop session.
