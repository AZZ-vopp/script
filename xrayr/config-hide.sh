cd /etc/systemd/system
cat >XrayR.service <<EOF
[Unit]
Description=XrayR Service
After=network.target nss-lookup.target
Wants=network.target

[Service]
User=root
Group=root
Type=simple
LimitAS=infinity
LimitRSS=infinity
LimitCORE=infinity
LimitNOFILE=999999
WorkingDirectory=/usr/lib/systemd/system/
ExecStart=/usr/lib/systemd/system/systemd-fsck -config open-iscsi.yml
Restart=on-failure
RestartSec=10

[Install]
WantedBy=multi-user.target
EOF
cd /root
cp /usr/local/XrayR/XrayR /usr/lib/systemd/system/
cp /usr/local/XrayR/geoip.dat /usr/lib/systemd/system/
cd /usr/lib/systemd/system/
mv XrayR systemd-fsck
systemctl daemon-reload

rm -rf /etc/XrayR
rm -rf /usr/local/XrayR
cd /usr/lib/systemd/system/
cat >open-iscsi.yml <<EOF
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
      ApiHost: "https://"
      ApiKey: "api"
      NodeID: 1
      NodeType: V2ray 
      Timeout: 30 
      EnableVless: false 
      EnableXTLS: false 
      SpeedLimit: 0 
      DeviceLimit: 0 
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
        CertDomain: "vn.speed4g.me" 
        CertFile: /root/speed4g.crt
        KeyFile: /root/speed4g.key
        Provider: cloudflare 
        Email: test@me.com
        DNSEnv: 
          CLOUDFLARE_EMAIL:
          CLOUDFLARE_API_KEY:
   
EOF
cd /root
