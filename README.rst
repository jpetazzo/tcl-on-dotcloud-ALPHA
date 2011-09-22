TCL On DotCloud (ALPHA)
=======================

This is an **ALPHA** (i.e., not production-ready) TCL stack for DotCloud.
It allows to execute scripts using ``tclsh``.


How It Works
------------

To avoid building TCL each time a service must be deployed, it uses
ActiveState TCL (community edition). A ready-to-run install has been
prepared and stored on S3.

The build is not totally DotCloud-compliant (it uses all the default build
options, instead of trying to setup the logs/data/etc. directories in the
proper place).

Again: **don't use this for production!**

Proper TCL support will come soon.


How To Use It (Standalone)
--------------------------

Just use our (un)patented Clone-And-DotCloud-Push method::

  git clone git://github.com/jpetazzo/tcl-on-dotcloud-ALPHA.git
  dotcloud push tickle tcl-on-dotcloud-ALPHA

At the end of the push, you can use ``dotcloud ssh tickle.tcl``
do log into the service and run ``tclsh``.


How To Use It (In Your App)
---------------------------

Add the ``dotcloud.yml`` supplied here to your own ``dotcloud.yml``,
and copy the ``builder`` script to your repository as well. Push as
usual. You can now use ``tclsh`` in the ``tcl`` service.
