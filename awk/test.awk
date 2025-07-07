BEGIN{printf "Col1\tCol2\tCol3\n"} 
/tty/{

print $2"\t"$3"\t"$7;
++c

}
END{print "Done"; print c}
