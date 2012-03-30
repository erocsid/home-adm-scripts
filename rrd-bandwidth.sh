#!/bin/sh

# create a new one:
# rrdtool create bandwidth.rrd --start N DS:in:COUNTER:300:U:U DS:out:COUNTER:300:U:U RRA:AVERAGE:0.5:1:432
# 5 days: 432 and COUNTER:600
# 7 days: s/432/2016 and COUNTER:300
# 30 days: s/432/8640 and COUNTER:300

# databases
# switch1 port 1
/usr/bin/rrdupdate /var/lib/rrdtool/switch1-p1.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch1.chalkdust.org iso.3.6.1.2.1.2.2.1.10.1`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch1.chalkdust.org iso.3.6.1.2.1.2.2.1.16.1`
/usr/bin/rrdupdate /var/lib/rrdtool/switch1-p1-weekly.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch1.chalkdust.org iso.3.6.1.2.1.2.2.1.10.1`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch1.chalkdust.org iso.3.6.1.2.1.2.2.1.16.1`
/usr/bin/rrdupdate /var/lib/rrdtool/switch1-p1-monthly.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch1.chalkdust.org iso.3.6.1.2.1.2.2.1.10.1`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch1.chalkdust.org iso.3.6.1.2.1.2.2.1.16.1`

# switch1 port 2
/usr/bin/rrdupdate /var/lib/rrdtool/switch1-p2.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch1.chalkdust.org iso.3.6.1.2.1.2.2.1.10.2`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch1.chalkdust.org iso.3.6.1.2.1.2.2.1.16.2`
/usr/bin/rrdupdate /var/lib/rrdtool/switch1-p2-weekly.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch1.chalkdust.org iso.3.6.1.2.1.2.2.1.10.2`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch1.chalkdust.org iso.3.6.1.2.1.2.2.1.16.2`
/usr/bin/rrdupdate /var/lib/rrdtool/switch1-p2-monthly.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch1.chalkdust.org iso.3.6.1.2.1.2.2.1.10.2`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch1.chalkdust.org iso.3.6.1.2.1.2.2.1.16.2`

# switch1 port 3
/usr/bin/rrdupdate /var/lib/rrdtool/switch1-p3.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch1.chalkdust.org iso.3.6.1.2.1.2.2.1.10.3`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch1.chalkdust.org iso.3.6.1.2.1.2.2.1.16.3`
/usr/bin/rrdupdate /var/lib/rrdtool/switch1-p3-weekly.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch1.chalkdust.org iso.3.6.1.2.1.2.2.1.10.3`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch1.chalkdust.org iso.3.6.1.2.1.2.2.1.16.3`
/usr/bin/rrdupdate /var/lib/rrdtool/switch1-p3-monthly.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch1.chalkdust.org iso.3.6.1.2.1.2.2.1.10.3`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch1.chalkdust.org iso.3.6.1.2.1.2.2.1.16.3`

# switch1 port 4
/usr/bin/rrdupdate /var/lib/rrdtool/switch1-p4.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch1.chalkdust.org iso.3.6.1.2.1.2.2.1.10.4`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch1.chalkdust.org iso.3.6.1.2.1.2.2.1.16.4`
/usr/bin/rrdupdate /var/lib/rrdtool/switch1-p4-weekly.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch1.chalkdust.org iso.3.6.1.2.1.2.2.1.10.4`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch1.chalkdust.org iso.3.6.1.2.1.2.2.1.16.4`
/usr/bin/rrdupdate /var/lib/rrdtool/switch1-p4-monthly.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch1.chalkdust.org iso.3.6.1.2.1.2.2.1.10.4`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch1.chalkdust.org iso.3.6.1.2.1.2.2.1.16.4`

# switch1 port 5
/usr/bin/rrdupdate /var/lib/rrdtool/switch1-p5.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch1.chalkdust.org iso.3.6.1.2.1.2.2.1.10.5`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch1.chalkdust.org iso.3.6.1.2.1.2.2.1.16.5`
/usr/bin/rrdupdate /var/lib/rrdtool/switch1-p5-weekly.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch1.chalkdust.org iso.3.6.1.2.1.2.2.1.10.5`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch1.chalkdust.org iso.3.6.1.2.1.2.2.1.16.5`
/usr/bin/rrdupdate /var/lib/rrdtool/switch1-p5-monthly.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch1.chalkdust.org iso.3.6.1.2.1.2.2.1.10.5`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch1.chalkdust.org iso.3.6.1.2.1.2.2.1.16.5`

# switch1 port 6
/usr/bin/rrdupdate /var/lib/rrdtool/switch1-p6.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch1.chalkdust.org iso.3.6.1.2.1.2.2.1.10.6`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch1.chalkdust.org iso.3.6.1.2.1.2.2.1.16.6`
/usr/bin/rrdupdate /var/lib/rrdtool/switch1-p6-weekly.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch1.chalkdust.org iso.3.6.1.2.1.2.2.1.10.6`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch1.chalkdust.org iso.3.6.1.2.1.2.2.1.16.6`
/usr/bin/rrdupdate /var/lib/rrdtool/switch1-p6-monthly.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch1.chalkdust.org iso.3.6.1.2.1.2.2.1.10.6`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch1.chalkdust.org iso.3.6.1.2.1.2.2.1.16.6`

# switch1 port 7
/usr/bin/rrdupdate /var/lib/rrdtool/switch1-p7.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch1.chalkdust.org iso.3.6.1.2.1.2.2.1.10.7`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch1.chalkdust.org iso.3.6.1.2.1.2.2.1.16.7`
/usr/bin/rrdupdate /var/lib/rrdtool/switch1-p7-weekly.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch1.chalkdust.org iso.3.6.1.2.1.2.2.1.10.7`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch1.chalkdust.org iso.3.6.1.2.1.2.2.1.16.7`
/usr/bin/rrdupdate /var/lib/rrdtool/switch1-p7-monthly.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch1.chalkdust.org iso.3.6.1.2.1.2.2.1.10.7`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch1.chalkdust.org iso.3.6.1.2.1.2.2.1.16.7`

# switch1 port 8
/usr/bin/rrdupdate /var/lib/rrdtool/switch1-p8.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch1.chalkdust.org iso.3.6.1.2.1.2.2.1.10.8`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch1.chalkdust.org iso.3.6.1.2.1.2.2.1.16.8`
/usr/bin/rrdupdate /var/lib/rrdtool/switch1-p8-weekly.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch1.chalkdust.org iso.3.6.1.2.1.2.2.1.10.8`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch1.chalkdust.org iso.3.6.1.2.1.2.2.1.16.8`
/usr/bin/rrdupdate /var/lib/rrdtool/switch1-p8-monthly.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch1.chalkdust.org iso.3.6.1.2.1.2.2.1.10.8`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch1.chalkdust.org iso.3.6.1.2.1.2.2.1.16.8`


# graphs
# switch1 port 1
/usr/bin/rrdtool graph /var/www/bandwidth/switch1/switch1-p1-daily.png -a PNG -h 125 -s -129600 -v "Data Throughput" -t "switch1 - Port: 1 (Daily)" \
    'DEF:in=/var/lib/rrdtool/switch1-p1.rrd:in:AVERAGE' \
    'DEF:out=/var/lib/rrdtool/switch1-p1.rrd:out:AVERAGE' \
    'CDEF:kbin=in,1024,/' \
    'CDEF:kbout=out,1024,/' \
    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\j' \
    'GPRINT:kbin:LAST:Last Bandwidth In\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\:   %3.2lf KBps\j' \
    'GPRINT:kbin:AVERAGE:Average Bandwidth In\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\:%3.2lf KBps\j'
/usr/bin/rrdtool graph /var/www/bandwidth/switch1/switch1-p1-weekly.png -a PNG -h 125 -s -432000 -v "Data Throughput" -t "switch1 - Port: 1 (Weekly)" \
    'DEF:in=/var/lib/rrdtool/switch1-p1-weekly.rrd:in:AVERAGE' \
    'DEF:out=/var/lib/rrdtool/switch1-p1-weekly.rrd:out:AVERAGE' \
    'CDEF:kbin=in,1024,/' \
    'CDEF:kbout=out,1024,/' \
    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\j' \
    'GPRINT:kbin:LAST:Last Bandwidth In\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\:   %3.2lf KBps\j' \
    'GPRINT:kbin:AVERAGE:Average Bandwidth In\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\:%3.2lf KBps\j'
/usr/bin/rrdtool graph /var/www/bandwidth/switch1/switch1-p1-monthly.png -a PNG -h 125 -s -2592000 -v "Data Throughput" -t "switch1 - Port: 1 (Monthly)" \
    'DEF:in=/var/lib/rrdtool/switch1-p1-monthly.rrd:in:AVERAGE' \
    'DEF:out=/var/lib/rrdtool/switch1-p1-monthly.rrd:out:AVERAGE' \
    'CDEF:kbin=in,1024,/' \
    'CDEF:kbout=out,1024,/' \
    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\j' \
    'GPRINT:kbin:LAST:Last Bandwidth In\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\:   %3.2lf KBps\j' \
    'GPRINT:kbin:AVERAGE:Average Bandwidth In\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\:%3.2lf KBps\j'

