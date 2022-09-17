#!/bin/bash
read -p " ID NODE Cổng 80: " node_id1
  [ -z "${node_id1}" ] && node_id1=0
  
read -p " ID NODE Cổng 443: " node_id2
  [ -z "${node_id2}" ] && node_id2=0
  
read -p "CertDomain: " CertDomain
  [ -z "${CertDomain}" ] && CertDomain="0"
  
cd /etc/XrayR
cat >speed4g.crt <<EOF
-----BEGIN CERTIFICATE-----
MIIEFTCCAv2gAwIBAgIUBqZxJFKCZM7ykssyyWgxsBcwvHYwDQYJKoZIhvcNAQEL
BQAwgagxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpDYWxpZm9ybmlhMRYwFAYDVQQH
Ew1TYW4gRnJhbmNpc2NvMRkwFwYDVQQKExBDbG91ZGZsYXJlLCBJbmMuMRswGQYD
VQQLExJ3d3cuY2xvdWRmbGFyZS5jb20xNDAyBgNVBAMTK01hbmFnZWQgQ0EgYjUz
N2EzYmM1ZWY3ZGRlYzE1ZTMwZDFkYjY0MmEzMDgwHhcNMjIwODA2MTI0MTAwWhcN
MzIwODAzMTI0MTAwWjAiMQswCQYDVQQGEwJVUzETMBEGA1UEAxMKQ2xvdWRmbGFy
ZTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAJSEp2z+zSIV8/zfeeCL
deveMmGVrdXSVbZeIOy1994yoNEARZECcNzxsBytkZ+o0BK3HDQ63dj07Z4xnZMO
B6CwEqtZcxbteOmxizKgxE2do+xZdxS5BgZVtzby+cyYHUurpLDRR3X1tRQdN3+w
5h1QDbR3dp/5vMFwIsbU85fDRKD//CCzhfD/fMjccXa6mt3HXyrZqHTkKuO7HDn5
1y7hrdt63H6PpZ3Bwed+KQOGyflLZQeUwDroIYACYQI4OZsWJ1wdrPJaH+sh9VSX
igypa6qs4mZTaaLQp8muWS+uVcO2MYJJJCy8pdICJVzQ0+gHCiKQbKP77Qqiwr5p
KpcCAwEAAaOBuzCBuDATBgNVHSUEDDAKBggrBgEFBQcDAjAMBgNVHRMBAf8EAjAA
MB0GA1UdDgQWBBR3/v0X2f42uTcrAyevdR1ewnMXNzAfBgNVHSMEGDAWgBQzdk4L
SIWDvC1LW701KtYHtybB0zBTBgNVHR8ETDBKMEigRqBEhkJodHRwOi8vY3JsLmNs
b3VkZmxhcmUuY29tLzViOTUzZDk3LTMwMWMtNGQwZC1hODViLWY0MmU1MWE5MmE0
MS5jcmwwDQYJKoZIhvcNAQELBQADggEBAAamFuE52CKEUzV/AjVBLtyEwskYK17I
FX/Fl+EoD9JpuB5gal/tGiP9AeMk1qbWfQaOVP48KKUuuFdXWVB/xOPU54Y8KXS0
ST7cCRfzJRlNzA6fCM6CfS3IO7XmfdS+cqWn1CTzGK4Nj+g6MikqY6C2M9yAW4iA
OWqwFlKGCzYvVYMmPpPrl37vCZgab2BEo7lx6CLu7qYr5cBn2A6TQ9ntaRLgUlLV
wnBnP5eqqcqAAuHmZvWsOr2nT+1xyO0VVbZtk82TWtn8+KdVIP1Wdiy573j8NpzO
1AwjVJrHnfs2re1n/mUs4/HVQVZuwMLuaCF7kIZrPuhJH7p1LvQHBhA=
-----END CERTIFICATE-----
EOF
cat >speed4g.key <<EOF
-----BEGIN PRIVATE KEY-----
MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCUhKds/s0iFfP8
33ngi3Xr3jJhla3V0lW2XiDstffeMqDRAEWRAnDc8bAcrZGfqNAStxw0Ot3Y9O2e
MZ2TDgegsBKrWXMW7XjpsYsyoMRNnaPsWXcUuQYGVbc28vnMmB1Lq6Sw0Ud19bUU
HTd/sOYdUA20d3af+bzBcCLG1POXw0Sg//wgs4Xw/3zI3HF2uprdx18q2ah05Crj
uxw5+dcu4a3betx+j6WdwcHnfikDhsn5S2UHlMA66CGAAmECODmbFidcHazyWh/r
IfVUl4oMqWuqrOJmU2mi0KfJrlkvrlXDtjGCSSQsvKXSAiVc0NPoBwoikGyj++0K
osK+aSqXAgMBAAECggEAEC/xK6EN7KQl5q7Y0s+Ad8fNB/PPcZmuO+VAg2xF6tLr
0jvMWUTB1mMFRerpD1TP8OpCSbMM0QPJDk/sE8YYsLvgHQrvz1Tss9PlDwyUuLzw
y+boYrrT3EblZDjRXypJLyEzHw6AUmwIY3vXu7QlMJa0F7JZnJAUsaSuNauqLSUx
uDqiF72+6Iu5oKmU8kxUxTSbLVCP28I0nPPyDzm6KwO56lZDdaVPPI/ybo9F6O/u
8bm+Ld+0/BhYtv2OvfMZwpclSEqYe6RgKWb0ph/xG/IuONrCCbP676ofU+E//fOn
n7oabShlso2N+TCzXO6SFF7cYSuGjN15ydbDIwohwQKBgQDOQx0JfcAk3ZJhyfke
PW8eviVm3z/y0JII3Ns88BSN97/1JcoJCHEpMRFvw8lm//gQKL5S+6BLaq1/x2tR
tc7qXnuJrmIbZJQ8d4LsGOiqgcHOmyvlwXj/BR/DkBb4Igmefpdk2n/JXKlMBMj0
RtIVvmuzET/sqkpdylWK2XcH9wKBgQC4VOn/IYp0T6Y6IEheu4ZdyMfWm/YiAiVS
C7qG+XrddLUYXM2KY2tUZYzXFcZyFbKkG7edeam8iO7Nd/94HDaSTZhc1Ghbm27O
Watc6jwt2v7Cebtx0md+KT8+05uc3KDAwPRukWSv9/3UDwALSeSLPKzpCji/nKdk
xTW1aRyKYQKBgQCyFbAUacZkDgo89C1qtpAicvnIACkudHYhwM5ppr+Yc7gA6Ueu
1OMfNYZggSJ7E7YR/ZuV+jtD4i86i+tU+SxVno37Kdz62bRDIMyhHECGNtImmEMm
dA0L4liyeM3cH0c+2P3NzflW2fIx+E+o2Ry6OVaznMkchUr//5or7+adsQKBgAd5
2iuwzo69FD7TRFwjOuXe2MwJc0gZ0i2rsBr9T1BgBWBBk0yDj7zSiY3Hok7KNn6V
aTMH1iyBWT4YGdJjQotYfk91he4BNdNEq8CO93Xcpex5R3LsV6o0Pg5sQqlwAU0Q
Blndp7nDUxYgrZ3Hl29WPKUO9xI+ZkOeA/mhk7jBAoGAEqoMsgPDMrqIgWbwD+HI
A2JNCeInSagiXKrqNEdokTjQQ78f1MIeYO8WQdqmVCoi3gJRfK5qyIAGP5xVpo7K
oGT463qBxRavBMrzaL9EZuMHNwga/mgDfFjY0pxDGItp+SxYtT8f0JgnIbbCZ2IX
gnAexGvAah/QWZZvzduv5TI=
-----END PRIVATE KEY-----
EOF
cat >config.yml <<EOF
Log:
  Level: none 
  AccessPath: # /etc/XrayR/access.Log
  ErrorPath: # /etc/XrayR/error.log
