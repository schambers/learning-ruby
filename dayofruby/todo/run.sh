#!/bin/sh

cd /usr/lib/ruby/1.8
if [ -h lib/xmlsimple.rb ]
then
  mv lib/xmlsimple.rb lib/xmlsimple.rb.old
  mv xmlsimple.rb lib/.
  cat > xmlsimple.rb <<!
require 'lib/xmlsimple.rb'
!
else
  echo `pwd`/lib/xmlsimple.rb is not a link. Exiting.
fi 