# switch1 port 2
/usr/bin/rrdtool graph /var/www/bandwidth/switch1/switch1-p2-daily.png -a PNG -h 125 -s -129600 -v "Data Throughput" -t "switch1 - Port: 2 (Daily)" \
    'DEF:in=/var/lib/rrdtool/switch1-p2.rrd:in:AVERAGE' \
    'DEF:out=/var/lib/rrdtool/switch1-p2.rrd:out:AVERAGE' \
    'CDEF:kbin=in,1024,/' \
    'CDEF:kbout=out,1024,/' \
    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\j' \
    'GPRINT:kbin:LAST:Last Bandwidth In\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\:   %3.2lf KBps\j' \
    'GPRINT:kbin:AVERAGE:Average Bandwidth In\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\:%3.2lf KBps\j'
/usr/bin/rrdtool graph /var/www/bandwidth/switch1/switch1-p2-weekly.png -a PNG -h 125 -s -432000 -v "Data Throughput" -t "switch1 - Port: 2 (Weekly)" \
    'DEF:in=/var/lib/rrdtool/switch1-p2-weekly.rrd:in:AVERAGE' \
    'DEF:out=/var/lib/rrdtool/switch1-p2-weekly.rrd:out:AVERAGE' \
    'CDEF:kbin=in,1024,/' \
    'CDEF:kbout=out,1024,/' \
    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\j' \
    'GPRINT:kbin:LAST:Last Bandwidth In\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\:   %3.2lf KBps\j' \
    'GPRINT:kbin:AVERAGE:Average Bandwidth In\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\:%3.2lf KBps\j'
/usr/bin/rrdtool graph /var/www/bandwidth/switch1/switch1-p2-monthly.png -a PNG -h 125 -s -2592000 -v "Data Throughput" -t "switch1 - Port: 2 (Monthly)" \
    'DEF:in=/var/lib/rrdtool/switch1-p2-monthly.rrd:in:AVERAGE' \
    'DEF:out=/var/lib/rrdtool/switch1-p2-monthly.rrd:out:AVERAGE' \
    'CDEF:kbin=in,1024,/' \
    'CDEF:kbout=out,1024,/' \
    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\j' \
    'GPRINT:kbin:LAST:Last Bandwidth In\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\:   %3.2lf KBps\j' \
    'GPRINT:kbin:AVERAGE:Average Bandwidth In\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\:%3.2lf KBps\j'

# switch1 port 3
/usr/bin/rrdtool graph /var/www/bandwidth/switch1/switch1-p3-daily.png -a PNG -h 125 -s -129600 -v "Data Throughput" -t "switch1 - Port: 3 (Daily)" \
    'DEF:in=/var/lib/rrdtool/switch1-p3.rrd:in:AVERAGE' \
    'DEF:out=/var/lib/rrdtool/switch1-p3.rrd:out:AVERAGE' \
    'CDEF:kbin=in,1024,/' \
    'CDEF:kbout=out,1024,/' \
    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\j' \
    'GPRINT:kbin:LAST:Last Bandwidth In\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\:   %3.2lf KBps\j' \
    'GPRINT:kbin:AVERAGE:Average Bandwidth In\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\:%3.2lf KBps\j'
/usr/bin/rrdtool graph /var/www/bandwidth/switch1/switch1-p3-weekly.png -a PNG -h 125 -s -432000 -v "Data Throughput" -t "switch1 - Port: 3 (Weekly)" \
    'DEF:in=/var/lib/rrdtool/switch1-p3-weekly.rrd:in:AVERAGE' \
    'DEF:out=/var/lib/rrdtool/switch1-p3-weekly.rrd:out:AVERAGE' \
    'CDEF:kbin=in,1024,/' \
    'CDEF:kbout=out,1024,/' \
    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\j' \
    'GPRINT:kbin:LAST:Last Bandwidth In\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\:   %3.2lf KBps\j' \
    'GPRINT:kbin:AVERAGE:Average Bandwidth In\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\:%3.2lf KBps\j'
/usr/bin/rrdtool graph /var/www/bandwidth/switch1/switch1-p3-monthly.png -a PNG -h 125 -s -2592000 -v "Data Throughput" -t "switch1 - Port: 3 (Monthly)" \
    'DEF:in=/var/lib/rrdtool/switch1-p3-monthly.rrd:in:AVERAGE' \
    'DEF:out=/var/lib/rrdtool/switch1-p3-monthly.rrd:out:AVERAGE' \
    'CDEF:kbin=in,1024,/' \
    'CDEF:kbout=out,1024,/' \
    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\j' \
    'GPRINT:kbin:LAST:Last Bandwidth In\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\:   %3.2lf KBps\j' \
    'GPRINT:kbin:AVERAGE:Average Bandwidth In\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\:%3.2lf KBps\j'

# switch1 port 4
/usr/bin/rrdtool graph /var/www/bandwidth/switch1/switch1-p4-daily.png -a PNG -h 125 -s -129600 -v "Data Throughput" -t "switch1 - Port: 4 (Daily)" \
    'DEF:in=/var/lib/rrdtool/switch1-p4.rrd:in:AVERAGE' \
    'DEF:out=/var/lib/rrdtool/switch1-p4.rrd:out:AVERAGE' \
    'CDEF:kbin=in,1024,/' \
    'CDEF:kbout=out,1024,/' \
    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\j' \
    'GPRINT:kbin:LAST:Last Bandwidth In\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\:   %3.2lf KBps\j' \
    'GPRINT:kbin:AVERAGE:Average Bandwidth In\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\:%3.2lf KBps\j'
/usr/bin/rrdtool graph /var/www/bandwidth/switch1/switch1-p4-weekly.png -a PNG -h 125 -s -432000 -v "Data Throughput" -t "switch1 - Port: 4 (Weekly)" \
    'DEF:in=/var/lib/rrdtool/switch1-p4-weekly.rrd:in:AVERAGE' \
    'DEF:out=/var/lib/rrdtool/switch1-p4-weekly.rrd:out:AVERAGE' \
    'CDEF:kbin=in,1024,/' \
    'CDEF:kbout=out,1024,/' \
    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\j' \
    'GPRINT:kbin:LAST:Last Bandwidth In\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\:   %3.2lf KBps\j' \
    'GPRINT:kbin:AVERAGE:Average Bandwidth In\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\:%3.2lf KBps\j'
/usr/bin/rrdtool graph /var/www/bandwidth/switch1/switch1-p4-monthly.png -a PNG -h 125 -s -2592000 -v "Data Throughput" -t "switch1 - Port: 4 (Monthly)" \
    'DEF:in=/var/lib/rrdtool/switch1-p4-monthly.rrd:in:AVERAGE' \
    'DEF:out=/var/lib/rrdtool/switch1-p4-monthly.rrd:out:AVERAGE' \
    'CDEF:kbin=in,1024,/' \
    'CDEF:kbout=out,1024,/' \
    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\j' \
    'GPRINT:kbin:LAST:Last Bandwidth In\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\:   %3.2lf KBps\j' \
    'GPRINT:kbin:AVERAGE:Average Bandwidth In\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\:%3.2lf KBps\j'

# switch1 port 5
/usr/bin/rrdtool graph /var/www/bandwidth/switch1/switch1-p5-daily.png -a PNG -h 125 -s -129600 -v "Data Throughput" -t "switch1 - Port: 5 (Daily)" \
    'DEF:in=/var/lib/rrdtool/switch1-p5.rrd:in:AVERAGE' \
    'DEF:out=/var/lib/rrdtool/switch1-p5.rrd:out:AVERAGE' \
    'CDEF:kbin=in,1024,/' \
    'CDEF:kbout=out,1024,/' \
    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\j' \
    'GPRINT:kbin:LAST:Last Bandwidth In\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\:   %3.2lf KBps\j' \
    'GPRINT:kbin:AVERAGE:Average Bandwidth In\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\:%3.2lf KBps\j'
/usr/bin/rrdtool graph /var/www/bandwidth/switch1/switch1-p5-weekly.png -a PNG -h 125 -s -432000 -v "Data Throughput" -t "switch1 - Port: 5 (Weekly)" \
    'DEF:in=/var/lib/rrdtool/switch1-p5-weekly.rrd:in:AVERAGE' \
    'DEF:out=/var/lib/rrdtool/switch1-p5-weekly.rrd:out:AVERAGE' \
    'CDEF:kbin=in,1024,/' \
    'CDEF:kbout=out,1024,/' \
    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\j' \
    'GPRINT:kbin:LAST:Last Bandwidth In\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\:   %3.2lf KBps\j' \
    'GPRINT:kbin:AVERAGE:Average Bandwidth In\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\:%3.2lf KBps\j'
/usr/bin/rrdtool graph /var/www/bandwidth/switch1/switch1-p5-monthly.png -a PNG -h 125 -s -2592000 -v "Data Throughput" -t "switch1 - Port: 5 (Monthly)" \
    'DEF:in=/var/lib/rrdtool/switch1-p5-monthly.rrd:in:AVERAGE' \
    'DEF:out=/var/lib/rrdtool/switch1-p5-monthly.rrd:out:AVERAGE' \
    'CDEF:kbin=in,1024,/' \
    'CDEF:kbout=out,1024,/' \
    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\j' \
    'GPRINT:kbin:LAST:Last Bandwidth In\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\:   %3.2lf KBps\j' \
    'GPRINT:kbin:AVERAGE:Average Bandwidth In\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\:%3.2lf KBps\j'

