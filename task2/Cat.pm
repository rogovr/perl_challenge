package Cat;
@ISA = qw(Animal);

sub new{
	my ($class, @data) = @_;
	my $self = Animal->new('cat', @data[0], @data[1]);	
}
