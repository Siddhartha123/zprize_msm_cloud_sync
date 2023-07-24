# for each chunk position
    # find signals mathcing padd_output_fifo_$i
    # add them to waveform with respective group

set fhandle [open "padd_otuput_list.txt" w]

echo "Adding padd_output_fifo signals ..."
for {set i 0} {$i < 63} {incr i} {
    set signals_list [find signals -r "/sys_test/uut/padd_output_fifo_${i}_U/if_*"];
    echo $signals_list
    foreach sig $signals_list { 
        add wave -group "padd_output_$i" $sig
    }
}

# # Search for all instances with u1 in path
# set k 63
# set pattern_match "*${k}_U*" ;
# # Get the list of instance paths
# set inst_list [find instances -r *]
# ;
# # Initialize an empty list to strip off the architecture names
# set ilist [list] ;
# foreach inst $inst_list {
# set ipath [lindex $inst 0]
# if {[string match $pattern_match $ipath]} {
# lappend ilist $ipath
# }
# }
# # At this point, ilist contains the list of instances only--
# # no architecture names
# #
# # Begin sorting list
# set ilist [lsort -dictionary $ilist]
# # Open a file to write out the list
# set fhandle [open "instancelist.txt" w]
# foreach inst $ilist {
# # Print instance path, one per line
# puts $fhandle $inst
# }
# # Close the file, done.
# close $fhandle ;