# switch1 port 6
/usr/bin/rrdtool graph /var/www/bandwidth/switch1/switch1-p6-daily.png -a PNG -h 125 -s -129600 -v "Data Throughput" -t "switch1 - Port: 6 (Daily)" \
    'DEF:in=/var/lib/rrdtool/switch1-p6.rrd:in:AVERAGE' \
    'DEF:out=/var/lib/rrdtool/switch1-p6.rrd:out:AVERAGE' \
    'CDEF:kbin=in,1024,/' \
    'CDEF:kbout=out,1024,/' \
    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\j' \
    'GPRINT:kbin:LAST:Last Bandwidth In\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\:   %3.2lf KBps\j' \
    'GPRINT:kbin:AVERAGE:Average Bandwidth In\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\:%3.2lf KBps\j'
/usr/bin/rrdtool graph /var/www/bandwidth/switch1/switch1-p6-weekly.png -a PNG -h 125 -s -432000 -v "Data Throughput" -t "switch1 - Port: 6 (Weekly)" \
    'DEF:in=/var/lib/rrdtool/switch1-p6-weekly.rrd:in:AVERAGE' \
    'DEF:out=/var/lib/rrdtool/switch1-p6-weekly.rrd:out:AVERAGE' \
    'CDEF:kbin=in,1024,/' \
    'CDEF:kbout=out,1024,/' \
    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\j' \
    'GPRINT:kbin:LAST:Last Bandwidth In\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\:   %3.2lf KBps\j' \
    'GPRINT:kbin:AVERAGE:Average Bandwidth In\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\:%3.2lf KBps\j'
/usr/bin/rrdtool graph /var/www/bandwidth/switch1/switch1-p6-monthly.png -a PNG -h 125 -s -2592000 -v "Data Throughput" -t "switch1 - Port: 6 (Monthly)" \
    'DEF:in=/var/lib/rrdtool/switch1-p6-monthly.rrd:in:AVERAGE' \
    'DEF:out=/var/lib/rrdtool/switch1-p6-monthly.rrd:out:AVERAGE' \
    'CDEF:kbin=in,1024,/' \
    'CDEF:kbout=out,1024,/' \
    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\j' \
    'GPRINT:kbin:LAST:Last Bandwidth In\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\:   %3.2lf KBps\j' \
    'GPRINT:kbin:AVERAGE:Average Bandwidth In\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\:%3.2lf KBps\j'

# switch1 port 7
/usr/bin/rrdtool graph /var/www/bandwidth/switch1/switch1-p7-daily.png -a PNG -h 125 -s -129600 -v "Data Throughput" -t "switch1 - Port: 7 (Daily)" \
    'DEF:in=/var/lib/rrdtool/switch1-p7.rrd:in:AVERAGE' \
    'DEF:out=/var/lib/rrdtool/switch1-p7.rrd:out:AVERAGE' \
    'CDEF:kbin=in,1024,/' \
    'CDEF:kbout=out,1024,/' \
    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\j' \
    'GPRINT:kbin:LAST:Last Bandwidth In\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\:   %3.2lf KBps\j' \
    'GPRINT:kbin:AVERAGE:Average Bandwidth In\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\:%3.2lf KBps\j'
/usr/bin/rrdtool graph /var/www/bandwidth/switch1/switch1-p7-weekly.png -a PNG -h 125 -s -432000 -v "Data Throughput" -t "switch1 - Port: 7 (Weekly)" \
    'DEF:in=/var/lib/rrdtool/switch1-p7-weekly.rrd:in:AVERAGE' \
    'DEF:out=/var/lib/rrdtool/switch1-p7-weekly.rrd:out:AVERAGE' \
    'CDEF:kbin=in,1024,/' \
    'CDEF:kbout=out,1024,/' \
    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\j' \
    'GPRINT:kbin:LAST:Last Bandwidth In\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\:   %3.2lf KBps\j' \
    'GPRINT:kbin:AVERAGE:Average Bandwidth In\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\:%3.2lf KBps\j'
/usr/bin/rrdtool graph /var/www/bandwidth/switch1/switch1-p7-monthly.png -a PNG -h 125 -s -2592000 -v "Data Throughput" -t "switch1 - Port: 7 (Monthly)" \
    'DEF:in=/var/lib/rrdtool/switch1-p7-monthly.rrd:in:AVERAGE' \
    'DEF:out=/var/lib/rrdtool/switch1-p7-monthly.rrd:out:AVERAGE' \
    'CDEF:kbin=in,1024,/' \
    'CDEF:kbout=out,1024,/' \
    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\j' \
    'GPRINT:kbin:LAST:Last Bandwidth In\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\:   %3.2lf KBps\j' \
    'GPRINT:kbin:AVERAGE:Average Bandwidth In\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\:%3.2lf KBps\j'

# switch1 port 8
/usr/bin/rrdtool graph /var/www/bandwidth/switch1/switch1-p8-daily.png -a PNG -h 125 -s -129600 -v "Data Throughput" -t "switch1 - Port: 8 (Daily)" \
    'DEF:in=/var/lib/rrdtool/switch1-p8.rrd:in:AVERAGE' \
    'DEF:out=/var/lib/rrdtool/switch1-p8.rrd:out:AVERAGE' \
    'CDEF:kbin=in,1024,/' \
    'CDEF:kbout=out,1024,/' \
    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\j' \
    'GPRINT:kbin:LAST:Last Bandwidth In\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\:   %3.2lf KBps\j' \
    'GPRINT:kbin:AVERAGE:Average Bandwidth In\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\:%3.2lf KBps\j'
/usr/bin/rrdtool graph /var/www/bandwidth/switch1/switch1-p8-weekly.png -a PNG -h 125 -s -432000 -v "Data Throughput" -t "switch1 - Port: 8 (Weekly)" \
    'DEF:in=/var/lib/rrdtool/switch1-p8-weekly.rrd:in:AVERAGE' \
    'DEF:out=/var/lib/rrdtool/switch1-p8-weekly.rrd:out:AVERAGE' \
    'CDEF:kbin=in,1024,/' \
    'CDEF:kbout=out,1024,/' \
    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\j' \
    'GPRINT:kbin:LAST:Last Bandwidth In\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\:   %3.2lf KBps\j' \
    'GPRINT:kbin:AVERAGE:Average Bandwidth In\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\:%3.2lf KBps\j'
/usr/bin/rrdtool graph /var/www/bandwidth/switch1/switch1-p8-monthly.png -a PNG -h 125 -s -2592000 -v "Data Throughput" -t "switch1 - Port: 8 (Monthly)" \
    'DEF:in=/var/lib/rrdtool/switch1-p8-monthly.rrd:in:AVERAGE' \
    'DEF:out=/var/lib/rrdtool/switch1-p8-monthly.rrd:out:AVERAGE' \
    'CDEF:kbin=in,1024,/' \
    'CDEF:kbout=out,1024,/' \
    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\j' \
    'GPRINT:kbin:LAST:Last Bandwidth In\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\:   %3.2lf KBps\j' \
    'GPRINT:kbin:AVERAGE:Average Bandwidth In\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\:%3.2lf KBps\j'



sleep 10


# databases
# switch2 port 1
/usr/bin/rrdupdate /var/lib/rrdtool/switch2-p1.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch2.chalkdust.org iso.3.6.1.2.1.2.2.1.10.1`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch2.chalkdust.org iso.3.6.1.2.1.2.2.1.16.1`
/usr/bin/rrdupdate /var/lib/rrdtool/switch2-p1-weekly.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch2.chalkdust.org iso.3.6.1.2.1.2.2.1.10.1`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch2.chalkdust.org iso.3.6.1.2.1.2.2.1.16.1`
/usr/bin/rrdupdate /var/lib/rrdtool/switch2-p1-monthly.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch2.chalkdust.org iso.3.6.1.2.1.2.2.1.10.1`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch2.chalkdust.org iso.3.6.1.2.1.2.2.1.16.1`

# switch2 port 2
/usr/bin/rrdupdate /var/lib/rrdtool/switch2-p2.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch2.chalkdust.org iso.3.6.1.2.1.2.2.1.10.2`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch2.chalkdust.org iso.3.6.1.2.1.2.2.1.16.2`
/usr/bin/rrdupdate /var/lib/rrdtool/switch2-p2-weekly.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch2.chalkdust.org iso.3.6.1.2.1.2.2.1.10.2`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch2.chalkdust.org iso.3.6.1.2.1.2.2.1.16.2`
/usr/bin/rrdupdate /var/lib/rrdtool/switch2-p2-monthly.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch2.chalkdust.org iso.3.6.1.2.1.2.2.1.10.2`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch2.chalkdust.org iso.3.6.1.2.1.2.2.1.16.2`

# switch2 port 3
/usr/bin/rrdupdate /var/lib/rrdtool/switch2-p3.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch2.chalkdust.org iso.3.6.1.2.1.2.2.1.10.3`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch2.chalkdust.org iso.3.6.1.2.1.2.2.1.16.3`
/usr/bin/rrdupdate /var/lib/rrdtool/switch2-p3-weekly.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch2.chalkdust.org iso.3.6.1.2.1.2.2.1.10.3`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch2.chalkdust.org iso.3.6.1.2.1.2.2.1.16.3`
/usr/bin/rrdupdate /var/lib/rrdtool/switch2-p3-monthly.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch2.chalkdust.org iso.3.6.1.2.1.2.2.1.10.3`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch2.chalkdust.org iso.3.6.1.2.1.2.2.1.16.3`

