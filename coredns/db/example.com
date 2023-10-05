$ORIGIN example.com.
@	3600 IN	SOA sns.dns.icann.org. noc.dns.icann.org. (
				2018070500 ; serial
				7200       ; refresh in seconds (2 hours is 7200)
				3600       ; retry (1 hour)
				1209600    ; expire (2 weeks)
				3600       ; minimum (1 hour)
				)

	3600 IN NS a.iana-servers.net.
	3600 IN NS b.iana-servers.net.

www    IN A     192.168.8.7
www    IN A     192.168.8.8
www.cname    IN CNAME  www


; NOTES:
; If you wish for this file to be reloaded after change,
; Make sure to increment the serial number !
