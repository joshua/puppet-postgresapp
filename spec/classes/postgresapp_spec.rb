require 'spec_helper'

describe 'Postgresapp' do
  it do
    version = '9.3.5.0'
    should contain_package('Postgres').with({
      :ensure   => 'installed',
      :provider => 'compressed_app',
      :source   => "https://github.com/PostgresApp/PostgresApp/releases/download/#{version}/Postgres-#{version}.zip",
    })
  end
end
