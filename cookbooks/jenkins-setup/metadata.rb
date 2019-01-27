name 'jenkins-setup'
maintainer 'Krishna Palakollu'
maintainer_email 'vamsys@gmail.com'
description 'Installs/Configures jenkins-setup'
long_description 'Installs/Configures jenkins-setup'
version '0.1.0'
chef_version '>= 12.14' if respond_to?(:chef_version)


depends 'java', '= 3.2.0'
depends 'jenkins', '= 6.2.1'

license 'All Rights Reserved'
