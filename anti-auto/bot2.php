<?php
// netstat -tn | awk '{print $5}' | sed -e 's/:.*//' | grep '\.'| sort | uniq -c | sort -nr | head -24
$verigelen = file_get_contents("/root/speed4g.me/antiddos.txt");
$veritext = base64_decode($verigelen);
preg_match_all('@     (.*?) @si',$veritext,$obirninja);
$firewalld = (trim($obirninja[0][0]));
if ($firewalld < 13) {
	@exec('screen -S "t13r" bash /root/speed4g.me/bot.sh');
}
?>