import '../models/book.dart';

const List<Map<String, dynamic>> _raw = [
  // ---------- FIKSI ----------
  {
    'id': 'f1',
    'title': 'Pedro Páramo',
    'author': 'Juan Rulfo',
    'genre': 'Fiksi',
    'synopsis':
        'Juan Preciado pergi ke desa Comala untuk mencari ayahnya, Pedro Páramo, '
        'dan menemukan desa yang dihuni arwah. Novel pendek Meksiko ini dianggap perintis '
        'realisme magis dan memengaruhi Gabriel García Márquez.',
    'authorBio':
        'Juan Rulfo (1917–1986) adalah penulis dan fotografer Meksiko. Hanya dengan '
        'dua buku, ia menjadi salah satu tokoh terpenting sastra Amerika Latin.',
    'publisher': 'Grove Press',
    'isbn': '9780802133908',
    'rating': 4.5,
    'pages': 124,
    'year': 1955,
    'available': true,
  },
  {
    'id': 'f2',
    'title': 'Convenience Store Woman',
    'author': 'Sayaka Murata',
    'genre': 'Fiksi',
    'synopsis':
        'Keiko sudah 18 tahun bekerja di minimarket dan merasa paling "normal" di sana. '
        'Tekanan keluarga dan masyarakat Jepang agar ia menikah dan berkarier membuatnya '
        'harus mengambil keputusan tak terduga.',
    'authorBio':
        'Sayaka Murata (lahir 1979) adalah novelis Jepang pemenang Akutagawa Prize '
        'dan dikenal lewat tema norma sosial yang tak lazim.',
    'publisher': 'Grove Press',
    'isbn': '9780802129833',
    'rating': 4.1,
    'pages': 176,
    'year': 2016,
    'available': false,
  },
  {
    'id': 'f3',
    'title': 'The Master and Margarita',
    'author': 'Mikhail Bulgakov',
    'genre': 'Fiksi',
    'synopsis':
        'Iblis berkunjung ke Moskow era Stalin dan mengacaukan kalangan sastrawan, '
        'sementara kisah cinta Margarita dan sang Maestro berjalan beriringan dengan '
        'kisah Pontius Pilatus.',
    'authorBio':
        'Mikhail Bulgakov (1891–1940) adalah penulis Rusia-Soviet. Karyanya '
        'baru terbit luas setelah ia wafat.',
    'publisher': 'Penguin Classics',
    'isbn': '9780141180144',
    'rating': 4.6,
    'pages': 480,
    'year': 1967,
    'available': true,
  },
  // ---------- NON-FIKSI ----------
  {
    'id': 'n1',
    'title': 'Braiding Sweetgrass',
    'author': 'Robin Wall Kimmerer',
    'genre': 'Non-Fiksi',
    'synopsis':
        'Perpaduan sains botani dan kearifan masyarakat adat Amerika tentang '
        'hubungan manusia dengan alam, lewat esai-esai tentang tanaman dan timbal balik.',
    'authorBio':
        'Robin Wall Kimmerer adalah profesor ekologi dan anggota Citizen Potawatomi Nation.',
    'publisher': 'Milkweed Editions',
    'isbn': '9781571313560',
    'rating': 4.7,
    'pages': 391,
    'year': 2013,
    'available': true,
  },
  {
    'id': 'n2',
    'title': 'Seeing Like a State',
    'author': 'James C. Scott',
    'genre': 'Non-Fiksi',
    'synopsis':
        'Menjelaskan mengapa banyak proyek besar negara untuk "memperbaiki" '
        'kehidupan masyarakat justru gagal, karena mengabaikan pengetahuan lokal.',
    'authorBio':
        'James C. Scott (1936–2024) adalah ilmuwan politik dan antropolog dari Yale University.',
    'publisher': 'Yale University Press',
    'isbn': '9780300078152',
    'rating': 4.4,
    'pages': 445,
    'year': 1998,
    'available': true,
  },
  {
    'id': 'n3',
    'title': 'The Order of Time',
    'author': 'Carlo Rovelli',
    'genre': 'Non-Fiksi',
    'synopsis':
        'Fisikawan Italia mengajak pembaca mempertanyakan hakikat waktu: '
        'apakah waktu benar-benar mengalir, dan mengapa kita merasakannya begitu?',
    'authorBio':
        'Carlo Rovelli adalah fisikawan teoretis, salah satu pendiri teori loop quantum gravity.',
    'publisher': 'Riverhead Books',
    'isbn': '9780735216105',
    'rating': 4.2,
    'pages': 256,
    'year': 2018,
    'available': false,
  },
  // ---------- TEKNOLOGI ----------
  {
    'id': 't1',
    'title': 'The Design of Everyday Things',
    'author': 'Don Norman',
    'genre': 'Teknologi',
    'synopsis':
        'Klasik desain UX: mengapa pintu membingungkan dan alat sehari-hari '
        'sulit dipakai, serta prinsip affordance dan feedback yang baik.',
    'authorBio':
        'Don Norman adalah pakar kognitif dan desain, salah satu tokoh awal bidang user experience.',
    'publisher': 'Basic Books',
    'isbn': '9780465050659',
    'rating': 4.5,
    'pages': 368,
    'year': 2013,
    'available': true,
  },
  {
    'id': 't2',
    'title': 'Code: The Hidden Language',
    'author': 'Charles Petzold',
    'genre': 'Teknologi',
    'synopsis':
        'Menelusuri cara komputer bekerja mulai dari kode Morse dan lampu senter '
        'hingga logika gerbang, memori, dan prosesor.',
    'authorBio':
        'Charles Petzold adalah penulis teknis dan programmer yang dikenal lewat buku pemrograman Windows.',
    'publisher': 'Microsoft Press',
    'isbn': '9780735611313',
    'rating': 4.6,
    'pages': 393,
    'year': 2000,
    'available': true,
  },
  {
    'id': 't3',
    'title': 'The Mythical Man-Month',
    'author': 'Frederick P. Brooks Jr.',
    'genre': 'Teknologi',
    'synopsis':
        'Kumpulan esai rekayasa perangkat lunak, termasuk hukum Brooks: '
        'menambah orang pada proyek yang terlambat justru membuatnya makin terlambat.',
    'authorBio':
        'Frederick Brooks (1931–2022) adalah ilmuwan komputer pemimpin pengembangan IBM System/360.',
    'publisher': 'Addison-Wesley',
    'isbn': '9780201835953',
    'rating': 4.3,
    'pages': 336,
    'year': 1975,
    'available': false,
  },
  // ---------- SEJARAH ----------
  {
    'id': 's1',
    'title': 'The Dawn of Everything',
    'author': 'David Graeber & David Wengrow',
    'genre': 'Sejarah',
    'synopsis':
        'Menantang narasi lama tentang asal-usul peradaban dan ketimpangan, '
        'dengan temuan arkeologi yang menunjukkan masyarakat awal jauh lebih beragam.',
    'authorBio':
        'David Graeber adalah antropolog dan aktivis; David Wengrow adalah arkeolog di University College London.',
    'publisher': 'Farrar, Straus and Giroux',
    'isbn': '9780374157357',
    'rating': 4.3,
    'pages': 692,
    'year': 2021,
    'available': true,
  },
  {
    'id': 's2',
    'title': 'SPQR',
    'author': 'Mary Beard',
    'genre': 'Sejarah',
    'synopsis':
        'Sejarah Roma Kuno dari desa kecil hingga kekaisaran, ditulis dengan '
        'kritis terhadap sumber dan mitos yang selama ini diterima begitu saja.',
    'authorBio':
        'Mary Beard adalah profesor klasik di University of Cambridge.',
    'publisher': 'Liveright',
    'isbn': '9781631491252',
    'rating': 4.2,
    'pages': 608,
    'year': 2015,
    'available': true,
  },
  {
    'id': 's3',
    'title': 'Postwar',
    'author': 'Tony Judt',
    'genre': 'Sejarah',
    'synopsis':
        'Sejarah Eropa sejak 1945: pemulihan pascaperang, Perang Dingin, '
        'hingga runtuhnya blok Timur.',
    'authorBio':
        'Tony Judt (1948–2010) adalah sejarawan Inggris yang mengajar di New York University.',
    'publisher': 'Penguin Books',
    'isbn': '9780143037750',
    'rating': 4.5,
    'pages': 878,
    'year': 2005,
    'available': false,
  },
  // ---------- TAMBAHAN FIKSI ----------
  {
    'id': 'f4',
    'title': 'Laut Bercerita',
    'author': 'Leila S. Chudori',
    'genre': 'Fiksi',
    'synopsis':
        'Kisah Biru Laut dan kawan-kawannya yang memperjuangkan kebebasan, '
        'serta keluarga yang terus mencari kabar tentang mereka.',
    'authorBio':
        'Leila S. Chudori adalah penulis dan jurnalis Indonesia yang dikenal '
        'lewat novel berlatar sejarah dan kehidupan sosial.',
    'publisher': 'Kepustakaan Populer Gramedia',
    'isbn': '9786024246945',
    'rating': 4.8,
    'pages': 379,
    'year': 2017,
    'available': true,
  },
  {
    'id': 'f5',
    'title': 'Pulang',
    'author': 'Leila S. Chudori',
    'genre': 'Fiksi',
    'synopsis':
        'Empat orang Indonesia di Paris menjalani hidup jauh dari tanah air, '
        'sementara peristiwa politik mengubah arti rumah bagi mereka.',
    'authorBio':
        'Leila S. Chudori adalah penulis dan jurnalis Indonesia yang dikenal '
        'lewat novel berlatar sejarah dan kehidupan sosial.',
    'publisher': 'Kepustakaan Populer Gramedia',
    'isbn': '9786024242756',
    'rating': 4.6,
    'pages': 460,
    'year': 2012,
    'available': true,
  },
  {
    'id': 'f6',
    'title': 'Cantik Itu Luka',
    'author': 'Eka Kurniawan',
    'genre': 'Fiksi',
    'synopsis':
        'Kisah keluarga Dewi Ayu yang membentang lintas generasi, memadukan '
        'sejarah, humor gelap, dan unsur surealis.',
    'authorBio':
        'Eka Kurniawan adalah novelis Indonesia yang karya-karyanya telah '
        'diterjemahkan ke berbagai bahasa.',
    'publisher': 'Gramedia Pustaka Utama',
    'isbn': '9786020324707',
    'rating': 4.5,
    'pages': 505,
    'year': 2002,
    'available': false,
  },
  // ---------- TAMBAHAN NON-FIKSI ----------
  {
    'id': 'n4',
    'title': 'Atomic Habits',
    'author': 'James Clear',
    'genre': 'Non-Fiksi',
    'synopsis':
        'Strategi sederhana untuk membangun kebiasaan baik dan mengubah '
        'perilaku melalui langkah kecil yang dilakukan secara konsisten.',
    'authorBio':
        'James Clear adalah penulis yang meneliti kebiasaan, pengambilan '
        'keputusan, dan peningkatan diri.',
    'publisher': 'Avery',
    'isbn': '9780735211292',
    'rating': 4.8,
    'pages': 320,
    'year': 2018,
    'available': true,
  },
  {
    'id': 'n5',
    'title': 'Educated',
    'author': 'Tara Westover',
    'genre': 'Non-Fiksi',
    'synopsis':
        'Memoar tentang perjalanan seorang perempuan yang tumbuh jauh dari '
        'sekolah formal dan menemukan kembali hidupnya melalui pendidikan.',
    'authorBio':
        'Tara Westover adalah penulis Amerika yang dikenal lewat memoar '
        'tentang pendidikan dan perjalanan hidupnya.',
    'publisher': 'Random House',
    'isbn': '9780399590504',
    'rating': 4.6,
    'pages': 352,
    'year': 2018,
    'available': true,
  },
  {
    'id': 'n6',
    'title': 'Sapiens',
    'author': 'Yuval Noah Harari',
    'genre': 'Non-Fiksi',
    'synopsis':
        'Gambaran besar perjalanan manusia, dari kemunculan Homo sapiens '
        'hingga revolusi ilmu pengetahuan dan dunia modern.',
    'authorBio':
        'Yuval Noah Harari adalah sejarawan dan penulis yang membahas sejarah '
        'manusia serta tantangan masa depan.',
    'publisher': 'Harper',
    'isbn': '9780062316097',
    'rating': 4.5,
    'pages': 464,
    'year': 2015,
    'available': true,
  },
  // ---------- TAMBAHAN TEKNOLOGI ----------
  {
    'id': 't4',
    'title': 'Clean Code',
    'author': 'Robert C. Martin',
    'genre': 'Teknologi',
    'synopsis':
        'Prinsip dan contoh untuk menulis kode yang mudah dibaca, dipahami, '
        'diuji, dan dirawat dalam proyek perangkat lunak.',
    'authorBio':
        'Robert C. Martin adalah pengembang perangkat lunak, pengajar, dan '
        'penulis yang dikenal sebagai Uncle Bob.',
    'publisher': 'Prentice Hall',
    'isbn': '9780132350884',
    'rating': 4.4,
    'pages': 464,
    'year': 2008,
    'available': true,
  },
  {
    'id': 't5',
    'title': 'The Pragmatic Programmer',
    'author': 'David Thomas & Andrew Hunt',
    'genre': 'Teknologi',
    'synopsis':
        'Kumpulan praktik dan cara berpikir untuk membantu programmer '
        'bekerja lebih adaptif, teliti, dan efektif.',
    'authorBio':
        'David Thomas dan Andrew Hunt adalah pengembang serta penulis '
        'berpengalaman di bidang rekayasa perangkat lunak.',
    'publisher': 'Addison-Wesley',
    'isbn': '9780135957059',
    'rating': 4.7,
    'pages': 352,
    'year': 2019,
    'available': true,
  },
  {
    'id': 't6',
    'title': 'Designing Data-Intensive Applications',
    'author': 'Martin Kleppmann',
    'genre': 'Teknologi',
    'synopsis':
        'Pengantar sistem data modern, mulai dari basis data dan replikasi '
        'hingga pemrosesan aliran dan konsistensi.',
    'authorBio':
        'Martin Kleppmann adalah peneliti dan penulis yang berfokus pada '
        'sistem terdistribusi dan teknologi data.',
    'publisher': "O'Reilly Media",
    'isbn': '9781449373320',
    'rating': 4.8,
    'pages': 616,
    'year': 2017,
    'available': false,
  },
  // ---------- TAMBAHAN SEJARAH ----------
  {
    'id': 's4',
    'title': 'Guns, Germs, and Steel',
    'author': 'Jared Diamond',
    'genre': 'Sejarah',
    'synopsis':
        'Menelusuri faktor geografis dan lingkungan yang membentuk '
        'perkembangan masyarakat di berbagai belahan dunia.',
    'authorBio':
        'Jared Diamond adalah ilmuwan dan penulis yang menghubungkan sejarah '
        'manusia dengan geografi serta ilmu alam.',
    'publisher': 'W. W. Norton & Company',
    'isbn': '9780393354324',
    'rating': 4.4,
    'pages': 528,
    'year': 1997,
    'available': true,
  },
  {
    'id': 's5',
    'title': 'The Silk Roads',
    'author': 'Peter Frankopan',
    'genre': 'Sejarah',
    'synopsis':
        'Melihat sejarah dunia melalui jalur perdagangan yang menghubungkan '
        'Asia, Timur Tengah, Afrika, dan Eropa.',
    'authorBio':
        'Peter Frankopan adalah sejarawan Inggris dan profesor sejarah global '
        'di University of Oxford.',
    'publisher': 'Bloomsbury',
    'isbn': '9781101912379',
    'rating': 4.3,
    'pages': 672,
    'year': 2015,
    'available': true,
  },
  {
    'id': 's6',
    'title': 'Indonesia, Etc.',
    'author': 'Elizabeth Pisani',
    'genre': 'Sejarah',
    'synopsis':
        'Catatan perjalanan melintasi berbagai pulau di Indonesia, mengamati '
        'masyarakat, budaya, dan perubahan yang membentuk negeri ini.',
    'authorBio':
        'Elizabeth Pisani adalah penulis dan jurnalis yang banyak menulis '
        'tentang Indonesia dan Asia Tenggara.',
    'publisher': 'W. W. Norton & Company',
    'isbn': '9780374534944',
    'rating': 4.2,
    'pages': 464,
    'year': 2014,
    'available': true,
  },
  // ---------- FIKSI ----------
  {
    'id': 'f7',
    'title': 'Laskar Pelangi',
    'author': 'Andrea Hirata',
    'genre': 'Fiksi',
    'synopsis':
        'Di Belitung, sepuluh murid dan dua guru mempertahankan sekolah '
        'Muhammadiyah yang nyaris ditutup. Kisah Ikal, Lintang, dan Mahar '
        'berangkat dari pengalaman sekolah di tengah keterbatasan.',
    'authorBio':
        'Andrea Hirata adalah penulis Indonesia asal Belitung. Laskar Pelangi '
        'merupakan novel pertamanya dan bagian dari tetralogi Laskar Pelangi.',
    'publisher': 'Bentang Pustaka',
    'isbn': '9789793062792',
    'rating': 4.8,
    'pages': 529,
    'year': 2005,
    'available': true,
  },
  {
    'id': 'f8',
    'title': 'Perahu Kertas',
    'author': 'Dee Lestari',
    'genre': 'Fiksi',
    'synopsis':
        'Kugy bercita-cita menjadi penulis dongeng, sementara Keenan ingin '
        'melukis. Pertemuan mereka menguji jarak antara pekerjaan yang '
        'diharapkan orang lain dan hidup yang ingin mereka pilih.',
    'authorBio':
        'Dee Lestari adalah penulis dan penyanyi Indonesia. Karya fiksinya '
        'mencakup serial Supernova dan sejumlah novel mandiri.',
    'publisher': 'Bentang Pustaka',
    'isbn': '9789797807214',
    'rating': 4.4,
    'pages': 444,
    'year': 2009,
    'available': true,
  },
  {
    'id': 'f9',
    'title': 'The Kite Runner',
    'author': 'Khaled Hosseini',
    'genre': 'Fiksi',
    'synopsis':
        'Amir dan Hassan tumbuh bersama di Kabul, tetapi sebuah pengkhianatan '
        'masa kecil terus membayangi Amir setelah ia pindah ke Amerika. '
        'Bertahun-tahun kemudian, sebuah panggilan membawanya kembali.',
    'authorBio':
        'Khaled Hosseini adalah novelis Afghanistan-Amerika dan mantan dokter. '
        'Novel debutnya, The Kite Runner, terbit pada 2003.',
    'publisher': 'Riverhead Books',
    'isbn': '9781594631931',
    'rating': 4.6,
    'pages': 371,
    'year': 2003,
    'available': false,
  },
  {
    'id': 'f10',
    'title': 'Never Let Me Go',
    'author': 'Kazuo Ishiguro',
    'genre': 'Fiksi',
    'synopsis':
        'Kathy mengenang masa sekolahnya di Hailsham bersama Ruth dan Tommy. '
        'Sedikit demi sedikit, kenangan itu mengungkap tujuan sebenarnya '
        'dari kehidupan yang disiapkan untuk mereka.',
    'authorBio':
        'Kazuo Ishiguro adalah novelis Inggris kelahiran Jepang. Ia menerima '
        'Nobel Sastra pada 2017.',
    'publisher': 'Vintage International',
    'isbn': '9781400078776',
    'rating': 4.3,
    'pages': 288,
    'year': 2005,
    'available': true,
  },
  // ---------- NON-FIKSI ----------
  {
    'id': 'n7',
    'title': "Man's Search for Meaning",
    'author': 'Viktor E. Frankl',
    'genre': 'Non-Fiksi',
    'synopsis':
        'Frankl menulis pengalamannya sebagai tahanan kamp konsentrasi Nazi '
        'dan memperkenalkan logoterapi, pendekatan psikoterapi yang berpusat '
        'pada pencarian makna.',
    'authorBio':
        'Viktor E. Frankl (1905–1997) adalah psikiater dan neurolog Austria '
        'yang mendirikan pendekatan logoterapi.',
    'publisher': 'Beacon Press',
    'isbn': '9780807014295',
    'rating': 4.7,
    'pages': 184,
    'year': 2006,
    'available': true,
  },
  {
    'id': 'n8',
    'title': 'Thinking, Fast and Slow',
    'author': 'Daniel Kahneman',
    'genre': 'Non-Fiksi',
    'synopsis':
        'Kahneman membedakan pemikiran cepat yang intuitif dari pemikiran '
        'lambat yang lebih terarah, lalu menunjukkan bagaimana keduanya '
        'mempengaruhi penilaian dan keputusan.',
    'authorBio':
        'Daniel Kahneman (1934–2024) adalah psikolog dan ekonom perilaku. '
        'Ia menerima Nobel Ekonomi pada 2002.',
    'publisher': 'Farrar, Straus and Giroux',
    'isbn': '9780374533557',
    'rating': 4.5,
    'pages': 499,
    'year': 2013,
    'available': true,
  },
  {
    'id': 'n9',
    'title': 'The Psychology of Money',
    'author': 'Morgan Housel',
    'genre': 'Non-Fiksi',
    'synopsis':
        'Lewat 19 esai singkat, Housel membahas bagaimana pengalaman pribadi, '
        'ego, dan rasa aman ikut membentuk keputusan keuangan—sering kali '
        'lebih kuat daripada rumus matematika.',
    'authorBio':
        'Morgan Housel adalah penulis dan investor yang menulis tentang '
        'keuangan pribadi serta perilaku manusia.',
    'publisher': 'Harriman House',
    'isbn': '9780857197689',
    'rating': 4.6,
    'pages': 256,
    'year': 2020,
    'available': true,
  },
  {
    'id': 'n10',
    'title': 'The Body Keeps the Score',
    'author': 'Bessel van der Kolk',
    'genre': 'Non-Fiksi',
    'synopsis':
        'Psikiater Bessel van der Kolk membahas dampak trauma pada tubuh '
        'dan otak, serta pendekatan terapi yang digunakan untuk membantu '
        'penyintas memulihkan rasa aman.',
    'authorBio':
        'Bessel van der Kolk adalah psikiater yang meneliti trauma dan '
        'perawatan gangguan stres pascatrauma.',
    'publisher': 'Penguin Books',
    'isbn': '9780143127741',
    'rating': 4.5,
    'pages': 464,
    'year': 2014,
    'available': false,
  },
  // ---------- TEKNOLOGI ----------
  {
    'id': 't7',
    'title': 'Refactoring',
    'author': 'Martin Fowler',
    'genre': 'Teknologi',
    'synopsis':
        'Edisi kedua ini menjelaskan teknik refactoring lewat contoh '
        'JavaScript: perubahan kecil yang menjaga perilaku program sambil '
        'membuat strukturnya lebih mudah dipahami.',
    'authorBio':
        'Martin Fowler adalah penulis dan konsultan rekayasa perangkat lunak '
        'yang banyak menulis tentang arsitektur dan refactoring.',
    'publisher': 'Addison-Wesley Professional',
    'isbn': '9780134757599',
    'rating': 4.6,
    'pages': 448,
    'year': 2018,
    'available': true,
  },
  {
    'id': 't8',
    'title': 'Grokking Algorithms',
    'author': 'Aditya Bhargava',
    'genre': 'Teknologi',
    'synopsis':
        'Pengantar algoritma dengan ilustrasi untuk menjelaskan pencarian '
        'biner, pengurutan, rekursi, graf, dan beberapa konsep dasar lain '
        'tanpa mengasumsikan latar matematika yang kuat.',
    'authorBio':
        'Aditya Bhargava adalah programmer dan penulis yang memadukan '
        'pengalaman rekayasa perangkat lunak dengan ilustrasi.',
    'publisher': 'Manning Publications',
    'isbn': '9781617292231',
    'rating': 4.5,
    'pages': 256,
    'year': 2016,
    'available': true,
  },
  {
    'id': 't9',
    'title': "Don't Make Me Think",
    'author': 'Steve Krug',
    'genre': 'Teknologi',
    'synopsis':
        'Steve Krug mengulas prinsip kegunaan web melalui contoh antarmuka '
        'sehari-hari dan tes sederhana yang bisa dilakukan tim tanpa '
        'laboratorium khusus.',
    'authorBio':
        'Steve Krug adalah konsultan kegunaan dan penulis yang dikenal '
        'melalui bukunya tentang desain web yang mudah digunakan.',
    'publisher': 'New Riders',
    'isbn': '9780321965516',
    'rating': 4.4,
    'pages': 216,
    'year': 2014,
    'available': true,
  },
  {
    'id': 't10',
    'title': 'Site Reliability Engineering',
    'author':
        'Betsy Beyer, Chris Jones, Jennifer Petoff & Niall Richard Murphy',
    'genre': 'Teknologi',
    'synopsis':
        'Tim Google menjelaskan praktik SRE untuk menjalankan layanan '
        'produksi: menetapkan tujuan keandalan, mengelola beban kerja, '
        'merespons insiden, dan mengurangi kerja manual berulang.',
    'authorBio':
        'Betsy Beyer, Chris Jones, Jennifer Petoff, dan Niall Richard Murphy '
        'adalah editor dan praktisi yang bekerja dengan tim SRE Google.',
    'publisher': "O'Reilly Media",
    'isbn': '9781491929124',
    'rating': 4.5,
    'pages': 552,
    'year': 2016,
    'available': false,
  },
  // ---------- SEJARAH ----------
  {
    'id': 's7',
    'title': "A People's History of the United States",
    'author': 'Howard Zinn',
    'genre': 'Sejarah',
    'synopsis':
        'Zinn menceritakan sejarah Amerika Serikat dari sudut pandang '
        'kelompok yang kerap tersisih dari narasi resmi, termasuk pekerja, '
        'masyarakat adat, dan gerakan hak sipil.',
    'authorBio':
        'Howard Zinn (1922–2010) adalah sejarawan, penulis, dan aktivis '
        'Amerika yang mengajar di Boston University.',
    'publisher': 'Harper Perennial',
    'isbn': '9780062397348',
    'rating': 4.4,
    'pages': 768,
    'year': 2015,
    'available': true,
  },
  {
    'id': 's8',
    'title': 'The Jakarta Method',
    'author': 'Vincent Bevins',
    'genre': 'Sejarah',
    'synopsis':
        'Berangkat dari kekerasan antikomunis di Indonesia pada 1965–1966, '
        'Bevins menelusuri bagaimana pembantaian dan operasi Perang Dingin '
        'di berbagai negara saling terkait.',
    'authorBio':
        'Vincent Bevins adalah jurnalis Amerika yang pernah meliput Asia '
        'Tenggara dan Amerika Latin untuk sejumlah media internasional.',
    'publisher': 'PublicAffairs',
    'isbn': '9781541724013',
    'rating': 4.6,
    'pages': 384,
    'year': 2020,
    'available': true,
  },
  {
    'id': 's9',
    'title': 'The Making of the Atomic Bomb',
    'author': 'Richard Rhodes',
    'genre': 'Sejarah',
    'synopsis':
        'Sejarah ilmiah dan politik di balik pembuatan senjata atom, dari '
        'penemuan fisika nuklir hingga Proyek Manhattan dan pengeboman '
        'Hiroshima serta Nagasaki.',
    'authorBio':
        'Richard Rhodes adalah sejarawan dan penulis Amerika. Buku ini '
        'memenangkan Pulitzer Prize untuk nonfiksi umum pada 1988.',
    'publisher': 'Simon & Schuster',
    'isbn': '9781451677614',
    'rating': 4.7,
    'pages': 886,
    'year': 2012,
    'available': true,
  },
  {
    'id': 's10',
    'title': 'The Warmth of Other Suns',
    'author': 'Isabel Wilkerson',
    'genre': 'Sejarah',
    'synopsis':
        'Melalui kehidupan tiga orang, Wilkerson menuturkan Migrasi Besar: '
        'perpindahan jutaan warga kulit hitam dari wilayah selatan Amerika '
        'ke kota-kota di utara dan barat pada abad ke-20.',
    'authorBio':
        'Isabel Wilkerson adalah jurnalis dan penulis Amerika, serta '
        'penerima Pulitzer Prize untuk jurnalisme.',
    'publisher': 'Vintage',
    'isbn': '9780679763888',
    'rating': 4.6,
    'pages': 640,
    'year': 2011,
    'available': false,
  },
];

final List<Book> dummyBooks = _raw.map(Book.fromJson).toList();
