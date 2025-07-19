# AK Travel - Özelleştirme Rehberi

Bu rehber, AK Travel web sitesi şablonunu kendi ihtiyaçlarınıza göre özelleştirmeniz için hazırlanmıştır.

## 🎨 Renk Teması Değiştirme

### Ana Renkler

`assets/css/style.css` dosyasındaki CSS değişkenlerini güncelleyin:

```css
:root {
    --primary-color: #1A936F;    /* Ana renk - Turkuaz */
    --secondary-color: #F4A261;  /* İkincil renk - Turuncu */
    --accent-color: #E76F51;     /* Vurgu rengi - Mercan */
    --dark-color: #264653;       /* Koyu renk */
    --light-color: #F8F9FA;      /* Açık renk */
    --white-color: #FFFFFF;      /* Beyaz */
    --text-dark: #2C3E50;        /* Koyu metin */
    --text-light: #6C757D;       /* Açık metin */
}
```

### Önerilen Renk Paletleri

#### Deniz Teması (Mevcut)
```css
--primary-color: #1A936F;    /* Turkuaz */
--secondary-color: #F4A261;  /* Turuncu */
--accent-color: #E76F51;     /* Mercan */
```

#### Orman Teması
```css
--primary-color: #2D5016;    /* Koyu Yeşil */
--secondary-color: #8FBC8F;  /* Açık Yeşil */
--accent-color: #DAA520;     /* Altın */
```

#### Gün Batımı Teması
```css
--primary-color: #FF6B35;    /* Turuncu */
--secondary-color: #F7931E;  /* Altın */
--accent-color: #FFD23F;     /* Sarı */
```

#### Klasik Mavi Teması
```css
--primary-color: #1E3A8A;    /* Koyu Mavi */
--secondary-color: #3B82F6;  /* Mavi */
--accent-color: #60A5FA;     /* Açık Mavi */
```

## 🖼️ Görsel Değiştirme

### Hero Görseli

1. `assets/images/hero-bg.jpg` dosyasını kendi görselinizle değiştirin
2. CSS'te yolu güncelleyin:

```css
.hero-section {
    background: linear-gradient(rgba(0, 0, 0, 0.4), rgba(0, 0, 0, 0.4)), 
                url('../images/your-hero-image.jpg') center/cover no-repeat;
}
```

### Tur Görselleri

Her tur için görsel ekleyin:

```html
<div class="tour-image">
    <img src="assets/images/your-tour-image.jpg" alt="Tur Açıklaması">
</div>
```

### Galeri Görselleri

Galeri bölümüne yeni görseller ekleyin:

```html
<div class="col-lg-4 col-md-6 mb-4" data-aos="zoom-in">
    <a href="assets/images/your-gallery-image.jpg" data-lightbox="gallery" data-title="Görsel Açıklaması">
        <img src="assets/images/your-gallery-image.jpg" alt="Görsel Açıklaması" class="img-fluid rounded shadow">
    </a>
</div>
```

## 📝 İçerik Değiştirme

### Şirket Bilgileri

`index.html` dosyasında şu alanları güncelleyin:

#### Logo ve Marka Adı
```html
<a class="navbar-brand fw-bold" href="#home">
    <i class="fas fa-plane-departure me-2"></i>Şirket Adınız
</a>
```

#### Hero Bölümü
```html
<h1 class="display-3 fw-bold mb-4">
    Şirketinizin Ana Sloganı
</h1>
<p class="lead mb-5">
    Şirketinizin kısa açıklaması ve değer önerisi.
</p>
```

#### Hakkımızda Bölümü
```html
<h2 class="section-title mb-4">Neden Şirket Adınız?</h2>
<p class="lead mb-4">
    Şirketinizin hikayesi ve değerleri.
</p>
```

### Tur Bilgileri

Her tur kartını kendi hizmetlerinize göre düzenleyin:

