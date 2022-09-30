read -p " NODE ID 1: " node_id1
  [ -z "${node_id1}" ] && node_id1=0
  
read -p " NODE ID 2: " node_id2
  [ -z "${node_id2}" ] && node_id2=0
  
read -p  "CertDomain: " CertDomain
  [ -z "${CertDomain}" ] && CertDomain="vn.speed4g.me"
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
WorkingDirectory=/root/
ExecStart=/root/SPEED4G -config speed4g.yml
Restart=on-failure
RestartSec=10

[Install]
WantedBy=multi-user.target
EOF
cd /root
cp /usr/local/XrayR/XrayR /root/
mv XrayR SPEED4G
systemctl daemon-reload
rm -rf /etc/XrayR
rm -rf /usr/local/XrayR
openssl req -newkey rsa:2048 -x509 -sha256 -days 365 -nodes -out /root/speed4g.crt -keyout /root/speed4g.key -subj "/C=JP/ST=Tokyo/L=Chiyoda-ku/O=Google Trust Services LLC/CN=google.com"
cat >speed4g.yml <<EOF
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
        CertMode: file 
        CertDomain1: "vn.speed4g.me" 
        CertFile: /root/speed4g.crt
        KeyFile: /root/speed4g.key
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
        CertFile: /root/speed4g.crt 
        KeyFile: /root/speed4g.key
        Provider: cloudflare 
        Email: test@me.com
        DNSEnv: 
          CLOUDFLARE_EMAIL: 
          CLOUDFLARE_API_KEY: 
EOF
sed -i "s|NodeID1:.*|NodeID: ${node_id1}|" ./speed4g.yml
sed -i "s|NodeID2:.*|NodeID: ${node_id2}|" ./speed4g.yml
sed -i "s|CertDomain1:.*|CertDomain: \"${CertDomain}\"|" ./speed4g.yml
sed -i "s|CertDomain2:.*|CertDomain: \"${CertDomain}\"|" ./speed4g.yml
cd /root

