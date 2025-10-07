# 🏢 Corp-Admin SPA  
**Django + Flask + Angular + Nginx + Gunicorn**

---

## 📘 システム概要
**SPA（Single Page Application）型バックオフィス管理システム**

- フロントエンド：Angular による高速なシングルページUI  
- バックエンド：Django + Flask による柔軟なAPI設計  
- インフラ：Nginx + Gunicorn + systemd による安定稼働  
- HTTPS化：Let's Encrypt (Certbot) による自動SSL更新対応

---

## 🧩 システム構成図
```
    A[Client UI<br>(Angular SPA)] -->|HTTPS / Nginx| B[Nginx Reverse Proxy]
    B --> C[Django (Gunicorn)<br>/api/...]
    B --> D[Flask (Gunicorn)<br>/flask/api/...]
    C --> E[(SQLite / PostgreSQL)]
    D --> E
```
---

## レイヤー 、技術 、 バージョン、用途
<img width="1079" height="466" alt="{4577136B-A638-4C57-A1A6-B08CF6859D48}" src="https://github.com/user-attachments/assets/24b3878d-80b2-4508-896f-00b63b91975d" />


---

## 📄 概要

🎯 システム目的<br/>
バックオフィス業務（顧客・社員・売上・案件など）のデータ管理を統合<br/>

---

## 🧭機能一覧
<img width="920" height="228" alt="{2CC0E070-AD69-4300-8BC0-8A51E38AEBE4}" src="https://github.com/user-attachments/assets/14cf4b1f-fbe1-4400-9971-525b6eab43a6" />

---
## 🧭システム構成
<img width="1140" height="357" alt="{CBBCB988-CAD5-49ED-B5E3-1D4FBB2F0F5C}" src="https://github.com/user-attachments/assets/b6841017-dfd7-40c8-92b6-0115c6f237bd" />


---

## ⚙運用設計
・Gitブランチ：main のみ運用<br/>
・deploy.sh により差分デプロイ<br/>
・systemdでプロセス常駐化<br/>
・CertbotによるSSL自動更新<br/>
・cronで証明書更新・バックアップを自動実行<br/>
