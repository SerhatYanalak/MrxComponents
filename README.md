# Sorumluluk Reddi (Disclaimer)

MrxComponent bileşen seti, geliştirme sürecini hızlandırmak ve ortak bir UI/UX standardı sağlamak amacıyla **“olduğu gibi” (AS IS)** sunulmaktadır. Bileşenlerin tüm platformlarda, tüm senaryolarda veya her FMX sürümünde **%100 sorunsuz ve hatasız çalışacağı garanti edilmez**.

Bileşen güncellemeleri, Platform farklılıkları, FMX sürüm değişiklikleri, üçüncü parti bağımlılıklar (ör. Skia) ve donanım/işletim sistemi varyasyonları nedeniyle beklenmeyen davranışlar veya uyumsuzluklar oluşabilir. Bu nedenle, bileşen setinin üretim ortamında kullanılmadan önce **geliştirici tarafından kapsamlı şekilde test edilmesi** önerilir.

MrxComponent; veri kaybı, performans sorunları, uygulama hataları, iş kesintileri veya doğrudan/dolaylı zararlardan dolayı **herhangi bir sorumluluk kabul etmez**. Bileşenlerin kullanımı tamamen geliştiricinin kendi sorumluluğundadır.

Bu bileşen setini kullanan geliştirici, yukarıdaki koşulları kabul etmiş sayılır.

# Uyumluluk

MrxComponent, **Delphi 13** kullanılarak geliştirilmekte olup testler aktif olarak **Delphi 13** üzerinde gerçekleştirilmektedir.  
Bileşen setinin, **Skia desteği bulunan diğer Delphi sürümlerinde** de çalışması beklenmektedir; ancak bu sürümler için tam uyumluluk garantisi verilmez.

Farklı Delphi sürümlerinde kullanım öncesinde, geliştiricinin kendi proje ve hedef platformu kapsamında test yapması önerilir.


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

<a href="">
  <img src="https://raw.githubusercontent.com/SerhatYanalak/MrxComponents/main/Attachment/IMG1.jpg" width="800" />
</a>

<a href="">
  <img src="https://raw.githubusercontent.com/SerhatYanalak/MrxComponents/main/Attachment/IMG2.jpg" width="800" />
</a>

## Bileşenler ve Kullanım

MrxComponent; UI ve altyapı bileşenleriyle FMX tabanlı uygulamalarda tekrar eden kodları azaltmayı, tutarlı davranış ve görünüm sağlamayı hedefler.
Her bileşen, genişletilebilir ve platform bağımsız kullanım prensipleriyle tasarlanmıştır.

Bileşenler, Delphi FMX **Palette** üzerinde varsayılan olarak gelen **Standart** sekmesindeki **Frames** üzerinden eklenir.
TFrame tabanlı mimari sayesinde bileşenler; yeniden kullanılabilir, özelleştirilebilir ve mevcut UI hiyerarşisine uyumlu şekilde çalışır.


- ## TMrxEditPath

TMrxEditPath, FMX’in yerel **TEdit** bileşeni temel alınarak geliştirilmiş ve **SVG tabanlı vektörel ikonların** kullanılabilmesi amacıyla **TPath** bileşeni ile birleştirilmiş bir edit bileşenidir.

- ## TMrxEditImageList

TMrxEditImageList, FMX’in yerel **TEdit** bileşeni temel alınarak geliştirilmiş ve **ImageList** bileşenindeki ikonların kullanılabilmesi amacıyla **TGlyph** bileşeni ile birleştirilmiş bir edit bileşenidir.

- ## TMrxAcrylicbar

TMrxAcrylicbar, **Skia** tabanlı olarak konumlandırılan bir yüzey üzerinde **puslu cam (acrylic / blur)** efekti oluşturmak amacıyla geliştirilmiş bir bileşendir.

Arka plan içeriğini dinamik olarak örnekleyerek, modern UI tasarımlarında kullanılan yarı saydam ve bulanık cam görünümünü platformlar arası tutarlı şekilde sunar. FMX sahne hiyerarşisiyle uyumlu şekilde çalışır.

- ## TMrxButton

TMrxButton, FMX’in standart buton bileşenine kıyasla **tasarım bütünlüğünü ve görsel uyumu** korumayı hedefleyen, **fokus durumunda kavis (curve) efektleri** uygulayan özel bir buton bileşenidir.

