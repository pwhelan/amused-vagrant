#!/usr/bin/puppet apply

composer::project { 'amused':
    project_name   => 'amused/amused',  # REQUIRED
    target_dir     => '/vagrant/amused', # REQUIRED
    version        => 'dev-master', # Some valid version string
    prefer_source  => true,
    stability      => 'dev', # Minimum stability setting
    keep_vcs       => false, # Keep the VCS information
    dev            => true # Install dev dependencies
}

#php::pecl::module { 'phpiredis':
#    preferred_state => 'beta'
#}
