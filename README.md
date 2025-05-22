**Basit Hesap Makinesi (Flutter)**<br>
**Bu proje, Flutter ile geliştirilmiş, kullanıcı dostu bir hesap makinesi uygulamasıdır.**<br>

**✨ Özellikler**<br>
-Temel İşlemler: Toplama (+), Çıkarma (-), Çarpma (*), Bölme (/) ve Yüzde (%) hesaplamalarını tek bir TextField üzerinden gerçekleştirir.<br>
-Ondalıklı Sayı Desteği: 10.5 gibi ondalıklı sayılarla sorunsuz işlem yapabilme.<br>
-Tekli Silme (⌫): Son girilen karakteri silme özelliği.<br>
-Tümü Temizleme (C): Ekranı ve tüm belleği tamamen sıfırlama.<br>
-İşlem Zincirleme: Yapılan son işlemin sonucunu kullanarak yeni bir işleme başlama imkanı.<br>
-Sade ve Temiz Tasarım: Kolay kullanım odaklı, minimal kullanıcı arayüzü.<br>

**🛡️ Sağlamlık ve Hata Yönetimi**<br>
Uygulamanın kullanıcı deneyimini kesintiye uğratmadan sorunsuz çalışmasını sağlamak için aşağıdaki hata önleme mekanizmaları entegre edilmiştir:<br>
-Çift Operatör Engeli: Aynı işlem operatörünün (+, -, *, /, %) art arda girilmesi engellenmiştir, bu sayede hatalı ifade oluşumlarının önüne geçilir.<br>
-Sadece Sayısal Giriş: TextField'a klavye ile manuel metin girişi kapatılmıştır. Yalnızca butonlar aracılığıyla sayı ve işlem girişi yapılabilir, böylece geçersiz karakter girişleri engellenir.<br>
-Güvenli Temizleme: C butonu, hesap makinesinin durumunu tamamen sıfırlayarak herhangi bir olası hata veya çökme durumunu önler.<br>
-Operatör Tekrarı Koruması: İşlem butonlarına (=, +, -, *, /, %) art arda veya sürekli basmak, uygulamanın çökmesine neden olmaz; işlem sırası ve mantığı korunur.<br>

**📱 Test Edilen Platform**<br>
Uygulama, Android telefonlarda başarıyla test edilmiştir.<br>

**Proje Notu:**<br>
Bu uygulama, mobil uygulama geliştirme yolculuğumdaki ilk projelerimden biridir. <br>
Arayüzde ve bazı işleyiş kısımlarında ufak aksaklıklar ve geliştirilebilecek alanlar bulunabilir. <br>
Öncelikli olarak kişisel öğrenme ve proje depolama amacıyla yüklenmiştir.<br>