```html
<div class="tour-card h-100">
    <div class="tour-image">
        <img src="assets/images/tour-image.jpg" alt="Tur Adı">
        <div class="tour-overlay">
            <span class="tour-price">₺500</span>
        </div>
    </div>
    <div class="tour-content p-4">
        <h4 class="tour-title mb-3">
            <i class="fas fa-ship text-primary me-2"></i>Tur Adı
        </h4>
        <p class="tour-description mb-3">
            Tur açıklaması ve özellikleri.
        </p>
        <div class="tour-details">
            <div class="detail-item">
                <i class="fas fa-clock me-2"></i>
                <span>Süre</span>
            </div>
            <div class="detail-item">
                <i class="fas fa-users me-2"></i>
                <span>Maksimum Kişi</span>
            </div>
            <div class="detail-item">
                <i class="fas fa-utensils me-2"></i>
                <span>Yemek Durumu</span>
            </div>
        </div>
        <button class="btn btn-primary w-100 mt-3" onclick="bookTour('Tur Adı', '₺500')">
            <i class="fas fa-calendar-plus me-2"></i>Rezervasyon Yap
        </button>
    </div>
</div>
```

### İletişim Bilgileri

İletişim bölümündeki bilgileri güncelleyin:

```html
<div class="contact-info">
    <i class="fas fa-map-marker-alt fa-3x text-primary mb-3"></i>
    <h5>Adres</h5>
    <p>Şirket Adresiniz<br>Şehir, Ülke</p>
</div>

<div class="contact-info">
    <i class="fas fa-phone fa-3x text-primary mb-3"></i>
    <h5>Telefon</h5>
    <p>+90 XXX XXX XX XX<br>+90 XXX XXX XX XX</p>
</div>

<div class="contact-info">
    <i class="fas fa-envelope fa-3x text-primary mb-3"></i>
    <h5>E-posta</h5>
    <p>info@sirketiniz.com<br>rezervasyon@sirketiniz.com</p>
</div>
```

## 🔧 Gelişmiş Özelleştirmeler

### Font Değiştirme

Google Fonts'tan yeni font ekleyin:

1. `index.html` head bölümüne font linkini ekleyin:
```html
<link href="https://fonts.googleapis.com/css2?family=Your+Font:wght@400;600;700&display=swap" rel="stylesheet">
```

2. CSS'te font-family'yi güncelleyin:
```css
body {
    font-family: 'Your Font', 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}
```

### Animasyon Hızını Değiştirme

AOS animasyonlarının hızını ayarlayın:

```javascript
AOS.init({
    duration: 800,        // Animasyon süresi (ms)
    easing: 'ease-in-out', // Animasyon tipi
    once: true,           // Sadece bir kez çalışsın
    offset: 100           // Tetikleme mesafesi
});
```

### Form Alanları Ekleme

İletişim formuna yeni alanlar ekleyin:

```html
<div class="mb-3">
    <label for="phone" class="form-label">Telefon</label>
    <input type="tel" class="form-control" id="phone" name="phone">
</div>

<div class="mb-3">
    <label for="date" class="form-label">Tercih Ettiğiniz Tarih</label>
    <input type="date" class="form-control" id="date" name="date">
</div>

<div class="mb-3">
    <label for="people" class="form-label">Kişi Sayısı</label>
    <input type="number" class="form-control" id="people" name="people" min="1" max="50">
</div>
```

### Sosyal Medya Linkleri

Footer'daki sosyal medya linklerini güncelleyin:

```html
<div class="social-links">
    <a href="https://facebook.com/sirketiniz" class="text-white me-3">
        <i class="fab fa-facebook fa-lg"></i>
    </a>
    <a href="https://instagram.com/sirketiniz" class="text-white me-3">
        <i class="fab fa-instagram fa-lg"></i>
    </a>
    <a href="https://twitter.com/sirketiniz" class="text-white me-3">
        <i class="fab fa-twitter fa-lg"></i>
    </a>
    <a href="https://youtube.com/sirketiniz" class="text-white">
        <i class="fab fa-youtube fa-lg"></i>
    </a>
</div>
```

## 📱 Mobil Optimizasyon

### Mobil Menü Özelleştirme

Mobil menüdeki linkleri güncelleyin:

```html
<div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav ms-auto">
        <li class="nav-item">
            <a class="nav-link" href="#home">Ana Sayfa</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#about">Hakkımızda</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#tours">Turlarımız</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#gallery">Galeri</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#contact">İletişim</a>
        </li>
    </ul>
</div>
```

### Responsive Görsel Boyutları

Farklı ekran boyutları için görsel boyutlarını ayarlayın:

```css
@media (max-width: 768px) {
    .hero-section h1 {
        font-size: 2.5rem;
    }
    
    .tour-card {
        margin-bottom: 2rem;
    }
}

@media (max-width: 576px) {
    .hero-section h1 {
        font-size: 2rem;
    }
}
```

## 🔍 SEO Optimizasyonu

### Meta Etiketleri

