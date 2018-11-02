<div class="container mt-5">
	<div class="row link-style">
		<div class="col ">
			<a href="<?php echo base_url("bizimle-calismak-ister-misiniz"); ?>">Bizimle Çalışmak İster Misiniz? </a><b class="ml-2"> ></b><a href="<?php echo base_url("is-detayi"); ?>" class="ml-3">İş Detayı </a><b class="ml-2"> ></b><a href="<?php echo base_url("ise-basvur"); ?>" class="ml-3">İş Başvuru Formu</a>
		</div>
	</div>
	<div class="row ">
		<div class="col-2 ml-auto">
			<a href="#" class="btn btn-primary ml-auto">Linkedin'le Başvur</a>
		</div>
	</div>
	<form action="<?php echo base_url(); ?>">
		<div class="row">
			<div class="col-4">
				<h4>Kişisel Bilgi</h4>
				<p>bize kendin hakkında bir şey söyle</p>
			</div>
			<div class="col-6 form-group">
				<label>Tam Ad *</label>
				<input class="form-control" placeholder="Ad Soyad" type="text" name="name"><br>
				<label>E-Posta *</label>
				<input type="email" name="email" placeholder="E-Posta" class="form-control"><br>
				<label>Telefon</label>
				<input type="tel" name="phone" placeholder="Telefon" class="form-control">
			</div>
			<hr>
		</div>
		<hr>
		<div class="row">
			<div class="col-4">
				<h4>CV / Özgeçmiş *</h4>
				<p>CV'nizi yükleyin veya dosyayı devam ettirin</p>
			</div>
			<div class="col-6 form-group">
				<input type="file" name="file">	<p>PDF, DOC, DOCX, JPG ve PNG dosyalarını kabul ediyoruz</p>
			</div>
		</div>
		<hr>
		<div class="row">
			<div class="col-4">
				<h4>ÖN YAZI</h4>
				<p>Kapak mektubunu buraya ekle.</p>
			</div>
			<div class="col-6 form-group">
				<textarea class="form-control" name="" cols="5" rows="5"></textarea>
			</div>
		</div>
		<div class="row">
			<div class="col-6 ml-auto">
				<input type="submit" name="button" class="btn btn-success" value="Başvuruyu Gönder">
			</div>
		</div>
	</form>
</div>
<hr>