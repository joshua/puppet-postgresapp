# Public: Install Postgres.app to /Applications.
#
# Examples
#
#   include postgresapp
#
#   class { 'postgresapp':
#     version => '9.3.4.2'
#   }
class postgresapp ($version = '9.3.5.0') {
  package { 'Postgres':
    ensure   => installed,
    provider => 'compressed_app',
    source   => "https://github.com/PostgresApp/PostgresApp/releases/download/${version}/Postgres-${version}.zip"
  }
}
