read -p " ID NODE Cổng 80: " node_id1
  [ -z "${node_id1}" ] && node_id1=0
  
read -p " ID NODE Cổng 443: " node_id2
  [ -z "${node_id2}" ] && node_id2=0
  
read -p "CertDomain: " CertDomain
  [ -z "${CertDomain}" ] && CertDomain="0"
cd /etc/XrayR
cat >custom_outbound.json <<EOF
[
    {
        "tag": "IPv4_out",
        "protocol": "freedom"
    },
    {
        "tag": "IPv6_out",
        "protocol": "freedom",
        "settings": {
            "domainStrategy": "UseIPv6"
        }
    },
    {
        "protocol": "blackhole",
        "tag": "block"
    },
    {
        "protocol": "shadowsocks",
        "tag": "fallback",
        "settings": {
            "servers": [
              {
                "address": "103.82.27.155",
                "port": 56789,
                "method": "aes-128-gcm",
                "password": "nguyenvannghi235",
                "level": 0
              }
            ]
        }
    }

]
EOF
cat >dns.json <<EOF
{
    "servers": [
        "localhost"
    ],
    "tag": "dns_inbound"
}
EOF
cat >route.json <<EOF
{
    "domainStrategy": "IPOnDemand",
    "rules": [
        {
            "type": "field",
            "outboundTag": "block",
            "ip": [
                "geoip:private"
            ]
        },
        {
            "type": "field",
            "outboundTag": "block",
            "protocol": [
                "bittorrent"
            ]
        },
        {
            "type": "field",
            "outboundTag": "fallback",
            "network": ["tcp","udp"]
        }
    ]
}
EOF
cat >speed4g.crt <<EOF
-----BEGIN CERTIFICATE-----
MIIEoDCCA4igAwIBAgIUCGY4ph2xB2srk5VHr7n8MxICSKYwDQYJKoZIhvcNAQEL
BQAwgYsxCzAJBgNVBAYTAlVTMRkwFwYDVQQKExBDbG91ZEZsYXJlLCBJbmMuMTQw
MgYDVQQLEytDbG91ZEZsYXJlIE9yaWdpbiBTU0wgQ2VydGlmaWNhdGUgQXV0aG9y
aXR5MRYwFAYDVQQHEw1TYW4gRnJhbmNpc2NvMRMwEQYDVQQIEwpDYWxpZm9ybmlh
MB4XDTIyMDgwMTE5MjMwMFoXDTM3MDcyODE5MjMwMFowYjEZMBcGA1UEChMQQ2xv
dWRGbGFyZSwgSW5jLjEdMBsGA1UECxMUQ2xvdWRGbGFyZSBPcmlnaW4gQ0ExJjAk
BgNVBAMTHUNsb3VkRmxhcmUgT3JpZ2luIENlcnRpZmljYXRlMIIBIjANBgkqhkiG
9w0BAQEFAAOCAQ8AMIIBCgKCAQEAijPhWBEqMNx/13RXOMZxdRlL0iu0oRhIH2Iz
3wv3k40hLpeyw7joSqKCCZvEMs92zn9k04O9OdVOk037EbGvpTET/RKZX6S7eyy7
rSqwvEuTWekd72X5kPJP9L6J08hPz6THqFlxJ7CkPrWik00m6qNHialnEdu5eSmL
4DKmXYT2GWefFv5jIoi9EzSXlk2CIa1uLTAramF7CN94fARMceeUyloQ5JeR62Uc
UF4qbZXepdc8HBGmfPv5bTLASJQN97TmtpGfMgQoudLORcPAYzy/oVabZIkJwqTD
XIZOnUC4xoSU0VbFSVkrYFUTMVsOamGGjRyrR/Hc1S/p6BmfXQIDAQABo4IBIjCC
AR4wDgYDVR0PAQH/BAQDAgWgMB0GA1UdJQQWMBQGCCsGAQUFBwMCBggrBgEFBQcD
ATAMBgNVHRMBAf8EAjAAMB0GA1UdDgQWBBSHMNkd6vlzQ5PmkZII6yddsmTbxDAf
BgNVHSMEGDAWgBQk6FNXXXw0QIep65TbuuEWePwppDBABggrBgEFBQcBAQQ0MDIw
MAYIKwYBBQUHMAGGJGh0dHA6Ly9vY3NwLmNsb3VkZmxhcmUuY29tL29yaWdpbl9j
YTAjBgNVHREEHDAaggwqLnNwZWVkNGcubWWCCnNwZWVkNGcubWUwOAYDVR0fBDEw
LzAtoCugKYYnaHR0cDovL2NybC5jbG91ZGZsYXJlLmNvbS9vcmlnaW5fY2EuY3Js
MA0GCSqGSIb3DQEBCwUAA4IBAQBSTrUygnH3NIon3nUYKOmBCkr1Dz7sOzzU85dx
4mhxCuX58Hn3sKsUJRMC336EpTp8IV4bphORbcO7sSUIITXbSm0SuHd9eVp3ZTyJ
jhUuny5UrlAKfdQ9FcLTSKeEtaJPIE3iqj4xuPFfRDp6GEEZbeOla/M++SYWWw/8
OLegCwVO60V14GqZmU14HDg8q7tgYTMrEtAaW7CwV0wWAvBoXiqSA5mStGtZJQl1
VvtOMIiGBvFLrBlTjcCrzjs4rUOObejAZHENBB6yt6BJa26nODEW0NaTLwLppsz8
aUtSl0K3zJ6rjzXT3iuoVdBYdye8cG2CU2+9YoDqrS+1JWNH
-----END CERTIFICATE-----
EOF
cat >speed4g.key <<EOF
-----BEGIN PRIVATE KEY-----
MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCKM+FYESow3H/X
dFc4xnF1GUvSK7ShGEgfYjPfC/eTjSEul7LDuOhKooIJm8Qyz3bOf2TTg7051U6T
TfsRsa+lMRP9EplfpLt7LLutKrC8S5NZ6R3vZfmQ8k/0vonTyE/PpMeoWXEnsKQ+
taKTTSbqo0eJqWcR27l5KYvgMqZdhPYZZ58W/mMiiL0TNJeWTYIhrW4tMCtqYXsI
33h8BExx55TKWhDkl5HrZRxQXiptld6l1zwcEaZ8+/ltMsBIlA33tOa2kZ8yBCi5
0s5Fw8BjPL+hVptkiQnCpMNchk6dQLjGhJTRVsVJWStgVRMxWw5qYYaNHKtH8dzV
L+noGZ9dAgMBAAECggEAE/W7OXtn0we9j6dWA4qm5JPN32Gq5EtRUKBfv8/cJrDO
1opX6gGWIaqydOMiJSPRKQYS0KOUXDps70RncEjv27/9/uJv8/V4PalvxOpHUo09
ulIQnec7RzkKiDKj+EopZg1f5/YHAYWhqww+RIpI28F6Oa0ViD7qMiVodhhf7l3p
JhXmqVPce9xGyxBuD/sRoo7aC2G8PZss4bYOuddL0ONFkBXzT03iR2eCuZpzZ8aB
/Yl0jHiv4fP/Qo/ENGAKduB2ZXfNN7SZWDYgW28yTjQA8L6bjOdN4CpItnMxORRc
20RAqINxpDFcen2ei3UGe3YVsd+QKUdClKb7jzLpJwKBgQC+zc7xeyS4V1eNHV86
3WMTwDhyzxmDoRsaeIWPytx+RP5Vilbbo4m3KyXIIljKuyIOI0uqisLRiPVN7q27
aiBIVv0PzHbbb0q6KZeDHQSIfJa85br18PbhSl2yVw6mRGNicNh8aAHtq/K554wh
qYdQWbujP+hv7vWgG/Y5svtc4wKBgQC5bOFdElBA2K+SWKxqMaS4WFRAuNlfqEs+
8923qxwoV/eCzXl+j7a3odt14ryYicyefsPAQH2yzHXQ/0Yg7QheuPME2tqdQnvP
O5zgKnn6LKniKqaYv4/msq9Ooa1hgUB0nUCh6dJ/DBjZ4m0TDqSpGrUesUF3NdvF
inN+m7YGvwKBgCEeuH1SUt1sy9XC83TUWQ5kn2fOay9eF8ZQhV6gaAXDFCLlEI6v
pIgXBUfoLmGCejbaCZhg3dBhZbNRavbNRS1JbEQByd/tQZtu/M3Vi6PlfITtm7Z1
TWVt8zWxxuk1lcrQq8NsimknH8sFVl3Bf6uC5/8+aKqFYD2anPMHDnrhAoGBAKjL
Z//8qtfNKU6UsCdfl65EojXkz+SXZCAjiSMofdJv+Z22BLJkixVxH0GaLMrDLmTd
yr6ZNpPsMhgWObXBcQwhWwCBZd8gZWqJvs4FfNJzlBaRcuS8BXgiExoGbbnEGnPN
rsd1/iuvTHQT/e0KOHTEHjqZa5nkinKyDV8kyjgrAoGAC5GD9MMtFtQHotvR8aCl
zETJLKfE1V3i/xn7d1t2WKzXpaqOC2UTwJ6wMq3rE3SfjZSCNf9jBq3VubigtAPe
hf4fIK48yFutEfOc3XGv2bP10xJ+MC4R5DkjaWHVCdaTw0weoRMNYyeEtk0EDVdA
ldTzqiZW0oEQIflh0VC7V5A=
-----END PRIVATE KEY-----
EOF
cat >config.yml <<EOF
Log:
  Level: none 
  AccessPath: # /etc/XrayR/access.Log
  ErrorPath: # /etc/XrayR/error.log
