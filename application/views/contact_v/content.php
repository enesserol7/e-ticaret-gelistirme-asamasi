<?php $settings = get_settings(); ?>
<div class="container">
		<div class="row contact-style">
			<div class="col-sm-5 col-md-5 col-lg-5 col-xs-12 ">
				<h3>İletişim</h3>
				<br><br>
				<p><i class="fa fa-phone"></i><?php echo $settings->phone_1; ?></p>
				<?php if ($settings->phone_2 != "") { ?>
					<p><i class="fa fa-phone"></i><?php echo $settings->phone_2; ?></p>
				<?php } ?>
				<?php echo $settings->address; ?>
				<p><i class="fa fa-credit-card"></i><?php echo $settings->iban; ?></p>
				<p><i class="fa fa-handshake-o"></i><?php echo $settings->company_name; ?></p>
			</div>
			<div class="col-sm-7 col-md-7 col-lg-7 col-xs-12">
				<form action="<?php echo base_url(); ?>">
					<div class="row">
						<div class="form-group col-12">
							<label>Ad Soyad</label>
							<input type="text" name="name" class="form-control">
						</div>
						<div class="form-group col-12">
							<label>E-Posta</label>
							<input type="email" name="email" class="form-control">
						</div>
						<div class="form-group col-12">
							<label>Konu</label>
							<input type="text" name="phone" class="form-control">
						</div>
						<div class="form-group col-12">
							<label>Mesaj</label>
							<textarea rows="4" cols="115" name="cargoAddress" class="col-12"></textarea>
						</div>
						<div class="form-group col-6">
							<label>Dosya</label>
							<input type="file" name="file" class="form-control">
							<small>Dosya boyutu 8 MB dan küçük olmalıdır.
							İzin verilen dosya uzantıları: txt doc docx pdf ai psd indd jpg jpeg png eps.</small>
						</div>
						<div class="form-group col-6">
							<br><br>
							<input type="submit" name="requestForaBid" value="Gönder" class="btn btn-danger btn-block">
						</div>
					</div>
				</form>
			</div>
		</div>		
	</div>
	<hr>