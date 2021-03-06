name             "hive2"
maintainer       "Jim Dowling"
maintainer_email "jdowling@kth.se"
license          "Apache v2"
description      'Installs/Configures Hive Server'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.3.0"
source_url       "https://github.com/hopshadoop/hive-chef"



depends          "ndb"
depends          "hops"
depends          "kagent"
depends          "conda"
depends          "java"
depends          "kzookeeper"
depends          "magic_shell"

recipe           "install", "Installs a Hive2 Server"
recipe           "default", "Starts both a Hive metastore and server2 and tez"
recipe           "metastore", "Starts  a Hive Metastore Server"
recipe           "server2", "Starts  a Hive Server2"
recipe           "tez", "Install Tez"
recipe           "llap", "Deploy LLAP daemons"
recipe           "purge", "Removes and deletes an installed Hive Server"

attribute "java/jdk_version",
          :description =>  "Jdk version",
          :type => 'string'

attribute "java/install_flavor",
          :description =>  "Oracle (default) or openjdk",
          :type => 'string'

attribute "hive2/user",
          :description => "User to install/run as",
          :type => 'string'

attribute "hive2/dir",
          :description => "base dir for installation",
          :type => 'string'

attribute "hive2/version",
          :dscription => "hive version",
          :type => "string"

attribute "hive2/url",
          :dscription => "hive download url",
          :type => "string"

attribute "hive2/port",
          :dscription => "hive.port",
          :type => "string"

attribute "hive2/home",
          :dscription => "hive.home",
          :type => "string"

attribute "hive2/keystore",
          :dscription => "ivy.keystore",
          :type => "string"

attribute "hive2/mysql_user",
          :dscription => "mysql user account for hive",
          :type => "string"

attribute "hive2/mysql_password",
          :dscription => "mysql user account for hive",
          :type => "string"

attribute "hive2/keystore_password",
          :dscription => "ivy.keystore_password",
          :type => "string"

attribute "hive2/metastore/private_ips",
          :description => "Set ip addresses",
          :type => "array"

attribute "hive2/default/private_ips",
          :description => "Set ip addresses",
          :type => "array"

attribute "hive2/server2/private_ips",
          :description => "Set ip addresses",
          :type => "array"

attribute "hive2/metastore/port",
          :description => "metastore port",
          :type => "string"

attribute "install/dir",
          :description => "Set to a base directory under which we will install.",
          :type => "string"

attribute "install/user",
          :description => "User to install the services as",
          :type => "string"
