#!/usr/bin/perl
use strict;
sub to_number {
    my $t=0;
    foreach my $a (@_){
        $t=$t*10+$a;
    }
    return $t;
}

my @digits;
foreach my $s (1..9){
    if(!$digits[$s]){
        my @l_s = @digits;
        $l_s[$s] = 1;
        foreach my $e (0..9){
            if(!$l_s[$e]){
                my @l_e = @l_s;
                $l_e[$e] = 1;
                foreach my $n (0..9){
                    if(!$l_e[$n]){
                        my @l_n = @l_e;
                        $l_n[$n] = 1;
                        foreach my $d (0..9){
                            if(!$l_n[$d]){
                                my @l_d = @l_n;
                                $l_d[$d] = 1;
                                my $send = to_number($s, $e, $n, $d);
                                foreach my $m (1..9){
                                    if(!$l_d[$m]){
                                        my @l_m = @l_d;
                                        $l_m[$m] = 1;
                                        foreach my $o (0..9){
                                            if(!$l_m[$o]){
                                                my @l_o = @l_m;
                                                $l_o[$o] = 1;
                                                my $mo   = to_number($m, $o);
                                                my $mon  = to_number($mo, $n, $e);
                                                foreach my $r (0..9){
                                                    if(!$l_o[$r]){
                                                        my @l_r = @l_o;
                                                        $l_r[$r] = 1;
                                                        my $more = to_number($mo, $r, $e);
                                                        foreach my $y (0..9){
                                                            if(!$l_r[$y]){
                                                                my @l_y = @l_r;
                                                                $l_y[$y] = 1;
                                                                my $money = to_number($mone, $y);
                                                                if($send+$more==$money){
                                                                    print "$send + $more = $money\n";
                                                                    exit;
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
