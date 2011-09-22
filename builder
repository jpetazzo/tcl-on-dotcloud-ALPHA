#!/bin/sh

slowbuild () {
    # No slow build: it requires manually downloading from
    # http://www.activestate.com/activetcl/downloads/thank-you?dl=http://downloads.activestate.com/ActiveTcl/releases/8.5.10.1/ActiveTcl8.5.10.1.295062-linux-x86_64-threaded.tar.gz
    # Then running manual installer.
    true
}

fastbuild () {
    curl http://dotcloud-plugins.s3.amazonaws.com/ActiveTcl-8.5.tar.gz |
    tar -zxf-
}

cd
fastbuild

cat > ~/profile <<EOF
export PATH=~/ActiveTcl-8.5/bin:$PATH
EOF