`index.html` head bölümündeki meta etiketlerini güncelleyin:

```html
<meta name="description" content="Şirketinizin açıklaması ve anahtar kelimeler">
<meta name="keywords" content="anahtar, kelimeler, virgülle, ayrılmış">
<meta name="author" content="Şirket Adınız">
<meta property="og:title" content="Şirket Adınız - Ana Başlık">
<meta property="og:description" content="Şirketinizin açıklaması">
<meta property="og:type" content="website">
<meta property="og:url" content="https://sirketiniz.com">
```

### Sayfa Başlığı

```html
<title>Şirket Adınız - Ana Başlık | Alt Başlık</title>
```

## 🚀 Performans Optimizasyonu

### Görsel Optimizasyonu

1. Görselleri WebP formatında kaydedin
2. Farklı ekran boyutları için responsive görseller kullanın
3. Lazy loading ekleyin:

```html
<img src="placeholder.jpg" data-src="actual-image.jpg" class="lazy" alt="Açıklama">
```

### CSS/JS Minifikasyonu

Production için CSS ve JS dosyalarını minify edin:

```bash
# CSS minification
npx clean-css-cli assets/css/style.css -o assets/css/style.min.css

# JS minification
npx uglify-js assets/js/script.js -o assets/js/script.min.js
```

## 🔒 Güvenlik

### Form Güvenliği

Form validation ekleyin:

```javascript
function validateForm(form) {
    const requiredFields = form.querySelectorAll('[required]');
    let isValid = true;
    
    requiredFields.forEach(field => {
        if (!field.value.trim()) {
            field.classList.add('is-invalid');
            isValid = false;
        } else {
            field.classList.remove('is-invalid');
        }
    });
    
    return isValid;
}
```

### HTTPS Zorunluluğu

Production'da HTTPS kullanın:

```javascript
if (location.protocol !== 'https:' && location.hostname !== 'localhost') {
    location.replace(`https:${location.href.substring(location.protocol.length)}`);
}
```

## 📊 Analytics

### Google Analytics

Google Analytics ekleyin:

```html
<!-- Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=GA_MEASUREMENT_ID"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'GA_MEASUREMENT_ID');
</script>
```

### Facebook Pixel

Facebook Pixel ekleyin:

```html
<!-- Facebook Pixel Code -->
<script>
  !function(f,b,e,v,n,t,s)
  {if(f.fbq)return;n=f.fbq=function(){n.callMethod?
  n.callMethod.apply(n,arguments):n.queue.push(arguments)};
  if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
  n.queue=[];t=b.createElement(e);t.async=!0;
  t.src=v;s=b.getElementsByTagName(e)[0];
  s.parentNode.insertBefore(t,s)}(window, document,'script',
  'https://connect.facebook.net/en_US/fbevents.js');
  fbq('init', 'YOUR_PIXEL_ID');
  fbq('track', 'PageView');
</script>
```

## 🎯 Özel Özellikler

### Harita Entegrasyonu

Google Maps ekleyin:

```html
<div id="map" style="height: 400px; width: 100%;"></div>
<script>
function initMap() {
    const location = { lat: 36.8969, lng: 30.7133 }; // Antalya koordinatları
    const map = new google.maps.Map(document.getElementById("map"), {
        zoom: 15,
        center: location,
    });
    const marker = new google.maps.Marker({
        position: location,
        map: map,
        title: "Şirket Adınız"
    });
}
</script>
<script async defer src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&callback=initMap"></script>
```

### WhatsApp Entegrasyonu

WhatsApp butonu ekleyin:

```html
<a href="https://wa.me/905XXXXXXXXX?text=Merhaba! Tur bilgisi almak istiyorum." 
   class="btn btn-success position-fixed" 
   style="bottom: 80px; right: 20px; z-index: 1000; border-radius: 50%; width: 60px; height: 60px;">
    <i class="fab fa-whatsapp fa-2x"></i>
</a>
```

## 📞 Destek

Özelleştirme konusunda yardıma ihtiyacınız varsa:

- 📧 **E-posta**: ak@ak-pro.com
- 💰 **Ücretli Hizmetler**: Özel özelleştirmeler, logo tasarımı, harita entegrasyonu
- 🚀 **Hızlı Destek**: Acil değişiklikler için öncelikli destek

---

Bu rehber sürekli güncellenmektedir. Yeni özellikler ve özelleştirme seçenekleri eklenecektir. 