#!/bin/bash
echo "--------------" >> /tmp/265708_event_handler.log
/bin/date >> /tmp/265708_event_handler.log
/usr/bin/id >> /tmp/265708_event_handler.log
echo "alias ${NEW_DOMAIN_ALIAS_NAME} created" >> /tmp/265708_event_handler.log
echo "disabling redirect for: ${NEW_DOMAIN_ALIAS_NAME}" >> /tmp/265708_event_handler.log
plesk bin domalias -u ${NEW_DOMAIN_ALIAS_NAME} -seo-redirect false >> /tmp/265708_event_handler.log
echo "--------------" >> /tmp/265708_event_handler.log
