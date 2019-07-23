#!/bin/bash
rm -f *.log 
sipp -sf client-uac-auth-nok.xml -inf numberlistfail2.csv -max_socket 200 -r 1 192.168.1.100:5061 -t ln -p 5063 -m 200 -l 1 -trace_stat -stf stats.csv -trace_screen -trace_err -tls_key ./sippuac.key -tls_cert ./sippuac.pem 

#
#   Parameter description
#
#   -sf client-uac-auth-nok.xml     "Loads an alternate XML scenario file, use the -sd option to dump embedded scenarios"
#   -inf numberlistfail2.csv        "Inject values from an external CSV file during calls into the scenarios"
#   -max_socket 200                 "Set the max number of sockets to open simultaneously"
#   -r 1                            "Call rate. 1 = a call/Register-attempt/s"
#   -t ln                           "transport mode. - ln: TLS with one socket per call"
#   -p                              "local Layer 4 Port"
#   -l 1                            "Set the maximum number of simultaneous calls"
#   -trace_stat                     "Dumps all statistics in <scenario_name>_<pid>.csv file"
#   -stf stats.csv                  "Set the file name to use to dump statistics"
#   -trace_screen                   "Dump statistic screens in the <scenario_name>_<pid>"
#   -trace_err                      "Trace all unexpected messages in <scenario file name>_<pid>_errors.log."
#   -tls_key ./sippuac.key          "Set the name for TLS Private Key file"
#   -tls_cert ./sippuac.pem         "Set the name for TLS Certificate file"
#   
#   -default_behaviors all,-bye     "optional: removes the BYE message"
