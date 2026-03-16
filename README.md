# cPanel-Feature-Manager

cPanel WHM Feature Manager — WordPress Hosting optimized feature list for default profile

---

## 📋 Description

Script สำหรับตั้งค่า Feature List `default` ใน cPanel WHM  
เหมาะสำหรับ **WordPress Hosting** โดยเฉพาะ — เปิดเฉพาะ features ที่จำเป็น ปิด features ที่ไม่ใช้

---

## 📁 Files

| File | Description |
|------|-------------|
| `set-default-features.sh` | Script หลักสำหรับตั้งค่า Feature List `default` |

---

## ✅ Features ที่เปิด (=1)

| หมวด | Features |
|------|----------|
| **WordPress** | softaculous, wp_softaculous, wp-toolkit, wp-toolkit-deluxe |
| **Database** | mysql, phpmyadmin |
| **Files** | filemanager, ftpaccts, ftpsetup, ssh |
| **WP Management** | cron, redirects |
| **Domains** | subdomains, addondomains, parkeddomains |
| **SSL** | autossl, sslinstall, sslmanager, tls_wizard |
| **PHP** | multiphp, multiphp_ini_editor, php-config, ea-php81~85 |
| **Backup** | backup, filerestoration, jb5 |
| **Security** | imunify360, modsecurity, hotlink, webprotect, blockers |
| **LiteSpeed** | ls_web_cache_manager, ls_redis_cache |
| **DNS** | zoneedit, simplezoneedit, dnssec, dynamicdns |
| **Server Config** | mime, handlers, errpgs |
| **Account** | password, updatecontact, user_manager |
| **Monitoring** | bandwidth, errlog |

---

## ❌ Features ที่ปิด (=0)

- Email ทั้งหมด (webmail, popaccts, forwarders, spamassassin ฯลฯ)
- Stats เก่า (analog, webalizer, awstats ฯลฯ)
- Legacy (fantastico, agora, bbs, chat ฯลฯ)
- Perl/Ruby/PostgreSQL
- และอื่นๆ ที่ไม่จำเป็นสำหรับ WordPress hosting

---

## 🚀 วิธีใช้งาน

### วิธีที่ 1 — สร้างไฟล์และรันพร้อมกัน (แนะนำ)

```bash
curl -o /root/set-default-features.sh https://raw.githubusercontent.com/AnonymousVS/cPanel-Feature-Manager/main/set-default-features.sh && bash /root/set-default-features.sh
```

### วิธีที่ 2 — Manual

```bash
# 1. Download
wget -O /root/set-default-features.sh https://raw.githubusercontent.com/AnonymousVS/cPanel-Feature-Manager/main/set-default-features.sh

# 2. รัน
bash /root/set-default-features.sh
```

### วิธีที่ 3 — Copy Paste

```bash
# Copy เนื้อหาในไฟล์ set-default-features.sh วางใน terminal แล้วกด Enter
```

---

## 🔄 Rollback

Script จะ backup ไฟล์เดิมอัตโนมัติก่อนรันทุกครั้ง

```bash
# ดู backup files
ls /var/cpanel/features/default.bak.*

# Rollback
cp /var/cpanel/features/default.bak.YYYYMMDDHHMMSS /var/cpanel/features/default
```

---

## ⚙️ Requirements

- AlmaLinux 8/9
- cPanel/WHM
- LiteSpeed Enterprise
- Imunify360
- JetBackup 5

---

## 📌 Notes

- ทดสอบบน **cPanel 120+** / **AlmaLinux 9.7**
- ไฟล์ feature อยู่ที่ `/var/cpanel/features/default`
- features ที่ไม่มีในไฟล์ = **เปิดอยู่** (cPanel default = 1)
- ต้องรันด้วย `root` เท่านั้น
