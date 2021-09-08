#!/bin/bash
echo "--------------" >> /tmp/sslit_event_handler.log
/bin/date >> /tmp/sslit_event_handler.log
/usr/bin/id >> /tmp/sslit_event_handler.log
echo "domain ${NEW_DOMAIN_NAME} created" >> /tmp/sslit_event_handler.log
echo "Issue SSL Certificate for: ${NEW_DOMAIN_NAME}" >> /tmp/sslit_event_handler.log
timeout 20m bash -c "while ! ping -c 2 ${NEW_DOMAIN_NAME} ; do sleep 30 ; done" >> /tmp/sslit_event_handler.log
plesk ext sslit --certificate -issue -domain ${NEW_DOMAIN_NAME} -registrationEmail auto.emails+ssl@hostplus.com -secure-domain -secure-www >> /tmp/sslit_event_handler.log
echo "--------------" >> /tmp/sslit_event_handler.log
