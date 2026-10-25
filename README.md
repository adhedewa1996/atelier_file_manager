# 3D Model Upload Repository

Repositori ini dibuat khusus untuk menyimpan file model 3D berformat `.glb` (dan juga `.gbl` kalau Anda memang memakai ekstensi itu).

Struktur dasar:

- `models/` — tempat menaruh file 3D
- `release` dibuat otomatis saat tag rilis dibuat

Cara pakai:

1. Masukkan file model ke dalam folder `models/`
2. Commit perubahan ke git
3. Buat tag rilis untuk release
4. Push ke GitHub

Contoh:

```bash
git add models/
git commit -m "Add 3D model"
git tag -a v1.0.0 -m "Initial release"
git push origin main --tags
```

Catatan:
- Jika nama file Anda benar-benar `.gbl`, repository ini tetap bisa menerima file tersebut.
- Jika file model Anda biasanya `.glb`, gunakan `.glb` karena itu format yang umum dipakai di web 3D.

Untuk release otomatis di GitHub, push tag seperti `v1.0.0` dan GitHub Actions akan meng-upload file `.glb`/`.gbl` ke release.
