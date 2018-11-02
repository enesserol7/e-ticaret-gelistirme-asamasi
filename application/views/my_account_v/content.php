<?php $customer = get_active_user(); ?>
<div class="container account-style">
	<h2>Hesap Bilgileri</h2>
	<ul class="nav nav-tabs account-tabs-style">
		<li class="active"><a data-toggle="tab" href="#home" class="btn btn-success">Bilgilerim</a></li>
		<li><a data-toggle="tab" href="#menu1" class="btn btn-success">Siparişlerim</a></li>
		<li><a data-toggle="tab" href="#menu2" class="btn btn-success">Adreslerim</a></li>
	</ul>
	<div class="tab-content">
		<div id="home" class="tab-pane fade in active">
			<h3>Bilgilerim</h3>
			<div class="col-sm-12 col-md-12 col-lg-12 col-xs-12 offer-style">
				<form action="<?php echo base_url("bilgi-guncelle/$customer->id"); ?>" method="post">
					<div class="row">
						<div class="form-group col-md-6 col-sm-6 col-lg-6 col-xs-12">
							<label>Ad Soyad</label>
							<input type="text" name="name" class="form-control" value="<?php echo $customer->name; ?>">
						</div>
						<div class="form-group col-md-6 col-sm-6 col-lg-6 col-xs-12">
							<label>E-Posta</label>
							<input type="email" name="email" class="form-control" value="<?php echo $customer->email; ?>">
						</div>
						<div class="form-group col-md-6 col-sm-6 col-lg-6 col-xs-12">
							<label>Mevcut Şifre</label>
							<input type="password" name="currentPassword" class="form-control">
						</div>
						<div class="form-group col-md-6 col-sm-6 col-lg-6 col-xs-12">
							<br>
							<label>E-posta adresi veya Parola değiştirmek için şu anki parolanızı girin.</label>
						</div>
					</div>
					<div class="row">
						<div class="form-group col-md-6 col-sm-6 col-lg-6 col-xs-12">
							<label>Telefon</label>
							<input type="tel" name="phone_1" class="form-control" value="<?php echo $customer->phone; ?>">
						</div>
						<div class="form-group col-md-6 col-sm-6 col-lg-6 col-xs-12">
							<label>Telefon 2 (Opsiyonel)</label>
							<input type="tel" name="phone_2" class="form-control" value="<?php echo $customer->phone_2; ?>">
						</div>
					</div>
					<div class="row">
						<div class="form-group col-md-6 col-sm-6 col-lg-6 col-xs-12">
							<label>Parola</label>
							<input type="password" name="password" class="form-control">
						</div>
						<div class="form-group col-md-6 col-sm-6 col-lg-6 col-xs-12">
							<label>Şirket İsmi</label>
							<input type="text" name="company_name" class="form-control" value="<?php echo $customer->company_name; ?>">
						</div>
					</div>
					<div class="row">
						<div class="form-group col-md-6 col-sm-6 col-lg-6 col-xs-12">
							<label>Tc No</label>
							<input type="text" name="tc_no" class="form-control" value="<?php echo $customer->tc_no; ?>">
						</div>
						<div class="form-group col-md-6 col-sm-6 col-lg-6 col-xs-12">
							<label>Vergi No</label>
							<input type="text" name="tax_number" class="form-control" value="<?php echo $customer->tax_number; ?>">
						</div>
					</div>
					<div class="row">
						<div class="form-group col-md-6 col-sm-6 col-lg-6 col-xs-12">
							<label>Cinsiyet</label>
							<input type="text" name="gender" class="form-control" value="<?php echo $customer->gender; ?>">
						</div>
						<div class="form-group col-md-6 col-sm-6 col-lg-6 col-xs-12">
							<label>Doğum Tarihi</label>
							<input type="date" name="date_of_birth" class="form-control" value="<?php echo $customer->date_of_birth; ?>">
						</div>
					</div>
					<div class="row">
						<div class="form-group col-md-6 col-sm-6 col-lg-6 col-xs-12">
							<label>Sektör</label>
							<select class="form-control" name="sector_id">
								<?php foreach ($sectors as $sector) { ?>
									<?php $sector_id = $customer->sector_id; ?>
									<option <?php echo ($sector->id === $sector_id) ? "selected" : ""; ?> value="<?php echo $sector->id; ?>"><?php echo $sector->title; ?></option>
								<?php } ?>
							</select>
						</div>
						<div class="form-group col-md-6 col-sm-6 col-lg-6 col-xs-12 ml-auto">
							<input type="hidden" name="<?php echo $this->security->get_csrf_token_name(); ?>" value="<?php echo $this->security->get_csrf_hash(); ?>">
							<label></label>
							<input type="submit" name="requestForaBid" value="Gönder" class="btn btn-danger btn-block">
						</div>
					</div>
				</form>
			</div>
		</div>
		<div id="menu1" class="tab-pane fade">
			<h3>Siparişlerim</h3>
			<div class="container">
				<h2>Tamamlanan Siparişlerim</h2>
				<div id="accordion" class="card-a-style">
					<div class="card">
						<div class="card-header">
							<a class="card-link" data-toggle="collapse" href="#collapseOne">
								# 52154  -  11 Tem 2018 15:23  -  Sipariş Tutarı: 105,50 TL
							</a>
						</div>
						<div id="collapseOne" class="collapse show" data-parent="#accordion">
							<div class="card-body">
								<div class="row">
									<div class="col-sm-3 col-md-3 col-lg-3 col-xs-12">
										<p>Diplomat Zarf</p>
										<small>250 Adet</small>
									</div>
									<div class="col-sm-3 col-md-3 col-lg-3 col-xs-12">
										<p>105,50 TL</p>
										<small>Tutar</small>
									</div>
									<div class="col-sm-3 col-md-3 col-lg-3 col-xs-12">
										<p>Kargoya Verildi</p>
										<small><a href="#">Kargo Takip</a></small>
									</div>
								</div>
								<hr>
							</div>
						</div>
					</div>
					<div class="card">
						<div class="card-header">
							<a class="collapsed card-link" data-toggle="collapse" href="#collapseTwo">
								# 49751  -  9 Nis 2018 19:55  -  Sipariş Tutarı: 154,45 TL
							</a>
						</div>
						<div id="collapseTwo" class="collapse" data-parent="#accordion">
							<div class="card-body">
								<div class="row">
									<div class="col-sm-3 col-md-3 col-lg-3 col-xs-12">
										<p>Tuale Fantazi Kartvizit</p>
										<small>500 Adet</small>
									</div>
									<div class="col-sm-3 col-md-3 col-lg-3 col-xs-12">
										<p>51,48 TL</p>
										<small>Tutar</small>
									</div>
									<div class="col-sm-3 col-md-3 col-lg-3 col-xs-12">
										<p>Kargoya Verildi</p>
										<small><a href="#">Kargo Takip</a></small>
									</div>
								</div>
								<hr>
								<div class="row">
									<div class="col-sm-3 col-md-3 col-lg-3 col-xs-12">
										<p>Tuale Fantazi Kartvizit</p>
										<small>500 Adet</small>
									</div>
									<div class="col-sm-3 col-md-3 col-lg-3 col-xs-12">
										<p>51,48 TL</p>
										<small>Tutar</small>
									</div>
									<div class="col-sm-3 col-md-3 col-lg-3 col-xs-12">
										<p>Kargoya Verildi</p>
										<small><a href="#">Kargo Takip</a></small>
									</div>
								</div>
								<hr>
								<div class="row">
									<div class="col-sm-3 col-md-3 col-lg-3 col-xs-12">
										<p>Tuale Fantazi Kartvizit</p>
										<small>500 Adet</small>
									</div>
									<div class="col-sm-3 col-md-3 col-lg-3 col-xs-12">
										<p>51,48 TL</p>
										<small>Tutar</small>
									</div>
									<div class="col-sm-3 col-md-3 col-lg-3 col-xs-12">
										<p>Kargoya Verildi</p>
										<small><a href="#">Kargo Takip</a></small>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="card">
						<div class="card-header">
							<a class="collapsed card-link" data-toggle="collapse" href="#collapseThree">
								# 45971  -  15 Mar 2018 14,47  -  Sipariş Tutarı: 156,98 TL
							</a>
						</div>
						<div id="collapseThree" class="collapse" data-parent="#accordion">
							<div class="card-body">
								<div class="row">
									<div class="col-sm-3 col-md-3 col-lg-3 col-xs-12">
										<p>Tuale Fantazi Kartvizit</p>
										<small>500 Adet</small>
									</div>
									<div class="col-sm-3 col-md-3 col-lg-3 col-xs-12">
										<p>51,48 TL</p>
										<small>Tutar</small>
									</div>
									<div class="col-sm-3 col-md-3 col-lg-3 col-xs-12">
										<p>Kargoya Verildi</p>
										<small><a href="#">Kargo Takip</a></small>
									</div>
								</div>
								<hr>
								<div class="row">
									<div class="col-sm-3 col-md-3 col-lg-3 col-xs-12">
										<p>Diplomat Zarf</p>
										<small>250 Adet</small>
									</div>
									<div class="col-sm-3 col-md-3 col-lg-3 col-xs-12">
										<p>105,50 TL</p>
										<small>Tutar</small>
									</div>
									<div class="col-sm-3 col-md-3 col-lg-3 col-xs-12">
										<p>Kargoya Verildi</p>
										<small><a href="#">Kargo Takip</a></small>
									</div>
								</div>
								<hr>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div id="menu2" class="tab-pane fade">
			<div class="row">
				<!--<div class="col-md-2 col-lg-2 col-xs-12 ml-auto">
					<a href="#" class="btn btn-success ml-auto btn-account"><i class="fa fa-plus"></i> Yeni Adres Ekle</a>
				</div>-->
				<div class="col-12 mr-auto address-a-style">
					<br>
				<?php foreach ($other_addresses as $other_address) { ?>
					<h5><?php echo $other_address->address_title; ?></h5><a href="<?php echo base_url("adres-sil/$other_address->id"); ?>" class="a1">Adresi Kaldır</a> <a href="<?php echo base_url(); ?>" class="a2"> Varsayılan Olarak Belirle</a>
					<br>
					<p><b>İsim & Soyisim:</b> <?php echo $customer->name; ?></p>
					<p><b>İl:</b> <?php echo $other_address->city; ?></p>
					<p><b>İlçe:</b> <?php echo $other_address->state; ?></p>
					<p><b>Adres:</b> <?php echo $other_address->address; ?></p>
					<p><b>Posta Kodu:</b> <?php echo $other_address->post_code; ?></p>
					<p><b>Telefon:</b> <?php echo $customer->phone; ?></p>
					<?php if ($customer->phone_2 != "") { ?>
					<p><b>Telefon 2:</b> <?php echo $customer->phone_2; ?></p>
					<?php } ?>
					<p><b>Şirket Adı / Ünvanı </b></p>
					<p><?php echo $customer->company_name; ?></p>
					<p><b>TC/Vergi No:</b> <?php echo $customer->tc_no; ?> / <?php echo $customer->tax_number; ?></p>
					<br>
				<?php } ?>
				</div>
				<h3>Adres Ekle</h3>
				<div class="col-sm-12 col-md-12 col-lg-12 col-xs-12 offer-style">
					<form action="<?php echo base_url("adres-ekle/$customer->id"); ?>" method="post">
						<div class="row">
							<div class="form-group col-md-12 col-sm-12 col-lg-12 col-xs-12">
								<label>Adres Başlık</label>
								<input type="text" name="address_title" class="form-control">
							</div>
							<div class="form-group col-md-12 col-sm-12 col-lg-12 col-xs-12">
								<label>İl</label>
								<input type="text" name="city" class="form-control">
							</div>
							<div class="form-group col-md-12 col-sm-12 col-lg-12 col-xs-12">
								<label>İlçe</label>
								<input type="text" name="state" class="form-control">
							</div>
							<div class="form-group col-md-12 col-sm-12 col-lg-12 col-xs-12">
								<label>Posta Kodu</label>
								<input type="text" name="post_code" class="form-control">
							</div>
							<div class="form-group col-md-12 col-sm-12 col-lg-12 col-xs-12">
								<label>Adres</label>
								<textarea name="address" class="m-0 form-control" rows="5" cols="4"></textarea>
							</div>
						</div>
						<div class="form-group col-md-6 col-sm-6 col-lg-6 col-xs-12 ml-auto">
							<input type="hidden" name="<?php echo $this->security->get_csrf_token_name(); ?>" value="<?php echo $this->security->get_csrf_hash(); ?>">
							<label></label>
							<input type="submit" name="address_add" value="Gönder" class="btn btn-danger btn-block">
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
<hr>