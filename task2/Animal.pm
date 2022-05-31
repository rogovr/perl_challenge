package Animal;
sub new{
	my $class = shift;
	my $self = {
		type => shift,
		name => shift,
		color => shift,
	};
	print "Animal $self->{name} was created. This is $self->{color} $self->{type}\n";
	bless($self, $class);
	return $self;
}

sub getName{
	my($self) = @_;
	print "$self->{name}\n";
}

sub setName{
	my($self, $name) = @_;
	$old_name = $self->{name};
	$self->{name} = $name;
	print "Name was changed from $old_name to $name\n";
}
1;
