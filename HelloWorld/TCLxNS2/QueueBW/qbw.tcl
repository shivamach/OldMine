#code description - 4 nodes forming a line, first to last node
#udp connnection, all links 2mb, with last link having a queue and a bw of 2mb
#for diff queue sizes do multiple bw for last link till no packet drops noticed
#udp rate is 4mb
#awk file used on trace file to find packets dropped
#future codes shall have less comments, comments for only the extra parts
#common things all are commented in this code which are pretty much duplicated for future codes
#________________________________________________ shivam ach 1PE16EC145________________________

set ns [new Simulator]
#new simulator
set tr [open "qbw.tr" w]
set ftr [open "qbw.nam" w]
#tr and ftr are now filehandlers for trace and name files
$ns trace-all $tr
$ns namtrace-all $ftr

set n0 [$ns node]
set n1 [$ns node]
set n2 [$ns node]
set n3 [$ns node]
#four nodes created and will be referred to by their set variable names
$n0 shape square
#you can change shape too just showing here


$ns duplex-link $n0 $n1 2Mb 0.1ms DropTail
$ns duplex-link $n1 $n2 2Mb 0.1ms DropTail
$ns duplex-link $n2 $n3 2Mb 0.1ms DropTail
#duplxlinks established, the last link bw has to be changed for each queue length

$ns queue-limit $n2 $n3 100
#change this queue limit and do for multiple bw the awk file
#simulator is all set, time to bring in agents

$ns color 0 red
#class id when set to 0 will be pf red color

set udp0 [new Agent/UDP]
#this is source agent
#set tcp0 [new Agent/TCP] for tcp agent src
set sink0 [new Agent/Null]
#this is destination agent
#set sink0 [new Agent/TCPSink] for tcp same thing
#now connecting source and dst agents to respective nodes
$ns attach-agent $n0 $udp0
$ns attach-agent $n3 $sink0
$ns connect $udp0 $sink0
#agents are connected src dst

set cbr [new Application/Traffic/CBR]
#set ftp [new Application/FTP]  for tcp
$cbr attach-agent $udp0
$cbr set packetsize_ 100
$cbr set rate_ 4Mb
$cbr set classid_ 0
#color for the udp set to red
#rate can be set for udp but not tcp
#rate size and shit belongs to application

$ns at 0.1 "$cbr start"
$ns at 1.5 "$cbr stop"
#simulation time start stop is passed as application times to the simulator
#whensimulation ends




proc finish {} {
    global ns tr ftr
    close $tr
    close $ftr
    #what is the command for flushing trace i dont remember
    exec nam qbw.nam &
    #to execute the animation
    exit
}
$ns at 1.7 "finish"
$ns run
