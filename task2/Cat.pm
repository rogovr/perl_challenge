package Cat;
@ISA = qw(Animal);

sub new{
	my ($class, @data) = @_;
	my $self = $class->SUPER::new('cat', @data[0], @data[1]);
	bless($self, $class);
        return $self;
}

sub eat{
	my ($self, $food) = @_;
	print "We call the cat to eat\n";
	$self->SUPER::eat($food);
}