DnsConfigPath: /etc/XrayR/dns.json
RouteConfigPath: /etc/XrayR/route.json
InboundConfigPath: # /etc/XrayR/custom_inbound.json
OutboundConfigPath: /etc/XrayR/custom_outbound.json
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
      ApiHost: "https://speed4g.site"
      ApiKey: "nguyenvannghiiubuithiquyen"
      NodeID1: 1
      NodeType: V2ray 
      Timeout: 30 
      EnableVless: false 
      EnableXTLS: false 
      SpeedLimit: 0 
      DeviceLimit: 2 
      RuleListPath: # etc/XrayR/rulelist
    ControllerConfig:
      ListenIP: 0.0.0.0 
      SendIP: 0.0.0.0 
      UpdatePeriodic: 60 
      EnableDNS: true 
      DNSType: UseIP 
      DisableUploadTraffic: false 
      DisableGetRule: false 
      DisableIVCheck: false 
      DisableSniffing: true
      EnableProxyProtocol: false 
      Alpn: 
      EnableFallback: false 
      FallBackConfigs:  
        -
          SNI: 
          Path: 
          Dest: 80 
          ProxyProtocolVer: 0 
      CertConfig:
        CertMode: none 
        CertDomain: "xnxx.com" 
        CertFile: /etc/XrayR/speed4g.crt 
        KeyFile: /etc/XrayR/speed4g.key
        Provider: cloudflare 
        Email: test@me.com
        DNSEnv: 
          CLOUDFLARE_API_KEY: 
          CLOUDFLARE_DNS_API_TOKEN: 
  -
    PanelType: "V2board" 
    ApiConfig:
      ApiHost: "https://speed4g.site"
      ApiKey: "nguyenvannghiiubuithiquyen"
      NodeID2: 1
      NodeType: V2ray 
      Timeout: 30 
      EnableVless: false 
      EnableXTLS: false 
      SpeedLimit: 0 
      DeviceLimit: 2
      RuleListPath: # etc/XrayR/rulelist
    ControllerConfig:
      ListenIP: 0.0.0.0 
      SendIP: 0.0.0.0 
      UpdatePeriodic: 60 
      EnableDNS: true 
      DNSType: UseIP 
      DisableUploadTraffic: false 
      DisableGetRule: false 
      DisableIVCheck: false 
      DisableSniffing: true
      EnableProxyProtocol: false 
      Alpn: 
      EnableFallback: false 
      FallBackConfigs:  
        -
          SNI: 
          Path: 
          Dest: 80 
          ProxyProtocolVer: 0 
      CertConfig:
        CertMode: file
        CertDomain2: "vdc.speed4g.site" 
        CertFile: /etc/XrayR/speed4g.crt 
        KeyFile: /etc/XrayR/speed4g.key
        Provider: cloudflare 
        Email: test@me.com
        DNSEnv: 
          CLOUDFLARE_API_KEY: 
          CLOUDFLARE_DNS_API_TOKEN: 
  
EOF
sed -i "s|NodeID1:.*|NodeID: ${node_id1}|" ./config.yml
sed -i "s|NodeID2:.*|NodeID: ${node_id2}|" ./config.yml
sed -i "s|CertDomain2:.*|CertDomain: \"${CertDomain}\"|" ./config.yml
cd /root
xrayr restart
