class profile::agent_nodes {
  host {'web.puppet.vm':
    ensure => present,
    ip     => '10.0.0.11',
  }
  host {'db.puppet.vm':
    ensure => present,
    ip     => '10.0.0.12',
  }
  host {'minetest.puppet.vm':
    ensure => present,
    ip     => '10.0.0.12',
  }
}
