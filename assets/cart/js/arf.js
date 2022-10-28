function addRincian(sl_coa) {
    var idf = document.getElementById("idf").value;
	stre="<div class='form-group'  id='srow" + idf + "'><div class='controls'>";
	stre=stre+"<label for='NamaLengkap' class='control-label col-xs-2 ckeditor'></label>";
	stre=stre+" <div class='col-xs-4'>";
	stre=stre+sl_coa;
	stre=stre+"</div>";
	stre=stre+" <div class='col-xs-2'>";
	stre=stre+"<input placeholder='Debet'  type='text' class='form-control input-sm' name='debet[]'   />";
	stre=stre+"</div>";
	stre=stre+" <div class='col-xs-2'>";
	stre=stre+"<input placeholder='Kredit'  type='text' class='form-control input-sm' name='kredit[]'   />";
	stre=stre+"</div>";

	stre=stre+"<div class='col-xs-1'> <button type='button' class='btn btn-danger btn-sm' title='Hapus Rincian !' onclick='removeFormField(\"#srow" + idf + "\"); return false;'><i class='glyphicon glyphicon-remove'></i></button></div> </div>";
    $("#divAkun").append(stre);
    idf = (idf-1) + 2;
    document.getElementById("idf").value = idf;
}
function removeFormField(idf) {
    $(idf).remove();
}