Bileşen; tema renkleriyle uyumlu çalışacak şekilde tasarlanmış olup, fokus, hover ve etkileşim durumlarında tutarlı ve modern bir kullanıcı deneyimi sunar.

- ## TMrxButtonIcon

TMrxButtonIcon, **TMrxButton** bileşeninin **TGlyph / ImageList** destekli varyantıdır.  
ImageList üzerinden tanımlanan görsellerin buton içerisine entegre edilmesini sağlayarak, ikonlu buton kullanımını standart ve tutarlı hale getirir.

Tasarım bütünlüğünü koruyan yapı; fokus, hover ve etkileşim durumlarında ikon ve metin hizalamasını bozmadan çalışır. Tema entegrasyonu ve platformlar arası tutarlı görünüm gözetilerek geliştirilmiştir.

- ## TMrxButtonIconTextVertical

TMrxButtonIconTextVertical, **ikon ve metni dikey hiyerarşi** ile sunmak üzere tasarlanmış, **Skia tabanlı `skLabel`** destekli bir buton bileşenidir.

Bileşen; ikon ve metni üst–alt (vertical) yerleşimde konumlandırarak modern mobil ve masaüstü arayüzlerde sık kullanılan aksiyon butonlarını standartlaştırır. Skia altyapısı sayesinde metin ve görsel render işlemleri yüksek kalite ve platformlar arası tutarlılık ile gerçekleştirilir.

Tema renkleriyle uyumlu çalışır; fokus ve etkileşim durumlarında görsel bütünlüğü koruyacak şekilde optimize edilmiştir.

- ## TMrxCheckbox

TMrxCheckbox, FMX tabanlı uygulamalarda kullanılmak üzere geliştirilmiş, **durum (checked / unchecked)** mantığını sade ve kontrollü biçimde yöneten bir checkbox bileşenidir.

Bileşen, dahili olarak `Boolean` türünde bir durum değeri (`xChecked`) tutar ve bu değer **getter** yöntemi üzerinden dışarıya güvenli şekilde sunulur. Checkbox durumu, `isChecked` metodu aracılığıyla programatik olarak değiştirilebilir.

### Özellikler
- `Checked`: Checkbox’ın mevcut durumunu (`True / False`) döndürür.
- `isChecked(status: Boolean)`: Checkbox durumunu kod üzerinden set etmek için kullanılır.

Bu yapı, checkbox durumunun kontrollü şekilde yönetilmesini sağlayarak, UI ve iş mantığı arasındaki bağı sade ve öngörülebilir hale getirir.

### Varsayılan Etkileşim Davranışı

TMrxCheckbox bileşeni, **varsayılan olarak tıklama (click) etkileşimi aktif** gelecek şekilde tasarlanmıştır.  
Bileşenin ana frame alanına yapılan her tıklama, checkbox durumunu otomatik olarak **toggle** eder.

Bu davranış, `FrameClick` metodu içerisinde kontrol edilmekte olup mevcut `Checked` değeri tersine çevrilerek `isChecked` metodu aracılığıyla güncellenir.

Checkbox durumu değiştirildiğinde:
- Dahili `xChecked` değeri güncellenir
- Görsel durum, tema ile uyumlu olacak şekilde  
  `MrxTriggerColors.Triggered` veya  
  `MrxTriggerColors.Untriggered` renklerine otomatik olarak set edilir

Bu yapı sayesinde, ek bir event veya manuel durum kontrolü gerektirmeden, checkbox bileşeni **kullanıma hazır** ve **öngörülebilir** bir etkileşim davranışı sunar.

- ## TMrxCircleProgressbar

TMrxCircleProgressbar, **Skia tabanlı** metin render’ı ve **FMX Arc** bileşenleri kullanılarak geliştirilmiş, **dairesel ilerleme (progress)** göstergesi bileşenidir.  
`TFrame` tabanlı yapısı sayesinde Palette üzerinden eklenebilir ve yeniden kullanılabilir bir UI bileşeni olarak tasarlanmıştır.

Bileşen, ilerleme değerini **0–100 aralığında yüzde (%)** olarak alır ve bu değeri dairesel bir animasyon ile görselleştirir.

### Çalışma Mantığı