# switch2 port 4
/usr/bin/rrdupdate /var/lib/rrdtool/switch2-p4.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch2.chalkdust.org iso.3.6.1.2.1.2.2.1.10.4`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch2.chalkdust.org iso.3.6.1.2.1.2.2.1.16.4`
/usr/bin/rrdupdate /var/lib/rrdtool/switch2-p4-weekly.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch2.chalkdust.org iso.3.6.1.2.1.2.2.1.10.4`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch2.chalkdust.org iso.3.6.1.2.1.2.2.1.16.4`
/usr/bin/rrdupdate /var/lib/rrdtool/switch2-p4-monthly.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch2.chalkdust.org iso.3.6.1.2.1.2.2.1.10.4`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch2.chalkdust.org iso.3.6.1.2.1.2.2.1.16.4`

# switch2 port 5
/usr/bin/rrdupdate /var/lib/rrdtool/switch2-p5.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch2.chalkdust.org iso.3.6.1.2.1.2.2.1.10.5`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch2.chalkdust.org iso.3.6.1.2.1.2.2.1.16.5`
/usr/bin/rrdupdate /var/lib/rrdtool/switch2-p5-weekly.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch2.chalkdust.org iso.3.6.1.2.1.2.2.1.10.5`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch2.chalkdust.org iso.3.6.1.2.1.2.2.1.16.5`
/usr/bin/rrdupdate /var/lib/rrdtool/switch2-p5-monthly.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch2.chalkdust.org iso.3.6.1.2.1.2.2.1.10.5`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch2.chalkdust.org iso.3.6.1.2.1.2.2.1.16.5`

# switch2 port 6
/usr/bin/rrdupdate /var/lib/rrdtool/switch2-p6.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch2.chalkdust.org iso.3.6.1.2.1.2.2.1.10.6`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch2.chalkdust.org iso.3.6.1.2.1.2.2.1.16.6`
/usr/bin/rrdupdate /var/lib/rrdtool/switch2-p6-weekly.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch2.chalkdust.org iso.3.6.1.2.1.2.2.1.10.6`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch2.chalkdust.org iso.3.6.1.2.1.2.2.1.16.6`
/usr/bin/rrdupdate /var/lib/rrdtool/switch2-p6-monthly.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch2.chalkdust.org iso.3.6.1.2.1.2.2.1.10.6`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch2.chalkdust.org iso.3.6.1.2.1.2.2.1.16.6`

# switch2 port 7
/usr/bin/rrdupdate /var/lib/rrdtool/switch2-p7.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch2.chalkdust.org iso.3.6.1.2.1.2.2.1.10.7`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch2.chalkdust.org iso.3.6.1.2.1.2.2.1.16.7`
/usr/bin/rrdupdate /var/lib/rrdtool/switch2-p7-weekly.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch2.chalkdust.org iso.3.6.1.2.1.2.2.1.10.7`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch2.chalkdust.org iso.3.6.1.2.1.2.2.1.16.7`
/usr/bin/rrdupdate /var/lib/rrdtool/switch2-p7-monthly.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch2.chalkdust.org iso.3.6.1.2.1.2.2.1.10.7`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch2.chalkdust.org iso.3.6.1.2.1.2.2.1.16.7`

# switch2 port 8
/usr/bin/rrdupdate /var/lib/rrdtool/switch2-p8.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch2.chalkdust.org iso.3.6.1.2.1.2.2.1.10.8`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch2.chalkdust.org iso.3.6.1.2.1.2.2.1.16.8`
/usr/bin/rrdupdate /var/lib/rrdtool/switch2-p8-weekly.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch2.chalkdust.org iso.3.6.1.2.1.2.2.1.10.8`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch2.chalkdust.org iso.3.6.1.2.1.2.2.1.16.8`
/usr/bin/rrdupdate /var/lib/rrdtool/switch2-p8-monthly.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch2.chalkdust.org iso.3.6.1.2.1.2.2.1.10.8`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv switch2.chalkdust.org iso.3.6.1.2.1.2.2.1.16.8`


# graphs
# switch2 port 1
/usr/bin/rrdtool graph /var/www/bandwidth/switch2/switch2-p1-daily.png -a PNG -h 125 -s -129600 -v "Data Throughput" -t "switch2 - Port: 1 (Daily)" \
    'DEF:in=/var/lib/rrdtool/switch2-p1.rrd:in:AVERAGE' \
    'DEF:out=/var/lib/rrdtool/switch2-p1.rrd:out:AVERAGE' \
    'CDEF:kbin=in,1024,/' \
    'CDEF:kbout=out,1024,/' \
    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\j' \
    'GPRINT:kbin:LAST:Last Bandwidth In\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\:   %3.2lf KBps\j' \
    'GPRINT:kbin:AVERAGE:Average Bandwidth In\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\:%3.2lf KBps\j'
/usr/bin/rrdtool graph /var/www/bandwidth/switch2/switch2-p1-weekly.png -a PNG -h 125 -s -432000 -v "Data Throughput" -t "switch2 - Port: 1 (Weekly)" \
    'DEF:in=/var/lib/rrdtool/switch2-p1-weekly.rrd:in:AVERAGE' \
    'DEF:out=/var/lib/rrdtool/switch2-p1-weekly.rrd:out:AVERAGE' \
    'CDEF:kbin=in,1024,/' \
    'CDEF:kbout=out,1024,/' \
    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\j' \
    'GPRINT:kbin:LAST:Last Bandwidth In\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\:   %3.2lf KBps\j' \
    'GPRINT:kbin:AVERAGE:Average Bandwidth In\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\:%3.2lf KBps\j'
/usr/bin/rrdtool graph /var/www/bandwidth/switch2/switch2-p1-monthly.png -a PNG -h 125 -s -2592000 -v "Data Throughput" -t "switch2 - Port: 1 (Monthly)" \
    'DEF:in=/var/lib/rrdtool/switch2-p1-monthly.rrd:in:AVERAGE' \
    'DEF:out=/var/lib/rrdtool/switch2-p1-monthly.rrd:out:AVERAGE' \
    'CDEF:kbin=in,1024,/' \
    'CDEF:kbout=out,1024,/' \
    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\j' \
    'GPRINT:kbin:LAST:Last Bandwidth In\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\:   %3.2lf KBps\j' \
    'GPRINT:kbin:AVERAGE:Average Bandwidth In\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\:%3.2lf KBps\j'

# switch2 port 2
/usr/bin/rrdtool graph /var/www/bandwidth/switch2/switch2-p2-daily.png -a PNG -h 125 -s -129600 -v "Data Throughput" -t "switch2 - Port: 2 (Daily)" \
    'DEF:in=/var/lib/rrdtool/switch2-p2.rrd:in:AVERAGE' \
    'DEF:out=/var/lib/rrdtool/switch2-p2.rrd:out:AVERAGE' \
    'CDEF:kbin=in,1024,/' \
    'CDEF:kbout=out,1024,/' \
    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\j' \
    'GPRINT:kbin:LAST:Last Bandwidth In\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\:   %3.2lf KBps\j' \
    'GPRINT:kbin:AVERAGE:Average Bandwidth In\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\:%3.2lf KBps\j'
/usr/bin/rrdtool graph /var/www/bandwidth/switch2/switch2-p2-weekly.png -a PNG -h 125 -s -432000 -v "Data Throughput" -t "switch2 - Port: 2 (Weekly)" \
    'DEF:in=/var/lib/rrdtool/switch2-p2-weekly.rrd:in:AVERAGE' \
    'DEF:out=/var/lib/rrdtool/switch2-p2-weekly.rrd:out:AVERAGE' \
    'CDEF:kbin=in,1024,/' \
    'CDEF:kbout=out,1024,/' \
    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\j' \
    'GPRINT:kbin:LAST:Last Bandwidth In\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\:   %3.2lf KBps\j' \
    'GPRINT:kbin:AVERAGE:Average Bandwidth In\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\:%3.2lf KBps\j'
/usr/bin/rrdtool graph /var/www/bandwidth/switch2/switch2-p2-monthly.png -a PNG -h 125 -s -2592000 -v "Data Throughput" -t "switch2 - Port: 2 (Monthly)" \
    'DEF:in=/var/lib/rrdtool/switch2-p2-monthly.rrd:in:AVERAGE' \
    'DEF:out=/var/lib/rrdtool/switch2-p2-monthly.rrd:out:AVERAGE' \
    'CDEF:kbin=in,1024,/' \
    'CDEF:kbout=out,1024,/' \
    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\j' \
    'GPRINT:kbin:LAST:Last Bandwidth In\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\:   %3.2lf KBps\j' \
    'GPRINT:kbin:AVERAGE:Average Bandwidth In\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\:%3.2lf KBps\j'

# switch2 port 3
/usr/bin/rrdtool graph /var/www/bandwidth/switch2/switch2-p3-daily.png -a PNG -h 125 -s -129600 -v "Data Throughput" -t "switch2 - Port: 3 (Daily)" \
    'DEF:in=/var/lib/rrdtool/switch2-p3.rrd:in:AVERAGE' \
    'DEF:out=/var/lib/rrdtool/switch2-p3.rrd:out:AVERAGE' \
    'CDEF:kbin=in,1024,/' \
    'CDEF:kbout=out,1024,/' \
    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\j' \
    'GPRINT:kbin:LAST:Last Bandwidth In\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\:   %3.2lf KBps\j' \
    'GPRINT:kbin:AVERAGE:Average Bandwidth In\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\:%3.2lf KBps\j'
