#!/usr/bin/perl -w

use strict;

# 7 days: s/432/2016 and COUNTER:300
# 30 days: s/432/8640 and COUNTER:300


for(my $i=1; $i<=8; $i++) {
	system "rm -rf /var/lib/rrdtool/border-p$i.rrd";
	system "rm -rf /var/lib/rrdtool/border-p$i-weekly.rrd";
	system "rm -rf /var/lib/rrdtool/border-p$i-monthly.rrd";
	system "rrdtool create /var/lib/rrdtool/border-p$i.rrd --start N DS:in:COUNTER:600:U:U DS:out:COUNTER:600:U:U RRA:AVERAGE:0.5:1:432";
	system "rrdtool create /var/lib/rrdtool/border-p$i-weekly.rrd --start N DS:in:COUNTER:300:U:U DS:out:COUNTER:300:U:U RRA:AVERAGE:0.5:1:2016";
	system "rrdtool create /var/lib/rrdtool/border-p$i-monthly.rrd --start N DS:in:COUNTER:300:U:U DS:out:COUNTER:300:U:U RRA:AVERAGE:0.5:1:8640";

#my $j = $i + 2;
#print <<EOF;
#/usr/bin/rrdupdate /var/lib/rrdtool/border-p$i.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv border.chalkdust.org iso.3.6.1.2.1.31.1.1.1.6.$j`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv border.chalkdust.org iso.3.6.1.2.1.31.1.1.1.7.$j`
#/usr/bin/rrdupdate /var/lib/rrdtool/border-p$i-weekly.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv border.chalkdust.org iso.3.6.1.2.1.31.1.1.1.6.$j`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv border.chalkdust.org iso.3.6.1.2.1.31.1.1.1.7.$j`
#/usr/bin/rrdupdate /var/lib/rrdtool/border-p$i-monthly.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv border.chalkdust.org iso.3.6.1.2.1.31.1.1.1.6.$j`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv border.chalkdust.org iso.3.6.1.2.1.31.1.1.1.7.$j`
#EOF
#my $j = $i;
#       print <<EOF;
#/usr/bin/rrdtool graph /var/www/bandwidth/border/border-port$i.png -a PNG -h 125 -s -129600 -v "Data Throughput" -t "border - Port: $j (Daily)" \\
#    'DEF:in=/var/lib/rrdtool/fisher-port$i.rrd:in:AVERAGE' \\
#    'DEF:out=/var/lib/rrdtool/fisher-port$i.rrd:out:AVERAGE' \\
#    'CDEF:kbin=in,1024,/' \\
#    'CDEF:kbout=out,1024,/' \\
#    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\\j' \\
#    'GPRINT:kbin:LAST:Last Bandwidth In\\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\\:   %3.2lf KBps\\j' \\
#    'GPRINT:kbin:AVERAGE:Average Bandwidth In\\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\\:%3.2lf KBps\\j'
#EOF
#       print <<EOF;
#/usr/bin/rrdtool graph /var/www/bandwidth/border/border-port$i-weekly.png -a PNG -h 125 -s -432000 -v "Data Throughput" -t "border - Port: $j (Weekly)" \\
#    'DEF:in=/var/lib/rrdtool/fisher-port$i-weekly.rrd:in:AVERAGE' \\
#    'DEF:out=/var/lib/rrdtool/fisher-port$i-weekly.rrd:out:AVERAGE' \\
#    'CDEF:kbin=in,1024,/' \\
#    'CDEF:kbout=out,1024,/' \\
#    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\\j' \\
#    'GPRINT:kbin:LAST:Last Bandwidth In\\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\\:   %3.2lf KBps\\j' \\
#    'GPRINT:kbin:AVERAGE:Average Bandwidth In\\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\\:%3.2lf KBps\\j'
#EOF
#        print <<EOF;
#/usr/bin/rrdtool graph /var/www/bandwidth/border/border-port$i-monthly.png -a PNG -h 125 -s -2592000 -v "Data Throughput" -t "border - Port: $j (Monthly)" \\
#    'DEF:in=/var/lib/rrdtool/fisher-port$i-monthly.rrd:in:AVERAGE' \\
#    'DEF:out=/var/lib/rrdtool/fisher-port$i-monthly.rrd:out:AVERAGE' \\
#    'CDEF:kbin=in,1024,/' \\
#    'CDEF:kbout=out,1024,/' \\
#    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\\j' \\
#    'GPRINT:kbin:LAST:Last Bandwidth In\\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\\:   %3.2lf KBps\\j' \\
#    'GPRINT:kbin:AVERAGE:Average Bandwidth In\\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\\:%3.2lf KBps\\j'
#EOF
}