- Progress değeri `isValue` metodu ile set edilir.
- Girilen değer otomatik olarak **0–100 aralığına sınırlandırılır**.
- Yüzdelik değer, **0–360 derece** aralığına dönüştürülerek `TArc` bileşeninin `EndAngle` özelliğine uygulanır.
- Geçişler `TFloatAnimation` kullanılarak **yumuşak animasyonlu** şekilde gerçekleştirilir.
- Merkezde yer alan yüzde bilgisi, **Skia tabanlı `TSkLabel`** ile render edilir.

### Özellikler
- `Value`: Mevcut progress değerini döndürür.
- `isValue(value: Extended)`: Progress değerini set eder ve animasyonu başlatır.

### Teknik Detaylar
- **Skia (`TSkLabel`)** ile yüksek kaliteli ve platformlar arası tutarlı metin çizimi
- **TArc** bileşenleri ile vektörel ve ölçeklenebilir progress çizimi
- **TFloatAnimation** ile akıcı ve performans dostu animasyonlar
- `TScaledLayout` kullanımı sayesinde farklı DPI ve ekran ölçeklerine uyum

TMrxCircleProgressbar, yükleme ekranları, işlem durumları ve yüzde bazlı ilerleme göstergelerinin gerektiği tüm senaryolarda, minimal kod ile modern bir görsel sunum sağlar.

- ## TMrxMemo

TMrxMemo, FMX’in yerel **TMemo** bileşeni temel alınarak geliştirilmiş, **otomatik yükseklik (auto-height)** desteğine sahip bir metin giriş bileşenidir.  
`TFrame` tabanlı yapısı sayesinde Palette üzerinden projeye eklenebilir ve mevcut form/frame mimarisiyle sorunsuz şekilde entegre edilir.

Bileşen, içerik değiştikçe memo yüksekliğini dinamik olarak ayarlayarak özellikle mesajlaşma, yorum alanları ve açıklama girişleri gibi senaryolarda esnek bir kullanım sunar.

### Çalışma Mantığı

- Metin değişiklikleri `OnChangeTracking` olayı üzerinden izlenir.
- Memo içeriğinin gerçek yüksekliği (`Content.Height`) hesaplanır.
- İçerik yüksekliğine ek pay eklenerek (`+35`) hedef yükseklik belirlenir.
- `AutoHeight` aktif ise bileşen yüksekliği, `TAnimator.AnimateFloat` kullanılarak **yumuşak animasyonlu** şekilde güncellenir.
- Minimum yükseklik değeri **100 px** olacak şekilde sınırlandırılır.

### Özellikler
- `AutoHeight`: Memo içeriğine göre yüksekliğin otomatik ayarlanıp ayarlanmayacağını belirler.
- Yerel `TMemo` altyapısı sayesinde platforma özgü klavye ve giriş davranışları korunur.

### Teknik Detaylar
- **TFrame** tabanlı, yeniden kullanılabilir yapı
- **TAnimator** ile performans dostu yükseklik animasyonu
- Mobil ve desktop platformlarda tutarlı davranış
- Manuel resize gereksinimini ortadan kaldıran otomatik layout yönetimi

TMrxMemo, dinamik içerik uzunluklarının beklendiği tüm senaryolarda, minimum ek kod ile modern ve akıcı bir kullanıcı deneyimi sağlar.

- ## TMrxQRCode

TMrxQRCode, verilen metin veya veri içeriğini **QR Code** formatında görselleştirmek için geliştirilmiş, `TFrame` tabanlı bir bileşendir.  
FMX sahne yapısıyla uyumlu olacak şekilde tasarlanmış olup, QR üretim işlemi harici bir yardımcı sınıf üzerinden gerçekleştirilir.

Bileşen, dinamik olarak QR içeriğinin güncellenmesini destekler ve yeniden çizim işlemlerini geliştiriciden soyutlayarak sade bir kullanım sunar.

### Çalışma Mantığı

- QR içeriği `QRData` metodu aracılığıyla set edilir.
- Girilen değer dahili olarak `xValue` alanında saklanır.
- Üretilen QR görseli doğrudan `TImage` bileşeni içerisine render edilir.

### Özellikler
- `Value`: Mevcut QR içeriğini (`string`) döndürür.
- `QRData(Value: string)`: QR kod verisini set eder ve yeniden oluşturur.

