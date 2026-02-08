# Sorumluluk Reddi (Disclaimer)

MrxComponent bileşen seti, geliştirme sürecini hızlandırmak ve ortak bir UI/UX standardı sağlamak amacıyla **“olduğu gibi” (AS IS)** sunulmaktadır. Bileşenlerin tüm platformlarda, tüm senaryolarda veya her FMX sürümünde **%100 sorunsuz ve hatasız çalışacağı garanti edilmez**.

Bileşen güncellemeleri, Platform farklılıkları, FMX sürüm değişiklikleri, üçüncü parti bağımlılıklar (ör. Skia) ve donanım/işletim sistemi varyasyonları nedeniyle beklenmeyen davranışlar veya uyumsuzluklar oluşabilir. Bu nedenle, bileşen setinin üretim ortamında kullanılmadan önce **geliştirici tarafından kapsamlı şekilde test edilmesi** önerilir.

MrxComponent; veri kaybı, performans sorunları, uygulama hataları, iş kesintileri veya doğrudan/dolaylı zararlardan dolayı **herhangi bir sorumluluk kabul etmez**. Bileşenlerin kullanımı tamamen geliştiricinin kendi sorumluluğundadır.

Bu bileşen setini kullanan geliştirici, yukarıdaki koşulları kabul etmiş sayılır.

# Uyumluluk

MrxComponent, **Delphi 13** kullanılarak geliştirilmekte olup testler aktif olarak **Delphi 13** üzerinde gerçekleştirilmektedir.  
Bileşen setinin, **Skia desteği bulunan diğer Delphi sürümlerinde** de çalışması beklenmektedir; ancak bu sürümler için tam uyumluluk garantisi verilmez.

Farklı Delphi sürümlerinde kullanım öncesinde, geliştiricinin kendi proje ve hedef platformu kapsamında test yapması önerilir.

**Uyarı : Proje ayarlarında Skia aktif olmalıdır.**


# MrxComponent

**MrxComponent**, Delphi FMX tabanlı uygulamalarda platformlar arası (Windows, macOS, iOS, Android) tutarlı bir kullanıcı arayüzü ve davranış standardı oluşturmak amacıyla geliştirilmiş bir bileşen setidir.

FMX’in platformlara göre değişkenlik gösteren varsayılan stillerinin ve yerel farklarının neden olduğu tasarım tutarsızlıklarını ortadan kaldırarak, geliştiricinin tek bir tasarım dili ile ilerlemesini sağlar. Böylece aynı arayüz ve etkileşim mantığı, tüm platformlarda yeniden uğraşa gerek kalmadan korunur.

Bileşenler;

- Performans odaklı,
- Minimal bağımlılıklara sahip,

Genişletilebilir ve özelleştirilebilir bir mimari ile tasarlanmıştır.

Amaç, FMX’in sunduğu hızlı geliştirme avantajını daha da ileri taşıyarak, tekrar eden UI kodlarını azaltmak, bakım maliyetini düşürmek ve projelerin ölçeklenebilirliğini artırmaktır.

MrxComponent:

- Bireysel ve ticari projelerde tamamen **ücretsizdir**.
- Herhangi bir **lisans**, **ücret** veya **atıf** zorunluluğu **içermez**.
- Açık kaynak felsefesiyle daima **ücretsiz** kalacaktır.