/usr/bin/rrdtool graph /var/www/bandwidth/switch2/switch2-p3-weekly.png -a PNG -h 125 -s -432000 -v "Data Throughput" -t "switch2 - Port: 3 (Weekly)" \
    'DEF:in=/var/lib/rrdtool/switch2-p3-weekly.rrd:in:AVERAGE' \
    'DEF:out=/var/lib/rrdtool/switch2-p3-weekly.rrd:out:AVERAGE' \
    'CDEF:kbin=in,1024,/' \
    'CDEF:kbout=out,1024,/' \
    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\j' \
    'GPRINT:kbin:LAST:Last Bandwidth In\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\:   %3.2lf KBps\j' \
    'GPRINT:kbin:AVERAGE:Average Bandwidth In\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\:%3.2lf KBps\j'
/usr/bin/rrdtool graph /var/www/bandwidth/switch2/switch2-p3-monthly.png -a PNG -h 125 -s -2592000 -v "Data Throughput" -t "switch2 - Port: 3 (Monthly)" \
    'DEF:in=/var/lib/rrdtool/switch2-p3-monthly.rrd:in:AVERAGE' \
    'DEF:out=/var/lib/rrdtool/switch2-p3-monthly.rrd:out:AVERAGE' \
    'CDEF:kbin=in,1024,/' \
    'CDEF:kbout=out,1024,/' \
    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\j' \
    'GPRINT:kbin:LAST:Last Bandwidth In\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\:   %3.2lf KBps\j' \
    'GPRINT:kbin:AVERAGE:Average Bandwidth In\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\:%3.2lf KBps\j'

# switch2 port 4
/usr/bin/rrdtool graph /var/www/bandwidth/switch2/switch2-p4-daily.png -a PNG -h 125 -s -129600 -v "Data Throughput" -t "switch2 - Port: 4 (Daily)" \
    'DEF:in=/var/lib/rrdtool/switch2-p4.rrd:in:AVERAGE' \
    'DEF:out=/var/lib/rrdtool/switch2-p4.rrd:out:AVERAGE' \
    'CDEF:kbin=in,1024,/' \
    'CDEF:kbout=out,1024,/' \
    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\j' \
    'GPRINT:kbin:LAST:Last Bandwidth In\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\:   %3.2lf KBps\j' \
    'GPRINT:kbin:AVERAGE:Average Bandwidth In\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\:%3.2lf KBps\j'
/usr/bin/rrdtool graph /var/www/bandwidth/switch2/switch2-p4-weekly.png -a PNG -h 125 -s -432000 -v "Data Throughput" -t "switch2 - Port: 4 (Weekly)" \
    'DEF:in=/var/lib/rrdtool/switch2-p4-weekly.rrd:in:AVERAGE' \
    'DEF:out=/var/lib/rrdtool/switch2-p4-weekly.rrd:out:AVERAGE' \
    'CDEF:kbin=in,1024,/' \
    'CDEF:kbout=out,1024,/' \
    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\j' \
    'GPRINT:kbin:LAST:Last Bandwidth In\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\:   %3.2lf KBps\j' \
    'GPRINT:kbin:AVERAGE:Average Bandwidth In\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\:%3.2lf KBps\j'
/usr/bin/rrdtool graph /var/www/bandwidth/switch2/switch2-p4-monthly.png -a PNG -h 125 -s -2592000 -v "Data Throughput" -t "switch2 - Port: 4 (Monthly)" \
    'DEF:in=/var/lib/rrdtool/switch2-p4-monthly.rrd:in:AVERAGE' \
    'DEF:out=/var/lib/rrdtool/switch2-p4-monthly.rrd:out:AVERAGE' \
    'CDEF:kbin=in,1024,/' \
    'CDEF:kbout=out,1024,/' \
    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\j' \
    'GPRINT:kbin:LAST:Last Bandwidth In\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\:   %3.2lf KBps\j' \
    'GPRINT:kbin:AVERAGE:Average Bandwidth In\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\:%3.2lf KBps\j'

# switch2 port 5
/usr/bin/rrdtool graph /var/www/bandwidth/switch2/switch2-p5-daily.png -a PNG -h 125 -s -129600 -v "Data Throughput" -t "switch2 - Port: 5 (Daily)" \
    'DEF:in=/var/lib/rrdtool/switch2-p5.rrd:in:AVERAGE' \
    'DEF:out=/var/lib/rrdtool/switch2-p5.rrd:out:AVERAGE' \
    'CDEF:kbin=in,1024,/' \
    'CDEF:kbout=out,1024,/' \
    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\j' \
    'GPRINT:kbin:LAST:Last Bandwidth In\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\:   %3.2lf KBps\j' \
    'GPRINT:kbin:AVERAGE:Average Bandwidth In\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\:%3.2lf KBps\j'
/usr/bin/rrdtool graph /var/www/bandwidth/switch2/switch2-p5-weekly.png -a PNG -h 125 -s -432000 -v "Data Throughput" -t "switch2 - Port: 5 (Weekly)" \
    'DEF:in=/var/lib/rrdtool/switch2-p5-weekly.rrd:in:AVERAGE' \
    'DEF:out=/var/lib/rrdtool/switch2-p5-weekly.rrd:out:AVERAGE' \
    'CDEF:kbin=in,1024,/' \
    'CDEF:kbout=out,1024,/' \
    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\j' \
    'GPRINT:kbin:LAST:Last Bandwidth In\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\:   %3.2lf KBps\j' \
    'GPRINT:kbin:AVERAGE:Average Bandwidth In\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\:%3.2lf KBps\j'
/usr/bin/rrdtool graph /var/www/bandwidth/switch2/switch2-p5-monthly.png -a PNG -h 125 -s -2592000 -v "Data Throughput" -t "switch2 - Port: 5 (Monthly)" \
    'DEF:in=/var/lib/rrdtool/switch2-p5-monthly.rrd:in:AVERAGE' \
    'DEF:out=/var/lib/rrdtool/switch2-p5-monthly.rrd:out:AVERAGE' \
    'CDEF:kbin=in,1024,/' \
    'CDEF:kbout=out,1024,/' \
    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\j' \
    'GPRINT:kbin:LAST:Last Bandwidth In\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\:   %3.2lf KBps\j' \
    'GPRINT:kbin:AVERAGE:Average Bandwidth In\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\:%3.2lf KBps\j'

# switch2 port 6
/usr/bin/rrdtool graph /var/www/bandwidth/switch2/switch2-p6-daily.png -a PNG -h 125 -s -129600 -v "Data Throughput" -t "switch2 - Port: 6 (Daily)" \
    'DEF:in=/var/lib/rrdtool/switch2-p6.rrd:in:AVERAGE' \
    'DEF:out=/var/lib/rrdtool/switch2-p6.rrd:out:AVERAGE' \
    'CDEF:kbin=in,1024,/' \
    'CDEF:kbout=out,1024,/' \
    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\j' \
    'GPRINT:kbin:LAST:Last Bandwidth In\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\:   %3.2lf KBps\j' \
    'GPRINT:kbin:AVERAGE:Average Bandwidth In\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\:%3.2lf KBps\j'
/usr/bin/rrdtool graph /var/www/bandwidth/switch2/switch2-p6-weekly.png -a PNG -h 125 -s -432000 -v "Data Throughput" -t "switch2 - Port: 6 (Weekly)" \
    'DEF:in=/var/lib/rrdtool/switch2-p6-weekly.rrd:in:AVERAGE' \
    'DEF:out=/var/lib/rrdtool/switch2-p6-weekly.rrd:out:AVERAGE' \
    'CDEF:kbin=in,1024,/' \
    'CDEF:kbout=out,1024,/' \
    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\j' \
    'GPRINT:kbin:LAST:Last Bandwidth In\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\:   %3.2lf KBps\j' \
    'GPRINT:kbin:AVERAGE:Average Bandwidth In\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\:%3.2lf KBps\j'
/usr/bin/rrdtool graph /var/www/bandwidth/switch2/switch2-p6-monthly.png -a PNG -h 125 -s -2592000 -v "Data Throughput" -t "switch2 - Port: 6 (Monthly)" \
    'DEF:in=/var/lib/rrdtool/switch2-p6-monthly.rrd:in:AVERAGE' \
    'DEF:out=/var/lib/rrdtool/switch2-p6-monthly.rrd:out:AVERAGE' \
    'CDEF:kbin=in,1024,/' \
    'CDEF:kbout=out,1024,/' \
    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\j' \
    'GPRINT:kbin:LAST:Last Bandwidth In\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\:   %3.2lf KBps\j' \
    'GPRINT:kbin:AVERAGE:Average Bandwidth In\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\:%3.2lf KBps\j'

# switch2 port 7
/usr/bin/rrdtool graph /var/www/bandwidth/switch2/switch2-p7-daily.png -a PNG -h 125 -s -129600 -v "Data Throughput" -t "switch2 - Port: 7 (Daily)" \
    'DEF:in=/var/lib/rrdtool/switch2-p7.rrd:in:AVERAGE' \
    'DEF:out=/var/lib/rrdtool/switch2-p7.rrd:out:AVERAGE' \
    'CDEF:kbin=in,1024,/' \
    'CDEF:kbout=out,1024,/' \
    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\j' \
    'GPRINT:kbin:LAST:Last Bandwidth In\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\:   %3.2lf KBps\j' \
    'GPRINT:kbin:AVERAGE:Average Bandwidth In\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\:%3.2lf KBps\j'
