# 🎯 Flutter Service Locator Pattern - Locator Örnek

<div align="center">
  <img src="https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white" alt="Flutter">
  <img src="https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white" alt="Dart">
  <img src="https://img.shields.io/badge/License-MIT-blue.svg?style=for-the-badge" alt="License">
</div>

## 📋 Proje Hakkında

Bu proje, Flutter uygulamalarında **Service Locator Design Pattern**'inin nasıl implement edileceğini gösteren kapsamlı bir örnektir. Dependency Injection (DI) ve service management için modern yaklaşımları içerir.

## ✨ Özellikler

- 🏗️ **Service Locator Pattern** implementasyonu
- 📦 **GetX** ile state management
- 🔧 **Singleton Pattern** kullanımı
- 📊 **Database Helper** servisi
- 🌐 **Web Service** yapısı
- 🧹 **Service Dispose** yönetimi
- 🚀 **App Initializer** pattern

## 🏗️ Proje Yapısı

```
lib/
├── main.dart                          # Ana uygulama dosyası
└── proje1/
    ├── core/
    │   ├── app_initializer.dart        # Uygulama başlatıcı
    │   ├── services_locator/
    │   │   └── services_locator.dart   # Service Locator implementasyonu
    │   └── services/
    │       ├── web_services.dart       # Web servisleri
    │       ├── database_helper.dart    # Veritabanı yardımcısı
    │       └── all_dispose_services.dart # Service disposal yöneticisi
    └── views/
        └── home_page_proje1.dart      # Ana sayfa
```

## 🚀 Kurulum

### Gereksinimler
- Flutter SDK (3.7.2+)
- Dart SDK
- Android Studio / VS Code

### Kurulum Adımları

1. **Projeyi klonlayın:**
   ```bash
   git clone https://github.com/muhammedeminalan/locator-ornek.git
   cd locator-ornek
   ```

2. **Bağımlılıkları yükleyin:**
   ```bash
   flutter pub get
   ```

3. **Uygulamayı çalıştırın:**
   ```bash
   flutter run
   ```

## 🔧 Kullanılan Teknolojiler

| Teknoloji | Versiyon | Açıklama |
|-----------|----------|----------|
| Flutter   | 3.7.2+   | UI Framework |
| Dart      | 3.7.2+   | Programming Language |
| GetX      | ^4.7.2   | State Management |
| Cupertino Icons | ^1.0.8 | iOS Style Icons |

## 📖 Service Locator Pattern

Bu projede kullanılan Service Locator pattern'i şu avantajları sağlar:

- **Dependency Management**: Servislerin merkezi yönetimi
- **Singleton Implementation**: Tek instance garantisi
- **Memory Management**: Otomatik dispose işlemleri
- **Scalability**: Kolay genişletilebilirlik

### Kullanım Örneği

```dart
// Service'i almak
final webService = ServicesLocator().fetch<WebService>();

// Service'i dispose etmek
ServicesLocator().dispose<WebService>();
```

## 📱 Ekran Görüntüleri

*Ekran görüntüleri yakında eklenecek...*

## 🤝 Katkıda Bulunma

1. Bu repository'yi fork edin
2. Feature branch oluşturun (`git checkout -b feature/amazing-feature`)
3. Değişikliklerinizi commit edin (`git commit -m 'Add some amazing feature'`)
4. Branch'inizi push edin (`git push origin feature/amazing-feature`)
5. Pull Request oluşturun

## 📝 Lisans

Bu proje MIT lisansı altında lisanslanmıştır. Daha fazla bilgi için [LICENSE](LICENSE) dosyasına bakın.

## 👨‍💻 Geliştirici

**Muhammed Emin Alan**
- GitHub: [@muhammedeminalan](https://github.com/muhammedeminalan)

## 🌟 Destek

Eğer bu proje işinize yaradıysa, lütfen ⭐ vererek destekleyin!

---

<div align="center">
  <sub>Flutter ile ❤️ ile geliştirilmiştir</sub>
</div>
