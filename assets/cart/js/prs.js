function HapusData(kode,path,modul)
{
	if (confirm('Anda yakin mau menghapus data ini?')) {
		window.location.href = path + modul + '/hapusdata/' + kode;
	}
}
