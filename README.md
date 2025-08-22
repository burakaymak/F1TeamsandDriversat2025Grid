# 🏎️ F1 Teams & Drivers at 2025 Grid

📱 **F1 Teams & Drivers**, iOS için geliştirilmiş bir uygulamadır.  
Kullanıcıya Formula 1 takımlarını listeler ve seçilen takımın **pilotlarını** detay ekranında gösterir.  
Her takımın iki sürücüsü bulunmaktadır ve sürücülerin **isimleri** ile **fotoğrafları** ayrı ayrı gösterilir.  

---

## ✨ Özellikler
- 📋 Tüm Formula 1 takımlarını listeleme  
- 🧑‍🤝‍🧑 Her takım için **iki pilotun bilgilerini** gösterme  
- 🖼 Pilot fotoğraflarını görselleştirme  
- 🔄 TableView üzerinden seçim yaparak **detay sayfasına geçiş**  
- 📤 **prepare(for segue:)** ile veri aktarma  

---

## 🏁 İçerik
Uygulamada yer alan takımlar ve sürücüler:  

- **Scuderia Ferrari** → Charles Leclerc, Lewis Hamilton  
- **Red Bull Racing** → Max Verstappen, Yuki Tsunoda  
- **Mercedes** → George Russell, Kimi Antonelli  
- **McLaren** → Oscar Piastri, Lando Norris  
- **Williams** → Carlos Sainz, Alex Albon  
- **Aston Martin** → Fernando Alonso, Lance Stroll  
- **Kick Sauber** → Nico Hülkenberg, Gabriel Bortoleto  
- **RB** → Liam Lawson, Isack Hadjar  
- **Alpine** → Pierre Gasly, Franco Colapinto  
- **Haas** → Esteban Ocon, Oliver Bearman  

---

## 📖 Nasıl Çalışır?
1. 📋 **TableView** ekranda F1 takımlarının isimlerini listeler.  
2. 👆 Bir takım seçildiğinde, ilgili **Teams nesnesi** `selectedDriver` değişkenine atanır.  
3. 🔄 `performSegue` ile detay ekranına geçilir.  
4. 📤 `prepare(for segue:)` fonksiyonu, seçilen takımın sürücü bilgilerini **DetailsVC**'ye aktarır.  
5. 🖼 Detay ekranında seçilen takımın iki pilotunun adı ve resmi görüntülenir.  




