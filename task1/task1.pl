my @unsorted = ( qw/ 7 1 3 4 2 4 6 5 5 / );

sub mySort {
	my $last_index = $#_;
	while($last_index){
		for ($i = 0; $i < $last_index; $i++){
			if (@_[$i] > @_[$i + 1]) {
				@_[$i, $i + 1] = @_[$i + 1, $i];
			}
		}	
		$last_index--;
	}
	return @_;
}

sub findMatch {
	my ($array, $value) = @_;
	my $sorted_array = mySort(@unsorted);
	
	$max_index = @#{$array};
	$min_index = 0;

	while($min_index <= $max_index){
		$cur_index = int(($max_index - $min_index) / 2);

		return('MATCH') if($value == $array->[$cur_index]);

		if($value < $array->[$cur_index]){
			$max_index = $cur_index - 1;
		}
		else {
			$min_index = $cur_index + 1;
		}
	}
	return('NOT_MATCH');
}

print mySort(@unsorted);
print findMatch(\@unsorted, 8);