/usr/bin/rrdtool graph /var/www/bandwidth/switch2/switch2-p7-weekly.png -a PNG -h 125 -s -432000 -v "Data Throughput" -t "switch2 - Port: 7 (Weekly)" \
    'DEF:in=/var/lib/rrdtool/switch2-p7-weekly.rrd:in:AVERAGE' \
    'DEF:out=/var/lib/rrdtool/switch2-p7-weekly.rrd:out:AVERAGE' \
    'CDEF:kbin=in,1024,/' \
    'CDEF:kbout=out,1024,/' \
    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\j' \
    'GPRINT:kbin:LAST:Last Bandwidth In\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\:   %3.2lf KBps\j' \
    'GPRINT:kbin:AVERAGE:Average Bandwidth In\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\:%3.2lf KBps\j'
/usr/bin/rrdtool graph /var/www/bandwidth/switch2/switch2-p7-monthly.png -a PNG -h 125 -s -2592000 -v "Data Throughput" -t "switch2 - Port: 7 (Monthly)" \
    'DEF:in=/var/lib/rrdtool/switch2-p7-monthly.rrd:in:AVERAGE' \
    'DEF:out=/var/lib/rrdtool/switch2-p7-monthly.rrd:out:AVERAGE' \
    'CDEF:kbin=in,1024,/' \
    'CDEF:kbout=out,1024,/' \
    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\j' \
    'GPRINT:kbin:LAST:Last Bandwidth In\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\:   %3.2lf KBps\j' \
    'GPRINT:kbin:AVERAGE:Average Bandwidth In\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\:%3.2lf KBps\j'

# switch2 port 8
/usr/bin/rrdtool graph /var/www/bandwidth/switch2/switch2-p8-daily.png -a PNG -h 125 -s -129600 -v "Data Throughput" -t "switch2 - Port: 8 (Daily)" \
    'DEF:in=/var/lib/rrdtool/switch2-p8.rrd:in:AVERAGE' \
    'DEF:out=/var/lib/rrdtool/switch2-p8.rrd:out:AVERAGE' \
    'CDEF:kbin=in,1024,/' \
    'CDEF:kbout=out,1024,/' \
    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\j' \
    'GPRINT:kbin:LAST:Last Bandwidth In\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\:   %3.2lf KBps\j' \
    'GPRINT:kbin:AVERAGE:Average Bandwidth In\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\:%3.2lf KBps\j'
/usr/bin/rrdtool graph /var/www/bandwidth/switch2/switch2-p8-weekly.png -a PNG -h 125 -s -432000 -v "Data Throughput" -t "switch2 - Port: 8 (Weekly)" \
    'DEF:in=/var/lib/rrdtool/switch2-p8-weekly.rrd:in:AVERAGE' \
    'DEF:out=/var/lib/rrdtool/switch2-p8-weekly.rrd:out:AVERAGE' \
    'CDEF:kbin=in,1024,/' \
    'CDEF:kbout=out,1024,/' \
    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\j' \
    'GPRINT:kbin:LAST:Last Bandwidth In\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\:   %3.2lf KBps\j' \
    'GPRINT:kbin:AVERAGE:Average Bandwidth In\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\:%3.2lf KBps\j'
/usr/bin/rrdtool graph /var/www/bandwidth/switch2/switch2-p8-monthly.png -a PNG -h 125 -s -2592000 -v "Data Throughput" -t "switch2 - Port: 8 (Monthly)" \
    'DEF:in=/var/lib/rrdtool/switch2-p8-monthly.rrd:in:AVERAGE' \
    'DEF:out=/var/lib/rrdtool/switch2-p8-monthly.rrd:out:AVERAGE' \
    'CDEF:kbin=in,1024,/' \
    'CDEF:kbout=out,1024,/' \
    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\j' \
    'GPRINT:kbin:LAST:Last Bandwidth In\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\:   %3.2lf KBps\j' \
    'GPRINT:kbin:AVERAGE:Average Bandwidth In\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\:%3.2lf KBps\j'

sleep 10





# border.chalkdust.org

# next guess: s/iso.3.6.1.2.1.2.2.1.16.4/iso.3.6.1.2.1.2.2.1.16.4/g

