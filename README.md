Bootstrap Debian
================
Installs the minimum requirements for using Ansible on Debian/Ubuntu hosts.

The role installs the `python`, `python-apt`, `python-pycurl` and `aptitude`
packages (if not already available). After the initial run, this role should
do nothing. I.e, it will not force updates to the aforementioned packages.

The typical use case for this role is scripted creation of new hosts or
automatic preparation of existing hosts for Ansible management. See the
[GitHub repository](http://github.com/cederberg/ansible-bootstrap-debian)
for detailed script and source code.

Requirements
------------
The host machine should run Debian or Ubuntu.

Role Variables
--------------
None.

Dependencies
------------
None.

License
-------
BSD

Author Information
------------------
Per Cederberg, http://www.percederberg.net/
