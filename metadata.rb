name              "neo4j-multi-server"
maintainer        'Alex Willemsma'
maintainer_email  'alex@sovolve.com'
license           'MIT'
description       'This cookbook provides Neo4J Server (Community Edition), configured in such a way that multiple intances may be run on the same machine. Forked from Michael Klishin\'s repo at https://github.com/michaelklishin/neo4j-server-chef-cookbook'
version           '1.0.0'
depends           'java'

recipe 'neo4j-server::tarball', 'Installs a Neo4j server'

%w{ ubuntu debian redhat centos scientific amazon oracle }.each do |os|
  supports os
end
