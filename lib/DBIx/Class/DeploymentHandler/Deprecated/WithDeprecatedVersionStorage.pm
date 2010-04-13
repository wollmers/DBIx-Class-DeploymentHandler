package DBIx::Class::DeploymentHandler::Deprecated::WithDeprecatedVersionStorage;
use Moose::Role;

# ABSTRACT: (DEPRECATED) Use this if you are stuck in the past

use DBIx::Class::DeploymentHandler::VersionStorage::Deprecated;

has version_storage => (
  does => 'DBIx::Class::DeploymentHandler::HandlesVersionStorage',
  is  => 'ro',
  builder => '_build_version_storage',
  handles =>  'DBIx::Class::DeploymentHandler::HandlesVersionStorage',
);

sub _build_version_storage {
  DBIx::Class::DeploymentHandler::VersionStorage::Deprecated
    ->new({ schema => $_[0]->schema });
}

1;

# vim: ts=2 sw=2 expandtab

__END__