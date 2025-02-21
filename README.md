# Tutorial 2 Game Development
## Latihan 1: Playtest
1. Ketika objek pesawat hampir menyentuh batas atas, muncul pesan ``Reached Objective!`` pada debugger.
1. Ketika landasan digerakkan ke batas area bawah, lalu ke atas hingga hampir menyentuh batas atas, pesan ``Reached Objective`` muncul kembali pada debugger.
1. Melihat Scene ``MainLevel`` di workspace 2D, pesan ``Reached Objective`` hanya muncul ketika objek ``BlueShip`` menyentuh ``ObjectiveArea``

Pesan ``Reached Objective!`` telah diatur agar muncul pada debugger di file ``ObjectiveArea.gd``, yaitu oleh fungsi ``_on_ObjectiveArea_body_entered`` yang ter-_trigger_ ketika body ``BlueShip`` memasuki ``ObjectiveArea``

## Latihan 2: Memanipulasi Node dan Scene
1. Melihat dokumentasi, Fungsi dari node ``Sprite2D`` adalah untuk menampilkan tekstur 2D. Dalam kasus ``BlueShip`` dan ``StonePlatform``, node ``Sprite2D`` digunakan untuk memberikan tekstur 2D ke kedua node tersebut, yang menyebabkan tiap node memiliki tampilan visual di game ketika dijalankan.
1. ``RigidBody2D`` dapat memiliki _physics simulation_, dimana Node yang menggunakan tipe ini dapat diatur sifat-sifat _physics_-nya, seperti nilai _mass_ dari Node, yang dengan adanya _physics simulation_ ini, Node dapat digerakkan/terpengaruh oleh gerakan-gerakan di environment game. Semetara itu, ``StaticBody2D`` tidak memiliki _physics simulation_, dan hanya bisa bergerak jika developer mengatur suatu mekanisme gerakan untuk Node tersebut, seperti _arrows button_ untuk bergerak.
1. Ketika mengubah nilai ``Mass`` pada ``RigidBody2D`` di ``BlueShip``, tidak ditemukan perbedaan yang dapat diobservasi ketika game dijalankan.
Contohnya, _falling speed_ dari ``BlueShip`` tetap sama, yang sesuai dengan fisika dasar dimana yang mempengaruhi _falling speed_ dari suatu objek adalah _gravitational acceleration_, dan bukan _mass_. 
1. Mengubah nilai ``Disabled`` menjadi on pada ``CollisionShape2D`` di ``StonePlatform`` menyebabkan ``BlueShip`` tidak berhenti ketika menyentuh ``StonePlatform``, tapi jatuh _infinitely_ menembus ``StonePlatfrom``. Hal ini dapat terjadi karena ``StonePlatform`` sekarang tidak memiliki _collision_ sehingga ``BlueShip`` tidak berhenti ketika menyentuhnya.
1. Ketika mengubah berbagai atribut dari ``Transform`` dari ``BlueShip``, berikut hal yang terjadi pada visualisasi di ``ViewPort``
 - Position (X, Y): Posisi ``BlueShip`` bergeser sesuai nilai x dan y.
 - Rotation: ``BlueShip`` berputar sesuai sudut rotasi.
 - Scale: Ukuran ``BlueShip`` berubah sesuai nilai scale yang diberikan.
6. Node ``StonePlatfrom`` dan ``StonePlatfrom2`` adalah child node dari ``PlatformBlue``, dimana ``PlatformBlue`` adalah child langsung dari scene ``MainLevel``, sehingga nilai ``Position`` dari ``PlatformBlue`` lah yang menentukan posisi kedua platform di scene. Sedangkan, nilai ``Position`` pada ``StonePlatform`` dan ``StonePlatform2`` menyatakan posisinya relatif terhadap posisi ``PlatformBlue`` di Scene, dan bukan posisi stone platform langsung di scene itu sendiri.

## Latihan 3: Membuat Level Baru

Level baru dapat diakses di project!

