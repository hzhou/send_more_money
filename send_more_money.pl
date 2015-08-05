sub bd { my ($ls, $f) = @_;
  [ map @{$f->($_)}, @$ls ]      # Yow
}
sub guard { $_[0] ? [undef] : [] }

sub remove {
  my ($b, $a) = @_;
  my %h = map { $_ => 1 } @$a;
  delete $h{$_} for @$b;
  return [ keys %h ];
}

my $digits = [0..9];
my $solutions =
  bd remove([0],        $digits) => sub { my ($s) = @_;
  bd remove([$s],       $digits) => sub { my ($e) = @_;
  bd remove([$s,$e],    $digits) => sub { my ($n) = @_;
  bd remove([$s,$e,$n], $digits) => sub { my ($d) = @_;
    my $send = "$s$e$n$d";

  bd remove([0,$s,$e,$n,$d],     $digits) => sub { my ($m) = @_;
  bd remove([$s,$e,$n,$d,$m],    $digits) => sub { my ($o) = @_;
  bd remove([$s,$e,$n,$d,$m,$o], $digits) => sub { my ($r) = @_;
    my $more = "$m$o$r$e";

  bd remove([$s,$e,$n,$d,$m,$o,$r], $digits) => sub { my ($y) = @_;
    my $money = "$m$o$n$e$y";
  bd guard($send + $more == $money) => sub { [[$send, $more, $money]] }}}}}}}}};

  for my $s (@$solutions) {
    print "@$s\n";
  }