![Alt Text](https://github.com/SerhatYanalak/MrxComponents/blob/main/Attachment/preview.gif?raw=true)

## Bileşenler ve Kullanım

Bileşenler, Delphi FMX **Palette** üzerinde varsayılan olarak gelen **Standart** sekmesindeki **Frames** üzerinden eklenir.
TFrame tabanlı mimari sayesinde bileşenler; yeniden kullanılabilir, özelleştirilebilir ve mevcut UI hiyerarşisine uyumlu şekilde çalışır.

- TMrxEdit
- TMrxEditPath
- TMrxEditImageList
- TMrxAcrylicbar
- TMrxButton
- TMrxButtonIcon
- TMrxButtonIconTextVertical
- TMrxCheckbox
- TMrxCircleProgressbar
- TMrxMemo
- TMrxQRCode
- TMrxStar
- TMrxSwitch
- TMrxText
- TMrxTrackbar

- ## TMrxAcrylicbar

TMrxAcrylicbar, **Skia** tabanlı olarak konumlandırılan bir yüzey üzerinde **puslu cam (acrylic / blur)** efekti oluşturmak amacıyla geliştirilmiş bir bileşendir.

Arka plan içeriğini dinamik olarak örnekleyerek, modern UI tasarımlarında kullanılan yarı saydam ve bulanık cam görünümünü platformlar arası tutarlı şekilde sunar. FMX sahne hiyerarşisiyle uyumlu şekilde çalışır.

## TMrxComponentSettings
- **MinRadius**: Bileşenlerde uygulanabilecek minimum köşe yarıçapı değerini belirler.
- **MaxRadius**: Köşe yuvarlama işlemlerinde kullanılabilecek maksimum yarıçap sınırını tanımlar.
- **Thickness**: Çizgi, kenarlık veya stroke tabanlı bileşenlerde kullanılacak kalınlık değerini ifade eder.
- **Transparent**: Bileşenin arka planının saydam (transparent) olarak render edilip edilmeyeceğini kontrol eder.


## MrxTools.pas

- ### TMrxLanguages

TMrxLanguages, MrxComponent ekosistemi içerisinde uygulamanın **çoklu dil (localization)** altyapısını yöneten, **görsel olmayan (non-visual)** ve **instance gerektirmeyen** bir yardımcı sınıftır. Tüm işlevler `class procedure` ve `class function` olarak tasarlanmış olup, uygulama genelinde merkezi bir çeviri katmanı oluşturur.

Sınıf, JSON tabanlı dil dosyaları kullanarak UI metinlerinin anahtar bazlı çevrilmesini sağlar ve bu çevirileri form veya frame seviyesinde otomatik olarak uygular. Böylece localization işlemleri UI bileşenlerinden ayrıştırılır ve tekrar eden kod ihtiyacı ortadan kaldırılır.

`LanguageLoad(FilePath: string)` prosedürü, belirtilen JSON dil dosyasını diskten okuyarak belleğe yüklemekten sorumludur. Dosyanın varlığı kontrol edilir; mevcut değilse işlem sessizce iptal edilir. Platforma göre encoding otomatik olarak seçilir (iOS için ANSI, diğer platformlar için UTF-8). Okuma veya parse sırasında hata oluşması durumunda exception fırlatılmaz; sınıf güvenli şekilde boş `{}` içeriğe düşer ve uygulamanın çalışması kesintiye uğramaz. Daha önce yüklenmiş bir dil verisi varsa, bellekten temizlenerek yenisi ile değiştirilir.

`Translate(Key: string): string` fonksiyonu, metin bazlı çeviri işlemini gerçekleştirir. Fonksiyon, verilen metnin karşılığı olup olmadığını kontrol eder. Eğer JSON henüz yüklenmemişse veya metin bulunamazsa, fallback olarak metnin kendisi geri döndürülür. Karşılık bulunması durumunda ilgili çeviri değeri döndürülür. Bu yaklaşım, eksik çeviri kayıtlarının uygulamayı bozmasını engeller.

`TranslateUI(AFrom: TComponent)` prosedürü, localization işleminin UI’ya uygulanmasından sorumludur. Parametre olarak verilen Form veya Frame içerisindeki tüm bileşenler dolaşılır ve desteklenen bileşen türlerinin metin alanları otomatik olarak `Translate` fonksiyonu üzerinden güncellenir. Bu işlem, hem standart FMX bileşenlerini hem de Mrx bileşenlerini kapsar. Skia tabanlı metin bileşenlerinde çeviri işlemi `Words` koleksiyonu üzerinden kelime bazlı olarak uygulanır. Böylece tek bir metod çağrısı ile tüm UI metinleri aktif dile göre güncellenmiş olur.

### Kullanım Örneği

TMrxLanguages sınıfı, dil dosyasının yüklenmesi ve arayüzün güncellenmesi olmak üzere iki temel adımda kullanılır. Bu işlemler genellikle uygulama başlangıcında veya kullanıcı dil tercihini değiştirdiğinde gerçekleştirilir.

Öncelikle aktif dil dosyası `LanguageLoad` metodu ile belleğe alınır. Bu çağrı, JSON tabanlı çeviri verisini okuyarak tüm çeviri işlemlerinde kullanılacak merkezi veri kaynağını hazırlar:

```pascal
TMrxLanguages.LanguageLoad('...\Attachment\ingilizce.json');

TMrxLanguages.TranslateUI(self);
```

TMrxLanguages, runtime sırasında dil değiştirme, merkezi metin yönetimi ve MrxComponent tabanlı projelerde tutarlı bir localization altyapısı sağlamak üzere tasarlanmıştır. UI katmanından tamamen bağımsız çalışır, güvenli fallback mekanizmaları içerir ve büyük ölçekli projelerde bakım maliyetini düşüren ölçeklenebilir bir çözüm sunar.


## Themes (ThemePalettes)

`Themes` unit’i, MrxComponent ekosistemi içerisinde uygulamanın **tema (theme) ve renk paleti** yönetimini merkezi hale getirmek amacıyla oluşturulmuş, **görsel olmayan (non-visual)** bir yapı sunar. Bu unit, farklı tema modları için tanımlanan renk değerlerini tek bir noktada toplayarak, bileşenlerin tutarlı ve ölçeklenebilir şekilde tema desteği kazanmasını sağlar.

`ThemePalettes` dizisi, her tema için aşağıdaki temel renk rollerini tanımlar:
- `Background`: Genel arka plan rengi
- `Font`: Metin ve yazı rengi
- `Triggered`: Aktif, seçili veya vurgulanmış durum rengi
- `Untriggered`: Pasif veya seçili olmayan durum rengi
- `Default`: Bileşenlerin varsayılan yüzey rengi

Varsayılan yapı içerisinde üç tema tanımı yer alır:
- **Light**: Açık renk paleti, gündüz kullanımı ve yüksek kontrastlı arayüzler için
- **Dark**: Koyu renk paleti, düşük ışık ortamları ve gece modu senaryoları için
- **Custom**: Projeye veya markaya özel renk kombinasyonları için genişletilebilir tema

Bu unit doğrudan bir bileşen içermez; yalnızca tema verisini sağlar. Mrx bileşenleri ve yardımcı sınıflar, ihtiyaç duydukları renk bilgilerini bu merkezi palet üzerinden okuyarak kullanır. Böylece her bileşenin kendi içinde renk tanımlaması yapmasına gerek kalmaz ve tüm uygulama genelinde **tasarım bütünlüğü** korunur.

Themes unit’i, MrxComponent mimarisinde tema yönetimini UI katmanından ayırarak, bakım maliyetini düşüren ve yeni tema eklenmesini kolaylaştıran bir altyapı sağlar. Yeni bir tema eklemek, yalnızca `ThemePalettes` dizisine yeni bir `TThemePalette` tanımı eklemekle mümkündür.

```pascal
(Background: $FF393E46;
      Font: $FFEEEEEE;
      Triggered: $FF2C394B;
      Untriggered: $FF787A91;
      Default: $FF393E46)
```

### Tema Kullanımı

Tema uygulama işlemi, Form veya Frame oluşturulurken tek bir çağrı ile gerçekleştirilir. `ApplyTheme` prosedürü, verilen bileşen ağacı içerisindeki Mrx ve desteklenen FMX bileşenlerine, seçilen tema paletini otomatik olarak uygular.

Aşağıdaki örnekte, form oluşturulurken **Light tema** aktif hale getirilmektedir:

```pascal
procedure TForm1.FormCreate(Sender: TObject);
begin
  ApplyTheme(Self, xLight);
end;
```

# Güncelleme geçmişi

### 2.0.0

Bu sürüm büyük yapısal değişiklikler ve kritik düzenlemeler içerir. Bu nedenle önceki sürümlerle geriye dönük uyumluluk garanti edilmez.
Güncellemeden önce lütfen aşağıdaki yenilikler bölümünü inceleyin ve mümkünse ayrı bir proje üzerinde test edin.

 TMrxComponentSettings için desteklenen özellikler :
  - **FontSize** : Bileşenlerde uygulanabilecek yazı büyüklüğünü belirler.
  - **IconScale** : Bileşenlerde uygulanabilecek ikon büyüklüğünü belirler. 0 ile 2 aralığında değer alır.
 
 **TMrxAcrylicbar** : Artık bulanıklaştırma efekti köşe kenarlarını dikkate alıyor.
 
 **ComponentViewAssistant** kaynak dosyası uyum sağlanması için **Mrx.ComponentViewAssistant** olarak yeniden adlandırıldı.

**Mrx.StyleBook** eklendi : TEdit ve TMemo bileşenlerinin tasarımı tüm cihazlarda aynı görünüme ayarlandı.

### 1.1.0 
- TMrxEdit eklendi.
- Bileşenler üzerinde merkezi kontrol ve tasarım bütünlüğü sağlamak için TMrxComponentSettings eklendi.

 TMrxComponentSettings için desteklenen özellikler :
  - **MinRadius** : Bileşenlerde uygulanabilecek minimum köşe yarıçapı değerini belirler.
  - **MaxRadius** : Köşe yuvarlama işlemlerinde kullanılabilecek maksimum yarıçap sınırını tanımlar.
  - **Thickness** : Çizgi, kenarlık veya stroke tabanlı bileşenlerde kullanılacak kalınlık değerini ifade eder.
  - **Transparent** : Bileşenin arka planının saydam (transparent) olarak render edilip edilmeyeceğini kontrol eder.

### 1.0.0
- Temel sürüm

