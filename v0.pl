#!/usr/bin/perl
use strict;
sub to_number {
    my $t=0;
    foreach my $a (@_){
        $t=$t*10+$a;
    }
    return $t;
}

my @perm;
for(my $i=0; $i <10; $i++){
    $perm[$i]=$i;
}
my $j=8;
my $k=10-1;
while($j<$k){
    my $_t = $perm[$j];
    $perm[$j] = $perm[$k];
    $perm[$k] = $_t;
    $j++;
    $k--;
}
while(1){
    my ($s, $e, $n, $d, $m, $o, $r, $y) = @perm;
    if($s!=0 and $m!=0){
        my $send = to_number($s,$e,$n,$d);
        my $more = to_number($m, $o, $r, $e);
        my $money= to_number($m, $o, $n, $e, $y);
        if($send+$more==$money){
            print "$send + $more = $money\n";
            exit;
        }
    }
    my $max=-1;
    my $i=10-1;
    while($i>=0){
        if($max < $perm[$i]){
            $max = $perm[$i];
        }
        else{
            last;
        }
        $i--;
    }
    if($i<0){
        last;
    }
    else{
        for(my $j=10-1; $j >=0; $j--){
            if($perm[$j]>$perm[$i]){
                my $_t = $perm[$j];
                $perm[$j] = $perm[$i];
                $perm[$i] = $_t;
                last;
            }
        }
        my $j=$i+1;
        my $k=10-1;
        while($j<$k){
            my $_t = $perm[$j];
            $perm[$j] = $perm[$k];
            $perm[$k] = $_t;
            $j++;
            $k--;
        }
        my $j=8;
        my $k=10-1;
        while($j<$k){
            my $_t = $perm[$j];
            $perm[$j] = $perm[$k];
            $perm[$k] = $_t;
            $j++;
            $k--;
        }
    }
}
