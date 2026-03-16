#!/bin/bash
# ============================================================
# cPanel Feature Manager - WordPress Hosting
# File    : set-default-features.sh
# Repo    : https://github.com/AnonymousVS/cPanel-Feature-Manager
# ============================================================

FEATURE_FILE="/var/cpanel/features/default"

cp "$FEATURE_FILE" "${FEATURE_FILE}.bak.$(date +%Y%m%d%H%M%S)"
echo "✅ Backup done"

cat > "$FEATURE_FILE" << 'EOF'
softaculous=1
wp_softaculous=1
wp-toolkit=1
wp-toolkit-deluxe=1
mysql=1
phpmyadmin=1
filemanager=1
ftpaccts=1
ftpsetup=1
ssh=1
cron=1
redirects=1
subdomains=1
addondomains=1
parkeddomains=1
autossl=1
sslinstall=1
sslmanager=1
tls_wizard=1
multiphp=1
multiphp_ini_editor=1
php-config=1
ea-php81=1
ea-php82=1
ea-php83=1
ea-php84=1
ea-php85=1
backup=1
filerestoration=1
jb5=1
imunify360=1
modsecurity=1
hotlink=1
webprotect=1
blockers=1
ls_web_cache_manager=1
ls_redis_cache=1
zoneedit=1
simplezoneedit=1
dnssec=1
dynamicdns=1
mime=1
handlers=1
errpgs=1
password=1
updatecontact=1
user_manager=1
bandwidth=1
errlog=1
addoncgi=0
agora=0
analog=0
api_shell=0
apitokens=0
autoresponders=0
awstats=0
bbs=0
boxtrapper=0
caldavcarddav=0
cgi=0
changemx=0
chat=0
clamavconnector_scan=0
clock=0
countdown=0
counter=0
cpanelpro_images=0
cpanelpro_leechprotect=0
cpanelpro_support=0
csvimport=0
defaultaddress=0
dirselector=0
diskusageviewer=0
email_disk_usage=0
emailarchive=0
emailauth=0
emaildomainfwd=0
emailfilter=0
emailtrace=0
fantastico=0
forwarders=0
getstart=0
greylist=0
indexmanager=0
ipdeny=0
koality=0
lastvisits=0
lists=0
market=0
mcp=0
modules-perl=0
modules-php-pear=0
modules-ruby=0
nettools=0
optimizews=0
passengerapps=0
pgp=0
phppgadmin=0
popaccts=0
postgres=0
rawlog=0
ror=0
scgiwrap=0
searchsubmit=0
serverstatus=0
setlang=0
sitejet=0
sitepublisher=0
socialbee=0
soft_div_icons=0
spamassassin=0
spambox=0
statselect=0
subdomainstats=0
team_manager=0
theme-switch=0
traceaddy=0
twofactorauth=0
updatenotificationprefs=0
version_control=0
videotut=0
webalizer=0
webdisk=0
webmail=0
EOF

echo ""
echo "========== ENABLED (=1) =========="
grep "=1" "$FEATURE_FILE" | sort

echo ""
echo "========== DISABLED (=0) =========="
grep "=0" "$FEATURE_FILE" | sort

echo ""
echo "✅ Done! Enabled: $(grep -c '=1' $FEATURE_FILE) | Disabled: $(grep -c '=0' $FEATURE_FILE)"
