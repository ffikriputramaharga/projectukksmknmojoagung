<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <title>Perpustakaan</title>
    <meta name="description" content="A responsive bootstrap 4 admin dashboard template by hencework" />

    <!-- Favicon -->
    <link rel="shortcut icon" href="favicon.ico">
    <link rel="icon" href="/perpus/logo-white.png" type="image/x-icon">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>

<body>
    <style type="text/css">
        table tr td,
        table tr th {
            font-size: 9pt;
        }
    </style>
    <table border="0" width="100%">
        <tr>
            <td width="10%" align="center"> <img src="/perpus/logo-white.png" width="80"
                    height="80" alt=""></td>
            <td width="90%" align="center">
                <h5>DINAS PENDIDIKAN PROVINSI JAWA TIMUR</h5>
                <h5>SEKOLAH MENENGAH KEJURUAN NEGERI MOJOAGUNG</h5>
                <h6>Alamat : Jl. Veteran No. 66, telp. (0321) 495082, Mojoagung</h6>
            </td>
        </tr>
    </table>
    <hr>
    <center>
        <h5>LAPORAN PEMINJAMAN SELURUH SISWA SMK NEGERI MOJOAGUNG</h5>
    </center>
    <table class='table table-bordered'>
        <thead>
            <tr>
                <th>No</th>
                <th>NIS</th>
                <th>Nama Siswa</th>
                <th>Kelas</th>
                <th>ID Buku</th>
                <th>Judul Buku</th>
                <th>Tanggal Pinjam</th>
                <th>Tanggal Kembali</th>
            </tr>
        </thead>
        <tbody>
            @php $i=1 @endphp
            @foreach ($riwayat as $data)
                <tr>
                    <td>{{ $i++ }}</td>
                    <td><b>{{ $data->nis }}</b></td>
                    <td>{{ Str::title($data->nama_siswa) }}</td>
                    <td>{{ Str::upper($data->jenis_kelas) }}</td>
                    <td>{{ $data->kode_buku }}</td>
                    <td>{{ Str::title($data->nama_buku) }}</td>
                    <td>
                        {{ date('d-F-Y', strtotime($data->created_at)) }}
                    </td>
                    <td>
                        {{ date('d-F-Y', strtotime($data->tanggal_kembali)) }}
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table><br><br>
    @php
        $kepsek = DB::Table('kepala_sekolah')->get();
    @endphp
    <table>
        <tbody>
            <tr>
                <td>Kepala Sekolah<br><br><br><br>
                    @forelse ($kepsek as $kepsek)
                        {{ Str::title($kepsek->nama_kepsek) }} <br>
                        <b><u>NIP : {{ $kepsek->nip_kepsek }}</u></b>
                    @empty
                        Nama Kepala Sekolah Kosong
                    @endforelse
                </td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td>Staff Perpustakaan<br><br><br><br>
                    {{ Str::title(Auth::user()->name) }} <br>
                    <b><u>NIP : {{ Auth::user()->nip }}</u></b>
                </td>
            </tr>
        </tbody>
    </table>
</body>

</html>