### Teknik Detaylar
- **TFrame** tabanlı, Palette üzerinden eklenebilir yapı
- **TImage** kullanımı sayesinde platformdan bağımsız render
- Ek konfigürasyon gerektirmeden hızlı entegrasyon

TMrxQRCode, kimlik doğrulama, link paylaşımı, cihaz eşleştirme ve veri aktarımı gibi QR kullanımının gerekli olduğu tüm senaryolarda pratik ve güvenilir bir çözüm sunar.

- ## TMrxStar

TMrxStar, kullanıcıdan **puanlama / derecelendirme (rating)** almak amacıyla geliştirilmiş, **5 yıldızlı** etkileşimli bir bileşendir.  
`TFrame` tabanlı yapısı sayesinde FMX Palette üzerinden projeye eklenebilir ve yeniden kullanılabilir bir UI bileşeni olarak tasarlanmıştır.

Bileşen, vektörel **TPath** tabanlı yıldız ikonları kullanarak çözünürlükten bağımsız ve tema ile uyumlu bir görsel sunum sağlar.

### Çalışma Mantığı

- Her yıldız bir `TPath` bileşeni olarak tanımlanmıştır (`xStar1` – `xStar5`).
- Yıldızlar `Tag` değerleri üzerinden kendi derecelerini temsil eder.
- Kullanıcı bir yıldıza tıkladığında, `StarValue` metodu çağrılarak seçilen değere kadar olan yıldızlar aktif hale getirilir.
- Aktif / pasif durumlar, tema ile uyumlu olacak şekilde  
  `MrxTriggerColors.Triggered` ve  
  `MrxTriggerColors.Untriggered` renkleriyle görselleştirilir.

### Özellikler
- `Value`: Seçili yıldız sayısını (`1–5`) döndürür.
- `StarValue(value: Integer)`: Yıldız derecesini programatik olarak set eder.
- `Clear`: Tüm yıldızları pasif (untriggered) duruma getirir.

### Teknik Detaylar
- **TPath** tabanlı vektörel ikonlar
- **TFlowLayout** ile otomatik yatay hizalama
- **TScaledLayout** ile DPI ve ekran ölçeklerine uyum
- Tema renkleriyle entegre durum yönetimi
- Event tabanlı kullanıcı etkileşimi

### Varsayılan Tıklama (Click) Davranışı

TMrxStar bileşeni, **varsayılan olarak kullanıcı etkileşimine hazır** gelecek şekilde tasarlanmıştır.  
Her yıldız (`TPath`) bileşeni, kendi derecesini temsil eden `Tag` değeri üzerinden click olayına sahiptir.

Kullanıcı bir yıldıza tıkladığında:
- İlgili `TPath` bileşeninin `Tag` değeri okunur
- `StarValue` metodu otomatik olarak çağrılır
- Seçilen değere kadar olan yıldızlar aktif (triggered) duruma geçirilir
- Bileşenin dahili `Value` değeri güncellenir

Bu sayede, ek bir event tanımlamaya veya manuel state yönetimine gerek kalmadan, **kullanıma hazır** ve **öngörülebilir** bir puanlama deneyimi sunulur.

Geliştirici isterse, bu davranışı ek event’ler ile genişletebilir veya `StarValue` metodunu doğrudan çağırarak programatik kontrol sağlayabilir.


TMrxStar, kullanıcı geri bildirimi, değerlendirme ve oylama gerektiren tüm senaryolarda sade, performanslı ve tutarlı bir rating çözümü sunar.

- ## TMrxSwitch

TMrxSwitch, **açık / kapalı (on / off)** durumlarını görsel ve animasyonlu şekilde temsil etmek amacıyla geliştirilmiş, `TFrame` tabanlı bir switch bileşenidir.  
FMX animasyon altyapısı kullanılarak, durum geçişleri akıcı ve kullanıcı etkileşimine duyarlı şekilde gerçekleştirilir.

Bileşen, mobil ve masaüstü arayüzlerde yaygın olarak kullanılan toggle switch davranışını, ek kod gerektirmeden doğrudan sunar.

### Çalışma Mantığı

- Switch durumu dahili olarak `xValue` değişkeni ile tutulur.
- Görsel geçişler, pozisyon ve renk animasyonları ile senkron şekilde yönetilir.
- Durum değişimleri `isSwitched` metodu üzerinden merkezi olarak kontrol edilir.

