
Film Öneri Sistemleri
Grup 8 : Serenay Akciyer , Nisanur Topraç
Shiny App: https://filmonerisistemi-nisero.shinyapps.io/Film_Oneri_Sistemleri/?_ga=2.105718464.230254219.1593824124-369299993.1593824124
Proje Konusu Nedir ?
•	Kişilerin sevdikleri film ve türlerine göre RStudio içindeki recommenderlab kütüphanesi kullanılarak film öneri sistemi oluşturmak ve bu öneri sistemini yine RStudio içerisinde bulunan Shiny paketini kullanarak app haline getirmek.
Film Öneri Sistemlerinin Amacı 
•	Film izleyicileri, filmlerde 'zevklerine' uygun bir film önerisini tercih eder.
•	Film şirketleri, tercihleri önceden bilinmeyen yeni kullanıcılar için film önermek ister.
•	Yeni kullanıcının derecelendirmeleriyle diğer kullanıcıların benzerliğinin tanımlandığı ve tavsiyelerde bulunduğu İşbirlikçi Filtreleme yaklaşımı kullanılabilir.
•	Kullanıcının sevdiği filmlerin türüne ve bu türlerde sevdiği filmlere dayanarak, hangi kullanıcı kümesine ait olduğu hakkında bir fikir verecektir.
•	Tavsiye Sistemlerimiz ile bir film web sitesi, kullanıcının en çok hangi filmi seveceğini belirleyebilir, işlerini tavsiye sistemi ile artırabilir ve müşteri sadakati oluşturabilir.
Projenin Tanımı
•	Kullanıcıların matrisi ve derecelendirmeleri ve yeni bir kullanıcının derecelendirmesi göz önüne alındığında, yeni kullanıcıya benzeyen en yakın komşu kullanıcıları belirleyip ve yüksek puan verdikleri filmleri önermek.
•	Kullanıcı Tabanlı İşbirlikçi Filtreleme (UBCF) yaklaşımıyla, yeni kullanıcının benzerliğini diğer kullanıcılarla bulmak ve kümedeki kullanıcıların beğendiği filmleri belirlemek.
Projenin Kodlama Ve Veri Toplama Süreci 
      Bu projeyi yapmak için Öğe Tabanlı İşbirlikçi Filtreleme (IBCF), UBCF ve İçerik tabanlı düşünülmüştür. Her film hakkında derecelendirme dışında verilere sahip olmadığımız için İçeriğe Dayalı sistemler uygun değildi. Benzer filmleri kümelemek yerine benzer kullanıcıları kümeleyeceği için IBCF yerine UBCF tercih edildi. IBCF ile filmlerin kosinüs benzerliklerini bulduktan sonra, UBCF en yakın komşuları alır ve daha sonra benzer kullanıcıların derecelendirmelerini ağırlıklandırılmış filmlerin ortalama ağırlığını hesaplamak için kullanır ve en iyi 10 filmi alır.
    Projede movie,ratings ve search olmak üzere 3 ayrı açık kaynaklı veri seti kullanıldı. Yeni kullanıcılara diğer kullanıcılarla yüksek benzerliğe sahip en yakın komşuları bulmak ve iyi önerilerde bulunmak için büyük veri kümesine ihtiyaç vardır. Kullanıcı veri seti ve modeli eğitmek için gerekli derecelendirmeler en yüksek benzerliğe sahip en yakın komşuları bulmak için yeterli olan Movie Lens, IMDB ve TMDB veritabanlarından elde edilen veriler kullanıldı.

      R bu proje için uygundur, çünkü açık kaynak kodludur ve Öneri Sistemleri için önceden oluşturulmuş kütüphanelere sahiptir. Bu, daha iyi öneriler sunmamıza yardımcı olur ve daha iyi veri hazırlamamızı sağlar. Veri hazırlama ve model oluşturma konusunda Jekaterina Novikova PhD'den aldık. https://rpubs.com/jeknov/movieRec
    Dosyamızda rmd ile kurulan modeller ve Shiny app için yazılan server ve ui kodları bulunmaktadır. Server R dosyasında Shiny App’inin içeriği Ui R dosyasında App ‘in tasarımını içermektedir. RecommendederLab, bu sistemi oluşturmak için son derece yararlı bulduğumuz paketlerden biridir.
    Oluşturulan öneri sistemimizde kullanıcılar, sol panelde ilgilendikleri en fazla üç film türünü  seçebilir, ardından kullanıcılar sağ panelde her bir türün favori filmini seçebilir. Sistemimiz, kullanıcıların önerilen filmleri türe göre filtrelemesini sağlayan özelliğe sahiptir.Tüm seçenekleri belirledikten sonra, sistemlerimiz on adet tavsiye film önerecektir.

•	Daha ayrıntılı bilgi için : serenayakciyer@gmail.com 
      nisanurtoprac@hotmail.com
bizlere ulaşabilirsiniz.
