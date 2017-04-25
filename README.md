# puppet-test

Dev environment for checkup on the current development state of puppet.
No complete project structure was create via `puppet module generate` to omit unneeded boilerplate code.

Basic Structure:

    cloned project root
     |
     +- module 1
     |   |
     |   +- manifests
     |      |
     |      +- init.pp
     |      +- site.pp
     |
     +- module 2
     +- module 3
     +- ...

## Installing/uninstalling modules locally, so everything is (and stays) self-contained:

    cd <ROOT-OF-PROJECT>
    puppet module --modulepath . install puppetlabs-stdlib --version '4.16.0'
    puppet module --modulepath . uninstall puppetlabs-stdlib

## Usage: (test-driven-development)

    cd <ROOT-OF-PROJECT>
    watch -n1 -d "puppet apply --color=false --modulepath . --test -e 'include helloworlds' 2>&1"
