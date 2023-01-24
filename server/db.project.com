;
; BIND data file for local loopback interface
;
$TTL	604800
@	IN	SOA	server1.project.com. admin.project.com. (
			      3		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;

; name servers - NS records
	IN	NS	server1.project.com.

; name-servers - A records
server1.project.com.	IN	A	10.128.10.11

host1.project.com.	IN	A	10.128.100.101
host2.project.com.	IN	A	10.128.200.102
