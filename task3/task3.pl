$datetime = '2016-04-11 20:59:03';
#($date, $time) = $datetime =~ /(\d\d\d\d-\d\d-\d\d)\s(\d\d:\d\d:\d\d)/;
#($date, $time) = $datetime =~ /(\w+-\w+-\w+)\s(\w+:\w+:\w+)/;
($date, $time) = $datetime =~ /(\S+)\s(\S+)/;
print "Date is $date, Time is $time";
