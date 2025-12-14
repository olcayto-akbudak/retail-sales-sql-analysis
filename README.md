# Retail Satış ve Müşteri Davranışı Analizi (SQL Server)

## 1. Proje Genel Bakış

Bu proje, **SQL Server (SSMS)** kullanılarak hazırlanmış, **senior seviye**, **iş odaklı** bir **retail satış performansı ve müşteri davranışı analizi** çalışmasıdır. Proje, GitHub portföyü ve teknik mülakatlar için uçtan uca örnek olacak şekilde tasarlanmıştır.

Analizler **aylık ve yıllık bazda** yapılmış olup, yönetim seviyesinde karar almaya destek olacak içgörüler üretmeyi hedefler.

---

## 2. İş Problemi ve Amaçlar

Bu proje aşağıdaki iş sorularına yanıt verir:

* Satış performansı zaman içinde nasıl değişiyor?
* Gelir artışı kârlılıkla paralel mi?
* Müşterilerin satın alma davranışları nasıl?
* Tek seferlik ve tekrar eden müşterilerin dağılımı nedir?
* En değerli müşteriler cironun ne kadarını oluşturuyor?

---

## 3. Veri Seti ve Veri Modeli

Proje, **fact–dimension (yıldız şema)** yaklaşımına uygun olarak modellenmiştir.

### 3.1 Customers (Boyut Tablosu)

* Müşteri demografik bilgileri
* Kayıt (signup) tarihleri

### 3.2 Products (Boyut Tablosu)

* Ürün bilgileri
* Kategori, satış fiyatı ve maliyet

### 3.3 Stores (Boyut Tablosu)

* Mağaza ve şehir bilgileri

### 3.4 Sales (Fakt Tablosu)

* İşlem bazlı satış verisi
* Tarih, müşteri, ürün ve mağaza kırılımları

Bu yapı, ileri seviye zaman serisi ve müşteri analizi yapılmasına olanak tanır.

---

## 4. Kullanılan KPI’lar

Projede hesaplanan temel iş metrikleri:

* Toplam Ciro (Total Revenue)
* Toplam Kâr (Total Profit)
* Ortalama Sipariş Değeri (AOV)
* Aylık Satış Trendleri
* Yıllık Büyüme Oranı (YoY)
* Tekrar Eden Müşteri Oranı
* En Değerli Müşterilerin Ciro Katkısı (Pareto Analizi)

---

## 5. Satış Performansı Analizi

### 5.1 Aylık Satış ve Kârlılık Analizi

Yanıtlanan iş soruları:

* Ay bazında satışlar artıyor mu?
* Kârlılık satışlarla birlikte büyüyor mu?

Bu bölümde aylık bazda:

* Toplam ciro
* Toplam kâr
  hesaplanmıştır.

---

### 5.2 Yıllık Büyüme Analizi (Year-over-Year)

Yanıtlanan iş soruları:

* Şirket yıllık bazda büyüyor mu?
* Mevcut yıl performansı önceki yıla göre nasıl?

Kullanılan teknikler:

* Common Table Expressions (CTE)
* Window Functions (LAG)

---

## 6. Müşteri Davranışı Analizi

### 6.1 Satın Alma Sıklığı

Müşteri bazında:

* Toplam sipariş sayısı
* Satın alma gün sayısı
  analiz edilmiştir.

---

### 6.2 Tek Seferlik ve Tekrar Eden Müşteriler

Müşteriler iki segmente ayrılmıştır:

* One-Time Customers (tek alışveriş yapanlar)
* Repeat Customers (tekrar eden müşteriler)

Bu analiz, CRM ve müşteri sadakati stratejileri için kritik öneme sahiptir.

---

### 6.3 Yüksek Değerli Müşteri Analizi (Pareto %20 Kuralı)

Amaç:

* En yüksek geliri oluşturan müşteri grubunu belirlemek
* Ciro dağılımını segment bazında incelemek

Kullanılan yöntemler:

* NTILE window function
* Gelir bazlı müşteri sıralaması

---

## 7. Kullanılan SQL Teknikleri

* Çoklu JOIN işlemleri
* GROUP BY ve agregasyonlar
* Common Table Expressions (CTE)
* Window Functions (LAG, NTILE)
* Tarih bazlı analizler (MONTH / YEAR)
* İş odaklı KPI hesaplamaları

---

## 8. Kullanılan Teknolojiler

* SQL Server (SSMS)
* T-SQL
* GitHub (versiyon kontrol ve dokümantasyon)

---

## 9. Projenin Kullanım Alanları

Bu proje aşağıdaki amaçlarla kullanılabilir:

* Senior Data Analyst portföy projesi
* SQL teknik mülakat case çalışması
* Retail analitiği için referans mimari

---

## 10. Öne Çıkan Kazanımlar

* Uçtan uca SQL analiz süreci
* Teknik sorguların iş değeriyle ilişkilendirilmesi
* Kurumsal veri modelleme yaklaşımı
* Yönetim seviyesinde yorumlanabilir çıktılar

---

## 11. Geliştirme Önerileri

* RFM müşteri segmentasyonu
* Store ve kategori bazlı KPI’lar
* Kampanya etkisi analizi
* BI araçlarıyla entegrasyon (Power BI, Tableau)

---

**Yazar:** Olcayto Akbudak
**Seviye:** Senior SQL Analizi
**Alan:** Retail Analytics