### Varsayılan Tıklama (Click) Davranışı

TMrxSwitch, **varsayılan olarak click etkileşimi aktif** olacak şekilde tasarlanmıştır.  
Bileşenin frame alanına yapılan her tıklama, mevcut durumu otomatik olarak **toggle** eder.

Click işlemi sırasında:
- Mevcut `Value` değeri tersine çevrilir
- `isSwitched` metodu çağrılır
- İlgili animasyonlar otomatik olarak başlatılır

Bu sayede, ek bir event veya manuel state kontrolü yazmadan, switch bileşeni **kullanıma hazır** bir etkileşim sunar.

### Özellikler
- `Value`: Switch’in mevcut durumunu (`True / False`) döndürür.
- `isSwitched(status: Boolean)`: Switch durumunu programatik olarak set eder ve ilgili animasyonları tetikler.

### Teknik Detaylar
- **TFloatAnimation** ile pozisyon animasyonları
- **TColorAnimation** ile arka plan ve knob renk geçişleri
- Frame tabanlı sade state yönetimi
- Mobil dokunmatik ve masaüstü mouse etkileşimlerine uyumlu yapı

TMrxSwitch, ayar ekranları, tercih seçenekleri ve boolean değer kontrolü gerektiren tüm senaryolarda, görsel bütünlüğü bozmadan modern ve sezgisel bir kullanım sağlar.

- ## TMrxText

TMrxText, **Skia tabanlı `TSkLabel`** kullanılarak geliştirilmiş, **otomatik yükseklik (auto-height)** desteğine sahip bir metin gösterim bileşenidir.  
`TFrame` tabanlı yapısı sayesinde FMX Palette üzerinden eklenebilir ve farklı ekran boyutları ile DPI değerlerine uyumlu şekilde çalışır.

Bileşen, metin içeriğinin boyutuna göre kendi yüksekliğini dinamik olarak ayarlayarak sabit ölçü problemlerini ortadan kaldırır.

### Çalışma Mantığı

- Metin, Skia altyapısı kullanan `TSkLabel` üzerinden render edilir.
- Label yeniden boyutlandığında `OnResized` olayı tetiklenir.
- `AutoHeight` aktif ise:
  - Metin yüksekliği baz alınarak bileşen yüksekliği yeniden hesaplanır
  - Minimum yükseklik **40 px** olacak şekilde sınırlandırılır
- Gereksiz yeniden boyutlandırmaları önlemek için mevcut yükseklik ile yeni yükseklik karşılaştırılır.

### Özellikler
- `AutoHeight`: Metin içeriğine göre yüksekliğin otomatik ayarlanıp ayarlanmayacağını belirler (varsayılan: `True`).
- Skia tabanlı metin çizimi sayesinde yüksek kalite ve platformlar arası tutarlılık.

### Teknik Detaylar
- **TSkLabel** ile yüksek kaliteli font ve metin render
- **Auto-height** mantığı ile responsive layout uyumu
- Minimum yükseklik koruması ile stabil UI davranışı
- `TFrame` tabanlı, yeniden kullanılabilir yapı

TMrxText, açıklama alanları, başlıklar ve dinamik metin uzunluğuna sahip tüm UI senaryolarında, ek layout hesaplaması gerektirmeden temiz ve ölçeklenebilir bir çözüm sunar.

- ## TMrxTrackbar

TMrxTrackbar, kullanıcıdan **sürekli değer (0–100 aralığı)** almak için geliştirilmiş, sürükle–bırak (drag) etkileşimli bir trackbar bileşenidir.  
`TFrame` tabanlı yapısı sayesinde FMX Palette üzerinden projeye eklenebilir ve özel stil veya ek bağımlılık gerektirmeden kullanılabilir.

Bileşen, mouse veya dokunmatik etkileşimler ile kontrol edilen dairesel bir knob (`xCircle`) ve yatay bir çizgi (`xLine`) üzerinden değer üretir.

### Çalışma Mantığı

- Kullanıcı trackbar alanına bastığında (`MouseDown`) sürükleme modu aktif hale gelir.
- Sürükleme sırasında (`MouseMove`):
  - Knob konumu, track uzunluğu ile sınırlandırılır.
  - Knob’un yatay pozisyonu yüzdelik değere dönüştürülür.
  - Hesaplanan değer **0–100** aralığında olacak şekilde `xValue` değişkenine atanır.