DnsConfigPath: # /etc/XrayR/dns.json
InboundConfigPath: # /etc/XrayR/custom_inbound.json
RouteConfigPath: # /etc/XrayR/route.json
OutboundConfigPath: # /etc/XrayR/custom_outbound.json
ConnetionConfig:
  Handshake: 4 
  ConnIdle: 30 
  UplinkOnly: 2 
  DownlinkOnly: 4 
  BufferSize: 64 
Nodes:
  -
    PanelType: "V2board" 
    ApiConfig:
      ApiHost: "https://speed4g.me"
      ApiKey: "nguyenvannghiiubuithiquyen"
      NodeID1: 1
      NodeType: V2ray 
      Timeout: 30 
      EnableVless: false 
      EnableXTLS: false 
      SpeedLimit: 0 
      DeviceLimit: 2 
      RuleListPath: # /etc/XrayR/rulelist
    ControllerConfig:
      DisableSniffing: True
      ListenIP: 0.0.0.0 
      SendIP: 0.0.0.0 
      UpdatePeriodic: 60 
      EnableDNS: false 
      DNSType: AsIs 
      EnableProxyProtocol: false 
      EnableFallback: false 
      FallBackConfigs:  
        -
          SNI: 
          Path: 
          Dest: 80 
          ProxyProtocolVer: 0 
      CertConfig:
        CertMode: none 
        CertDomain1: "vn.speed4g.me" 
        CertFile: /etc/XrayR/cert/node1.test.com.cert 
        KeyFile: /etc/XrayR/cert/node1.test.com.key
        Provider: cloudflare 
        Email: test@me.com
        DNSEnv: 
          CLOUDFLARE_EMAIL:
          CLOUDFLARE_API_KEY:
  -
    PanelType: "V2board" 
    ApiConfig:
      ApiHost: "https://speed4g.me"
      ApiKey: "nguyenvannghiiubuithiquyen"
      NodeID2: 1
      NodeType: V2ray 
      Timeout: 30 
      EnableVless: false 
      EnableXTLS: false 
      SpeedLimit: 0 
      DeviceLimit: 2 
      RuleListPath: # /etc/XrayR/rulelist
    ControllerConfig:
      DisableSniffing: True
      ListenIP: 0.0.0.0 
      SendIP: 0.0.0.0 
      UpdatePeriodic: 60 
      EnableDNS: false 
      DNSType: AsIs 
      EnableProxyProtocol: false 
      EnableFallback: false 
      FallBackConfigs:  
        -
          SNI: 
          Path: 
          Dest: 80 
          ProxyProtocolVer: 0 
      CertConfig:
        CertMode: file 
        CertDomain2: "vn.speed4g.me" 
        CertFile: /etc/XrayR/speed4g.crt 
        KeyFile: /etc/XrayR/speed4g.key
        Provider: cloudflare 
        Email: test@me.com
        DNSEnv: 
          CLOUDFLARE_EMAIL: 
          CLOUDFLARE_API_KEY: 
EOF
sed -i "s|NodeID1:.*|NodeID: ${node_id1}|" ./config.yml
sed -i "s|NodeID2:.*|NodeID: ${node_id2}|" ./config.yml
sed -i "s|CertDomain1:.*|CertDomain: \"${CertDomain}\"|" ./config.yml
sed -i "s|CertDomain2:.*|CertDomain: \"${CertDomain}\"|" ./config.yml
cd /root
xrayr restart
