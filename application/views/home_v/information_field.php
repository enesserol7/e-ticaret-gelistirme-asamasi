<div class="container">
	<div class="row">
		<div class="col-12 about-style">
			<h3>bidolu.com Türkiye'nin En Büyük Online Matbaası</h3>
			<br>
			<p><b>Online matbaa</b> işlerinde ihtiyacınız olan her şey <b>Bidolu'da!</b></p>
			<br>
			<div class="col">
				<div class="col">
					<p class="about-p-style">Online matbaa olarak hizmet veren Bidolubaskı'da, kartvizit, el ilanı, davetiye, amerikan servis, katalog, küp bloknot, rulo vb. 40'ın üzerinde baskı ürünü,
					uygun fiyatlarla ve üstelik ücretsiz kargo fırsatı ile sizleri bekliyor.</p>
				</div>
			</div>
			
		</div>
	</div>
	<div class="row" id="home-references">
		<div class="col references-style">
			<h3>Referanslarımız</h3>
			<ul>
			<?php foreach ($brands as $brand) { ?>
				<li ><img src="<?php echo get_picture("brands_v",$brand->img_url,"170x42"); ?>" class="img img-responsive responsive" alt="<?php echo $brand->title; ?>"></li>
			<?php } ?>
			</ul>
		</div>
	</div>
</div>