- Mouse veya dokunma bırakıldığında (`MouseUp`) sürükleme modu sonlandırılır.

### Varsayılan Etkileşim Davranışı

TMrxTrackbar, **varsayılan olarak drag etkileşimine hazır** gelecek şekilde yapılandırılmıştır.  
Ek bir event veya manuel hesaplama gerektirmeden, kullanıcı etkileşimi doğrudan `Value` değerini günceller.

### Özellikler
- `Value`: Trackbar’ın mevcut değerini (`0–100`) döndürür.
- Dahili drag state yönetimi (`xDragging`) ile kontrollü etkileşim.

### Teknik Detaylar
- Mouse ve dokunmatik uyumlu etkileşim yönetimi
- Konum → yüzde dönüşümü için merkezi hesaplama fonksiyonu
- **TFrame** tabanlı yeniden kullanılabilir yapı
- Vektörel ve ölçeklenebilir görsel elemanlar (`TRectangle`)

TMrxTrackbar, ses seviyesi, parlaklık, oran ve yüzde bazlı ayar gerektiren tüm senaryolarda sade, öngörülebilir ve performanslı bir kontrol bileşeni sunar.


## MrxTools.pas

- ### TMrxLanguages

TMrxLanguages, MrxComponent ekosistemi içerisinde uygulamanın **çoklu dil (localization)** altyapısını yöneten, **görsel olmayan (non-visual)** ve **instance gerektirmeyen** bir yardımcı sınıftır. Tüm işlevler `class procedure` ve `class function` olarak tasarlanmış olup, uygulama genelinde merkezi bir çeviri katmanı oluşturur.

Sınıf, JSON tabanlı dil dosyaları kullanarak UI metinlerinin anahtar bazlı çevrilmesini sağlar ve bu çevirileri form veya frame seviyesinde otomatik olarak uygular. Böylece localization işlemleri UI bileşenlerinden ayrıştırılır ve tekrar eden kod ihtiyacı ortadan kaldırılır.

TMrxLanguages içerisinde kullanılan dil verileri, sınıf seviyesinde tutulan `JSONData` değişkeni üzerinden bellekte saklanır. Bu veri uygulama çalıştığı sürece aktif kalır ve tüm çeviri işlemleri bu merkezi yapı üzerinden gerçekleştirilir.

`LanguageLoad(FilePath: string)` prosedürü, belirtilen JSON dil dosyasını diskten okuyarak belleğe yüklemekten sorumludur. Dosyanın varlığı kontrol edilir; mevcut değilse işlem sessizce iptal edilir. Platforma göre encoding otomatik olarak seçilir (iOS için ANSI, diğer platformlar için UTF-8). Okunan JSON içeriği parse edilerek `TJSONObject` tipinde `JSONData` içerisine alınır. Okuma veya parse sırasında hata oluşması durumunda exception fırlatılmaz; sınıf güvenli şekilde boş `{}` içeriğe düşer ve uygulamanın çalışması kesintiye uğramaz. Daha önce yüklenmiş bir dil verisi varsa, bellekten temizlenerek yenisi ile değiştirilir.

`Translate(Key: string): string` fonksiyonu, anahtar bazlı çeviri işlemini gerçekleştirir. Fonksiyon, verilen anahtarın `JSONData` içerisinde karşılığı olup olmadığını kontrol eder. Eğer JSON henüz yüklenmemişse veya anahtar bulunamazsa, fallback olarak anahtarın kendisi geri döndürülür. Karşılık bulunması durumunda ilgili çeviri değeri döndürülür. Bu yaklaşım, eksik çeviri kayıtlarının uygulamayı bozmasını engeller ve geliştirme sürecinde metinlerin anahtar olarak kullanılmasına olanak tanır.

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

Tema tanımları, `TMrxThemes` enum’u üzerinden indekslenen `ThemePalettes` sabiti içerisinde tutulur. Her tema, `TThemePalette` yapısı ile temsil edilir ve arayüzde kullanılan temel renk rollerini içerir. Bu yaklaşım sayesinde, tema değiştirme işlemleri runtime sırasında yalnızca aktif tema indeksinin değiştirilmesiyle gerçekleştirilebilir.

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
