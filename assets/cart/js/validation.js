	$(function() 
		{
			/*--------------------------------Validasi form Input Akun---------------------------------*/
			$('#frmCO').validate({
				rules: {
					email:"required",
					nama:"required",
					alamat:"required",
					telp:"required"
				},
				messages: {
					email: {
						required: "Email harus terisi",
					},
					nama: {
						required: "Nama harus diisi"
					},
					alamat: {
						required: "Alamat harus"
					},
					telp: {
						required: "Telp harus terisi"
					}
				},
				highlight: function(element) {
						$(element).closest('.form-group').addClass('has-error');
					},
					unhighlight: function(element) {
						$(element).closest('.form-group').removeClass('has-error');
					},
					errorElement: 'span',
					errorClass: 'help-block',
					errorPlacement: function(error, element) {
						if(element.parent('.input-group').length) {
							error.insertAfter(element.parent());
						} else {
							error.insertAfter(element);
						}
					}
			});
			
	    });
