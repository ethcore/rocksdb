#!/bin/bash

debuild -S -sa -us -uc

cd ..

# optional - do this in order to test build.
#sudo pbuilder build ../librocksdb_4.2-1.dsc

debsign librocksdb*.changes_

dput ppa:ethcore/ethcore librocksdb_*.changes