# databases
/usr/bin/rrdupdate /var/lib/rrdtool/border-p1.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv border.chalkdust.org iso.3.6.1.2.1.2.2.1.10.4`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv border.chalkdust.org iso.3.6.1.2.1.2.2.1.16.4`
/usr/bin/rrdupdate /var/lib/rrdtool/border-p1-weekly.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv border.chalkdust.org iso.3.6.1.2.1.2.2.1.10.4`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv border.chalkdust.org iso.3.6.1.2.1.2.2.1.16.4`
/usr/bin/rrdupdate /var/lib/rrdtool/border-p1-monthly.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv border.chalkdust.org iso.3.6.1.2.1.2.2.1.10.4`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv border.chalkdust.org iso.3.6.1.2.1.2.2.1.16.4`
/usr/bin/rrdupdate /var/lib/rrdtool/border-p2.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv border.chalkdust.org iso.3.6.1.2.1.2.2.1.10.5`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv border.chalkdust.org iso.3.6.1.2.1.2.2.1.16.5`
/usr/bin/rrdupdate /var/lib/rrdtool/border-p2-weekly.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv border.chalkdust.org iso.3.6.1.2.1.2.2.1.10.5`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv border.chalkdust.org iso.3.6.1.2.1.2.2.1.16.5`
/usr/bin/rrdupdate /var/lib/rrdtool/border-p2-monthly.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv border.chalkdust.org iso.3.6.1.2.1.2.2.1.10.5`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv border.chalkdust.org iso.3.6.1.2.1.2.2.1.16.5`
/usr/bin/rrdupdate /var/lib/rrdtool/border-p3.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv border.chalkdust.org iso.3.6.1.2.1.2.2.1.10.6`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv border.chalkdust.org iso.3.6.1.2.1.2.2.1.16.6`
/usr/bin/rrdupdate /var/lib/rrdtool/border-p3-weekly.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv border.chalkdust.org iso.3.6.1.2.1.2.2.1.10.6`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv border.chalkdust.org iso.3.6.1.2.1.2.2.1.16.6`
/usr/bin/rrdupdate /var/lib/rrdtool/border-p3-monthly.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv border.chalkdust.org iso.3.6.1.2.1.2.2.1.10.6`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv border.chalkdust.org iso.3.6.1.2.1.2.2.1.16.6`
/usr/bin/rrdupdate /var/lib/rrdtool/border-p4.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv border.chalkdust.org iso.3.6.1.2.1.2.2.1.10.7`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv border.chalkdust.org iso.3.6.1.2.1.2.2.1.16.7`
/usr/bin/rrdupdate /var/lib/rrdtool/border-p4-weekly.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv border.chalkdust.org iso.3.6.1.2.1.2.2.1.10.7`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv border.chalkdust.org iso.3.6.1.2.1.2.2.1.16.7`
/usr/bin/rrdupdate /var/lib/rrdtool/border-p4-monthly.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv border.chalkdust.org iso.3.6.1.2.1.2.2.1.10.7`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv border.chalkdust.org iso.3.6.1.2.1.2.2.1.16.7`
/usr/bin/rrdupdate /var/lib/rrdtool/border-p5.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv border.chalkdust.org iso.3.6.1.2.1.2.2.1.10.8`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv border.chalkdust.org iso.3.6.1.2.1.2.2.1.16.8`
/usr/bin/rrdupdate /var/lib/rrdtool/border-p5-weekly.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv border.chalkdust.org iso.3.6.1.2.1.2.2.1.10.8`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv border.chalkdust.org iso.3.6.1.2.1.2.2.1.16.8`
/usr/bin/rrdupdate /var/lib/rrdtool/border-p5-monthly.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv border.chalkdust.org iso.3.6.1.2.1.2.2.1.10.8`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv border.chalkdust.org iso.3.6.1.2.1.2.2.1.16.8`
/usr/bin/rrdupdate /var/lib/rrdtool/border-p6.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv border.chalkdust.org iso.3.6.1.2.1.2.2.1.10.9`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv border.chalkdust.org iso.3.6.1.2.1.2.2.1.16.9`
/usr/bin/rrdupdate /var/lib/rrdtool/border-p6-weekly.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv border.chalkdust.org iso.3.6.1.2.1.2.2.1.10.9`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv border.chalkdust.org iso.3.6.1.2.1.2.2.1.16.9`
/usr/bin/rrdupdate /var/lib/rrdtool/border-p6-monthly.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv border.chalkdust.org iso.3.6.1.2.1.2.2.1.10.9`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv border.chalkdust.org iso.3.6.1.2.1.2.2.1.16.9`
/usr/bin/rrdupdate /var/lib/rrdtool/border-p7.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv border.chalkdust.org iso.3.6.1.2.1.2.2.1.10.10`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv border.chalkdust.org iso.3.6.1.2.1.2.2.1.16.10`
/usr/bin/rrdupdate /var/lib/rrdtool/border-p7-weekly.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv border.chalkdust.org iso.3.6.1.2.1.2.2.1.10.10`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv border.chalkdust.org iso.3.6.1.2.1.2.2.1.16.10`
/usr/bin/rrdupdate /var/lib/rrdtool/border-p7-monthly.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv border.chalkdust.org iso.3.6.1.2.1.2.2.1.10.10`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv border.chalkdust.org iso.3.6.1.2.1.2.2.1.16.10`
/usr/bin/rrdupdate /var/lib/rrdtool/border-p8.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv border.chalkdust.org iso.3.6.1.2.1.2.2.1.10.11`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv border.chalkdust.org iso.3.6.1.2.1.2.2.1.16.11`
/usr/bin/rrdupdate /var/lib/rrdtool/border-p8-weekly.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv border.chalkdust.org iso.3.6.1.2.1.2.2.1.10.11`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv border.chalkdust.org iso.3.6.1.2.1.2.2.1.16.11`
/usr/bin/rrdupdate /var/lib/rrdtool/border-p8-monthly.rrd N:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv border.chalkdust.org iso.3.6.1.2.1.2.2.1.10.11`:`/usr/bin/snmpget -v 2c -c chalkdust -Oqv border.chalkdust.org iso.3.6.1.2.1.2.2.1.16.11`


# graphs

# port 1
/usr/bin/rrdtool graph /var/www/bandwidth/border/border-p1.png -a PNG -h 125 -s -129600 -v "Data Throughput" -t "border - Port: 1 (Daily)" \
    'DEF:in=/var/lib/rrdtool/border-p1.rrd:in:AVERAGE' \
    'DEF:out=/var/lib/rrdtool/border-p1.rrd:out:AVERAGE' \
    'CDEF:kbin=in,1024,/' \
    'CDEF:kbout=out,1024,/' \
    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\j' \
    'GPRINT:kbin:LAST:Last Bandwidth In\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\:   %3.2lf KBps\j' \
    'GPRINT:kbin:AVERAGE:Average Bandwidth In\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\:%3.2lf KBps\j'
/usr/bin/rrdtool graph /var/www/bandwidth/border/border-p1-weekly.png -a PNG -h 125 -s -432000 -v "Data Throughput" -t "border - Port: 1 (Weekly)" \
    'DEF:in=/var/lib/rrdtool/border-p1-weekly.rrd:in:AVERAGE' \
    'DEF:out=/var/lib/rrdtool/border-p1-weekly.rrd:out:AVERAGE' \
    'CDEF:kbin=in,1024,/' \
    'CDEF:kbout=out,1024,/' \
    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\j' \
    'GPRINT:kbin:LAST:Last Bandwidth In\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\:   %3.2lf KBps\j' \
    'GPRINT:kbin:AVERAGE:Average Bandwidth In\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\:%3.2lf KBps\j'
/usr/bin/rrdtool graph /var/www/bandwidth/border/border-p1-monthly.png -a PNG -h 125 -s -2592000 -v "Data Throughput" -t "border - Port: 1 (Monthly)" \
    'DEF:in=/var/lib/rrdtool/border-p1-monthly.rrd:in:AVERAGE' \
    'DEF:out=/var/lib/rrdtool/border-p1-monthly.rrd:out:AVERAGE' \
    'CDEF:kbin=in,1024,/' \
    'CDEF:kbout=out,1024,/' \
    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\j' \
    'GPRINT:kbin:LAST:Last Bandwidth In\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\:   %3.2lf KBps\j' \
    'GPRINT:kbin:AVERAGE:Average Bandwidth In\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\:%3.2lf KBps\j'

# port 2
/usr/bin/rrdtool graph /var/www/bandwidth/border/border-p2.png -a PNG -h 125 -s -129600 -v "Data Throughput" -t "border - Port: 2 (Daily)" \
    'DEF:in=/var/lib/rrdtool/border-p2.rrd:in:AVERAGE' \
    'DEF:out=/var/lib/rrdtool/border-p2.rrd:out:AVERAGE' \
    'CDEF:kbin=in,1024,/' \
    'CDEF:kbout=out,1024,/' \
    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\j' \
    'GPRINT:kbin:LAST:Last Bandwidth In\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\:   %3.2lf KBps\j' \
    'GPRINT:kbin:AVERAGE:Average Bandwidth In\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\:%3.2lf KBps\j'
/usr/bin/rrdtool graph /var/www/bandwidth/border/border-p2-weekly.png -a PNG -h 125 -s -432000 -v "Data Throughput" -t "border - Port: 2 (Weekly)" \
    'DEF:in=/var/lib/rrdtool/border-p2-weekly.rrd:in:AVERAGE' \
    'DEF:out=/var/lib/rrdtool/border-p2-weekly.rrd:out:AVERAGE' \
    'CDEF:kbin=in,1024,/' \
    'CDEF:kbout=out,1024,/' \
    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\j' \
    'GPRINT:kbin:LAST:Last Bandwidth In\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\:   %3.2lf KBps\j' \
    'GPRINT:kbin:AVERAGE:Average Bandwidth In\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\:%3.2lf KBps\j'
/usr/bin/rrdtool graph /var/www/bandwidth/border/border-p2-monthly.png -a PNG -h 125 -s -2592000 -v "Data Throughput" -t "border - Port: 2 (Monthly)" \
    'DEF:in=/var/lib/rrdtool/border-p2-monthly.rrd:in:AVERAGE' \
    'DEF:out=/var/lib/rrdtool/border-p2-monthly.rrd:out:AVERAGE' \
    'CDEF:kbin=in,1024,/' \
    'CDEF:kbout=out,1024,/' \
    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\j' \
    'GPRINT:kbin:LAST:Last Bandwidth In\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\:   %3.2lf KBps\j' \
    'GPRINT:kbin:AVERAGE:Average Bandwidth In\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\:%3.2lf KBps\j'

# port 3
/usr/bin/rrdtool graph /var/www/bandwidth/border/border-p3.png -a PNG -h 125 -s -129600 -v "Data Throughput" -t "border - Port: 3 (Daily)" \
    'DEF:in=/var/lib/rrdtool/border-p3.rrd:in:AVERAGE' \
    'DEF:out=/var/lib/rrdtool/border-p3.rrd:out:AVERAGE' \
    'CDEF:kbin=in,1024,/' \
    'CDEF:kbout=out,1024,/' \
    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\j' \
    'GPRINT:kbin:LAST:Last Bandwidth In\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\:   %3.2lf KBps\j' \
    'GPRINT:kbin:AVERAGE:Average Bandwidth In\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\:%3.2lf KBps\j'
/usr/bin/rrdtool graph /var/www/bandwidth/border/border-p3-weekly.png -a PNG -h 125 -s -432000 -v "Data Throughput" -t "border - Port: 3 (Weekly)" \
    'DEF:in=/var/lib/rrdtool/border-p3-weekly.rrd:in:AVERAGE' \
    'DEF:out=/var/lib/rrdtool/border-p3-weekly.rrd:out:AVERAGE' \
    'CDEF:kbin=in,1024,/' \
    'CDEF:kbout=out,1024,/' \
    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\j' \
    'GPRINT:kbin:LAST:Last Bandwidth In\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\:   %3.2lf KBps\j' \
    'GPRINT:kbin:AVERAGE:Average Bandwidth In\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\:%3.2lf KBps\j'
/usr/bin/rrdtool graph /var/www/bandwidth/border/border-p3-monthly.png -a PNG -h 125 -s -2592000 -v "Data Throughput" -t "border - Port: 3 (Monthly)" \
    'DEF:in=/var/lib/rrdtool/border-p3-monthly.rrd:in:AVERAGE' \
    'DEF:out=/var/lib/rrdtool/border-p3-monthly.rrd:out:AVERAGE' \
    'CDEF:kbin=in,1024,/' \
    'CDEF:kbout=out,1024,/' \
    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\j' \
    'GPRINT:kbin:LAST:Last Bandwidth In\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\:   %3.2lf KBps\j' \
    'GPRINT:kbin:AVERAGE:Average Bandwidth In\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\:%3.2lf KBps\j'

# port 4
/usr/bin/rrdtool graph /var/www/bandwidth/border/border-p4.png -a PNG -h 125 -s -129600 -v "Data Throughput" -t "border - Port: 4 (Daily)" \
    'DEF:in=/var/lib/rrdtool/border-p4.rrd:in:AVERAGE' \
    'DEF:out=/var/lib/rrdtool/border-p4.rrd:out:AVERAGE' \
    'CDEF:kbin=in,1024,/' \
    'CDEF:kbout=out,1024,/' \
    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\j' \
    'GPRINT:kbin:LAST:Last Bandwidth In\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\:   %3.2lf KBps\j' \
    'GPRINT:kbin:AVERAGE:Average Bandwidth In\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\:%3.2lf KBps\j'
/usr/bin/rrdtool graph /var/www/bandwidth/border/border-p4-weekly.png -a PNG -h 125 -s -432000 -v "Data Throughput" -t "border - Port: 4 (Weekly)" \
    'DEF:in=/var/lib/rrdtool/border-p4-weekly.rrd:in:AVERAGE' \
    'DEF:out=/var/lib/rrdtool/border-p4-weekly.rrd:out:AVERAGE' \
    'CDEF:kbin=in,1024,/' \
    'CDEF:kbout=out,1024,/' \
    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\j' \
    'GPRINT:kbin:LAST:Last Bandwidth In\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\:   %3.2lf KBps\j' \
    'GPRINT:kbin:AVERAGE:Average Bandwidth In\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\:%3.2lf KBps\j'
/usr/bin/rrdtool graph /var/www/bandwidth/border/border-p4-monthly.png -a PNG -h 125 -s -2592000 -v "Data Throughput" -t "border - Port: 4 (Monthly)" \
    'DEF:in=/var/lib/rrdtool/border-p4-monthly.rrd:in:AVERAGE' \
    'DEF:out=/var/lib/rrdtool/border-p4-monthly.rrd:out:AVERAGE' \
    'CDEF:kbin=in,1024,/' \
    'CDEF:kbout=out,1024,/' \
    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\j' \
    'GPRINT:kbin:LAST:Last Bandwidth In\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\:   %3.2lf KBps\j' \
    'GPRINT:kbin:AVERAGE:Average Bandwidth In\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\:%3.2lf KBps\j'

# port 5
/usr/bin/rrdtool graph /var/www/bandwidth/border/border-p5.png -a PNG -h 125 -s -129600 -v "Data Throughput" -t "border - Port: 5 (Daily)" \
    'DEF:in=/var/lib/rrdtool/border-p5.rrd:in:AVERAGE' \
    'DEF:out=/var/lib/rrdtool/border-p5.rrd:out:AVERAGE' \
    'CDEF:kbin=in,1024,/' \
    'CDEF:kbout=out,1024,/' \
    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\j' \
    'GPRINT:kbin:LAST:Last Bandwidth In\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\:   %3.2lf KBps\j' \
    'GPRINT:kbin:AVERAGE:Average Bandwidth In\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\:%3.2lf KBps\j'
/usr/bin/rrdtool graph /var/www/bandwidth/border/border-p5-weekly.png -a PNG -h 125 -s -432000 -v "Data Throughput" -t "border - Port: 5 (Weekly)" \
    'DEF:in=/var/lib/rrdtool/border-p5-weekly.rrd:in:AVERAGE' \
    'DEF:out=/var/lib/rrdtool/border-p5-weekly.rrd:out:AVERAGE' \
    'CDEF:kbin=in,1024,/' \
    'CDEF:kbout=out,1024,/' \
    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\j' \
    'GPRINT:kbin:LAST:Last Bandwidth In\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\:   %3.2lf KBps\j' \
    'GPRINT:kbin:AVERAGE:Average Bandwidth In\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\:%3.2lf KBps\j'
/usr/bin/rrdtool graph /var/www/bandwidth/border/border-p5-monthly.png -a PNG -h 125 -s -2592000 -v "Data Throughput" -t "border - Port: 5 (Monthly)" \
    'DEF:in=/var/lib/rrdtool/border-p5-monthly.rrd:in:AVERAGE' \
    'DEF:out=/var/lib/rrdtool/border-p5-monthly.rrd:out:AVERAGE' \
    'CDEF:kbin=in,1024,/' \
    'CDEF:kbout=out,1024,/' \
    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\j' \
    'GPRINT:kbin:LAST:Last Bandwidth In\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\:   %3.2lf KBps\j' \
    'GPRINT:kbin:AVERAGE:Average Bandwidth In\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\:%3.2lf KBps\j'

# port 6
/usr/bin/rrdtool graph /var/www/bandwidth/border/border-p6.png -a PNG -h 125 -s -129600 -v "Data Throughput" -t "border - Port: 6 (Daily)" \
    'DEF:in=/var/lib/rrdtool/border-p6.rrd:in:AVERAGE' \
    'DEF:out=/var/lib/rrdtool/border-p6.rrd:out:AVERAGE' \
    'CDEF:kbin=in,1024,/' \
    'CDEF:kbout=out,1024,/' \
    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\j' \
    'GPRINT:kbin:LAST:Last Bandwidth In\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\:   %3.2lf KBps\j' \
    'GPRINT:kbin:AVERAGE:Average Bandwidth In\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\:%3.2lf KBps\j'
/usr/bin/rrdtool graph /var/www/bandwidth/border/border-p6-weekly.png -a PNG -h 125 -s -432000 -v "Data Throughput" -t "border - Port: 6 (Weekly)" \
    'DEF:in=/var/lib/rrdtool/border-p6-weekly.rrd:in:AVERAGE' \
    'DEF:out=/var/lib/rrdtool/border-p6-weekly.rrd:out:AVERAGE' \
    'CDEF:kbin=in,1024,/' \
    'CDEF:kbout=out,1024,/' \
    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\j' \
    'GPRINT:kbin:LAST:Last Bandwidth In\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\:   %3.2lf KBps\j' \
    'GPRINT:kbin:AVERAGE:Average Bandwidth In\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\:%3.2lf KBps\j'
/usr/bin/rrdtool graph /var/www/bandwidth/border/border-p6-monthly.png -a PNG -h 125 -s -2592000 -v "Data Throughput" -t "border - Port: 6 (Monthly)" \
    'DEF:in=/var/lib/rrdtool/border-p6-monthly.rrd:in:AVERAGE' \
    'DEF:out=/var/lib/rrdtool/border-p6-monthly.rrd:out:AVERAGE' \
    'CDEF:kbin=in,1024,/' \
    'CDEF:kbout=out,1024,/' \
    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\j' \
    'GPRINT:kbin:LAST:Last Bandwidth In\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\:   %3.2lf KBps\j' \
    'GPRINT:kbin:AVERAGE:Average Bandwidth In\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\:%3.2lf KBps\j'

# port 7
/usr/bin/rrdtool graph /var/www/bandwidth/border/border-p7.png -a PNG -h 125 -s -129600 -v "Data Throughput" -t "border - Port: 7 (Daily)" \
    'DEF:in=/var/lib/rrdtool/border-p7.rrd:in:AVERAGE' \
    'DEF:out=/var/lib/rrdtool/border-p7.rrd:out:AVERAGE' \
    'CDEF:kbin=in,1024,/' \
    'CDEF:kbout=out,1024,/' \
    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\j' \
    'GPRINT:kbin:LAST:Last Bandwidth In\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\:   %3.2lf KBps\j' \
    'GPRINT:kbin:AVERAGE:Average Bandwidth In\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\:%3.2lf KBps\j'
/usr/bin/rrdtool graph /var/www/bandwidth/border/border-p7-weekly.png -a PNG -h 125 -s -432000 -v "Data Throughput" -t "border - Port: 7 (Weekly)" \
    'DEF:in=/var/lib/rrdtool/border-p7-weekly.rrd:in:AVERAGE' \
    'DEF:out=/var/lib/rrdtool/border-p7-weekly.rrd:out:AVERAGE' \
    'CDEF:kbin=in,1024,/' \
    'CDEF:kbout=out,1024,/' \
    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\j' \
    'GPRINT:kbin:LAST:Last Bandwidth In\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\:   %3.2lf KBps\j' \
    'GPRINT:kbin:AVERAGE:Average Bandwidth In\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\:%3.2lf KBps\j'
/usr/bin/rrdtool graph /var/www/bandwidth/border/border-p7-monthly.png -a PNG -h 125 -s -2592000 -v "Data Throughput" -t "border - Port: 7 (Monthly)" \
    'DEF:in=/var/lib/rrdtool/border-p7-monthly.rrd:in:AVERAGE' \
    'DEF:out=/var/lib/rrdtool/border-p7-monthly.rrd:out:AVERAGE' \
    'CDEF:kbin=in,1024,/' \
    'CDEF:kbout=out,1024,/' \
    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\j' \
    'GPRINT:kbin:LAST:Last Bandwidth In\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\:   %3.2lf KBps\j' \
    'GPRINT:kbin:AVERAGE:Average Bandwidth In\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\:%3.2lf KBps\j'

# port 8
/usr/bin/rrdtool graph /var/www/bandwidth/border/border-p8.png -a PNG -h 125 -s -129600 -v "Data Throughput" -t "border - Port: 8 (Daily)" \
    'DEF:in=/var/lib/rrdtool/border-p8.rrd:in:AVERAGE' \
    'DEF:out=/var/lib/rrdtool/border-p8.rrd:out:AVERAGE' \
    'CDEF:kbin=in,1024,/' \
    'CDEF:kbout=out,1024,/' \
    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\j' \
    'GPRINT:kbin:LAST:Last Bandwidth In\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\:   %3.2lf KBps\j' \
    'GPRINT:kbin:AVERAGE:Average Bandwidth In\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\:%3.2lf KBps\j'
/usr/bin/rrdtool graph /var/www/bandwidth/border/border-p8-weekly.png -a PNG -h 125 -s -432000 -v "Data Throughput" -t "border - Port: 8 (Weekly)" \
    'DEF:in=/var/lib/rrdtool/border-p8-weekly.rrd:in:AVERAGE' \
    'DEF:out=/var/lib/rrdtool/border-p8-weekly.rrd:out:AVERAGE' \
    'CDEF:kbin=in,1024,/' \
    'CDEF:kbout=out,1024,/' \
    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\j' \
    'GPRINT:kbin:LAST:Last Bandwidth In\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\:   %3.2lf KBps\j' \
    'GPRINT:kbin:AVERAGE:Average Bandwidth In\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\:%3.2lf KBps\j'
/usr/bin/rrdtool graph /var/www/bandwidth/border/border-p8-monthly.png -a PNG -h 125 -s -2592000 -v "Data Throughput" -t "border - Port: 8 (Monthly)" \
    'DEF:in=/var/lib/rrdtool/border-p8-monthly.rrd:in:AVERAGE' \
    'DEF:out=/var/lib/rrdtool/border-p8-monthly.rrd:out:AVERAGE' \
    'CDEF:kbin=in,1024,/' \
    'CDEF:kbout=out,1024,/' \
    'AREA:in#00FF00:Bandwidth In'                               'LINE1:out#0000FF:Bandwidth Out\j' \
    'GPRINT:kbin:LAST:Last Bandwidth In\:    %3.2lf KBps'       'GPRINT:kbout:LAST:Last Bandwidth Out\:   %3.2lf KBps\j' \
    'GPRINT:kbin:AVERAGE:Average Bandwidth In\: %3.2lf KBps'    'GPRINT:kbout:AVERAGE:Average Bandwidth Out\:%3.2lf KBps\j'
