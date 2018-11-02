<div class="container">
	<div class="row contact-style">
		<div class="col-sm-6 col-md-6 col-lg-6 col-xs-12">
			<form action="<?php echo base_url("giris"); ?>" role="form" method="post">
				<h5 class="text-center mb-5">Giriş Yap</h5>
				<div class="row">
					<div class="form-group col-12">
						<label>E-Posta</label>
						<input type="email" name="email" class="form-control">
					</div>
					<div class="form-group col-12">
						<label>Şifre</label>
						<input type="password" name="password" class="form-control">
					</div>
					<div class="form-group col-12">
						<input type="submit" name="login" value="Giriş Yap" class="btn btn-danger btn-block">
					</div>
					<input type="hidden" name="<?php echo $this->security->get_csrf_token_name(); ?>" value="<?php echo $this->security->get_csrf_hash(); ?>">
				</div>
			</form>
		</div>
		<div class="col-sm-6 col-md-6 col-lg-6 col-xs-12">
			<form action="<?php echo base_url("kayit"); ?>" role="form" method="post">
				<h5 class="text-center mb-5">Kayıt Ol</h5>
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
						<label>Parola</label>
						<input type="password" name="password" class="form-control">
					</div>
					<div class="form-group col-12">
						<label>Sektör</label>
						<select class="form-control" name="sector">
							<?php foreach ($sectors as $sector) { ?>
                                <option value="<?php echo $sector->id; ?>"><?php echo $sector->title; ?></option>
                            <?php } ?>
						</select>
					</div>
					<input type="hidden" name="<?php echo $this->security->get_csrf_token_name(); ?>" value="<?php echo $this->security->get_csrf_hash(); ?>">
					<div class="form-group col-12">
						<input type="submit" name="register" value="Kayıt Ol" class="btn btn-danger btn-block">
					</div>
				</div>
			</form>
		</div>
	</div>		
</div>
<hr>