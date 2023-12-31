vcluster Testing
================

A series of workshops for demonstrating the use of virtual clusters.

Workshops included are:

* [lab-command-vcluster](workshops/lab-command-vcluster) - A workshop
  demonstrating creation of a virtual cluster using the `vcluster` CLI.

* [lab-builtin-vcluster](workshops/lab-builtin-vcluster) - A workshop
  demonstrating creation of a virtual cluster per workshop session using the
  builtin support provided by Educates.

* [lab-setup-vcluster](workshops/lab-setup-vcluster) - A workshop demonstrating
  how to prepopulate a virtual cluster with resources, including installation of
  `kapp-controller`.

* [lab-admin-vcluster](workshops/lab-admin-vcluster) - A workshop demonstrating
  automatic creation of a virtual cluster with full admin access to the cluster
  using `helm` resources.

* [lab-contour-vcluster](workshops/lab-contour-vcluster) - A workshop
  demonstrating installation of Contour ingress controller into a virtual
  cluster rather than using underlying cluster ingress.

* [lab-shared-vcluster](workshops/lab-shared-vcluster) - A workshop
  demonstrating creation of a shared virtual cluster for the whole workshop
  environment, with workshops users getting access to only a single namespace in
  the virtual cluster.

* [lab-remote-cluster](workshops/lab-remote-cluster) - A workshop demonstrating
  using a remote Kubernetes cluster, with workshops users getting access to only
  a single namespace in the remote cluster.

To deploy all the workshops run:

```
kubectl apply -f https://github.com/educates/labs-vcluster-testing/releases/latest/download/workshops.yaml
kubectl apply -f https://github.com/educates/labs-vcluster-testing/releases/latest/download/trainingportal.yaml
```

Educates version 2.6.13 or later is required to run these workshops.

Note that some workshops have prerequisites that need to be satisified else they
will not work. Check the README for each workshop for more details.
