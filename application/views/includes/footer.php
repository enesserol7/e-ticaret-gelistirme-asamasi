<?php $settings = get_settings(); ?>
<footer class="container-fluid">
	<div class="row footer-h3-font footer-list-style footer-list-font footer-link-font">
		<div class="col">
			<h3>MÜŞTERİ İLİŞKİLERİ</h3>
			<ul>
			<?php foreach ($information_pages as $information_page) { ?>
				<li><a href="<?php echo base_url("bilgi-sayfalari/");echo $information_page->url; ?>"> <?php echo $information_page->title; ?></a></li>
			<?php } ?>
				<li><a href="<?php echo base_url("guvenli-alisveris"); ?>"> Güvenli Alışveriş</a></li>
			</ul>
		</div>
		<div class="col">
			<h3>HAKKIMIZDA</h3>
			<ul>
				<li><a href="<?php echo base_url("hakkimizda"); ?>"> Hakkımızda</a></li>
				<li><a href="<?php echo base_url("sikca-sorulan-sorular"); ?>"> Sıkça Sorulan Sorular</a></li>
				<li><a href="<?php echo base_url("iletisim"); ?>"> İletişim</a></li>
				<li><a href="<?php echo base_url("teklif-iste"); ?>"> Teklif İste</a></li>
				<li><a href="<?php echo base_url("numune-kutusu-talebi"); ?>"> Numune Kutusu Talep Et</a></li>
				<li><a href="<?php echo base_url("bizimle-calismak-ister-misiniz"); ?>"> Bizimle Çalışmak İster Misiniz?</a></li>
			</ul>
		</div>
		<div class="col">
			<h3>TÜM ÜRÜNLER</h3>
			<ul>
				<li><a href="<?php echo base_url("tum-matbaa-baski-urunleri"); ?>"> Tüm Matbaa Baskı Ürünleri</a></li>
				<li><a href="#"> Hazır Şablonlar</a></li>
				<li><a href="<?php echo base_url("fuar-urunleri"); ?>"> Fuar Ürünleri</a></li>
				<li><a href="<?php echo base_url("restoran-cafe-urunleri"); ?>"> Restoran/Cafe Ürünleri</a></li>
				<li><a href="<?php echo base_url("saglik-sektoru-matbaa-urunleri"); ?>"> Sağlık Sektörü Ürünleri</a></li>
				<li><a href="<?php echo base_url("teklif-iste"); ?>"> Teklif İste</a></li>
			</ul>
		</div>
		<div class="col">
			<h3>BİZİ TAKİP EDİN</h3>
			<ul>
				<?php if ($settings->linkedin != "") { ?>
					<li><i class="fa fa-linkedin"></i> <a href="https://linkedin.com/in/<?php echo $settings->linkedin; ?>"> Linkedin</a></li>
				<?php } ?>
				<?php if ($settings->twitter != "") { ?>
					<li><i class="fa fa-twitter"></i> <a href="https://twitter.com/<?php echo $settings->twitter; ?>"> Twitter</a></li>
				<?php } ?>
				<?php if ($settings->instagram != "") { ?>
					<li><i class="fa fa-instagram"></i> <a href="https://instagram.com/<?php echo $settings->instagram; ?>"> İnstagram</a></li>
				<?php } ?>
				<?php if ($settings->facebook != "") { ?>
					<li><i class="fa fa-facebook"></i> <a href="https://facebook.com/<?php echo $settings->facebook; ?>"> Facebook</a></li>
				<?php } ?>
				<?php if ($settings->youtube != "") { ?>
					<li><i class="fa fa-youtube"></i> <a href="https://youtube.com/<?php echo $settings->youtube; ?>"> Youtube</a></li>
				<?php } ?>
			</ul>
		</div>
	</div>
	<hr>
	<div class="row footer-span-font">
		<div class="col">
			<img src="<?php echo base_url("assets/"); ?>images/footer-guvenli.png" class="img img-responsive">
			<?php date_default_timezone_set('Europe/Istanbul'); ?>
			<span><?php echo $settings->company_name; ?> Tüm Hakları Saklıdır © <?php echo date("Y"); ?></span>
			<img src="<?php echo base_url("assets/"); ?>images/footer-icons.png" class="img img-responsive float-right">
		</div>
	</div>
</footer>