<div class="container">
	<div class="row">
		<div class="col offset-1">
			<h3>Yeni Ürünler</h3>
		</div>
	</div>
	<div class="row">
	<?php foreach ($new_products as $new_product) { ?>
		<div class="col-md-4 col-lg-3 col-sm-6 col-xs-12">
			<div class="col product-style">
				<?php
                    $image = get_product_cover_image($new_product->id);
                    $image = ($image) ? base_url("panel/uploads/product_v/260x200/$image") : base_url("assets/images/portfolio-1.jpg");
                ?>
				<a href="<?php echo base_url("urun-detay/");echo $new_product->url; ?>"><img src="<?php echo $image; ?>" class="img img-responsive" alt="<?php echo $new_product->title; ?>"></a>
				<a href="<?php echo base_url("urun-detay/");echo $new_product->url; ?>"><?php echo $new_product->title; ?></a>
			</div>
			<br>
			<!--<div class="col product-a-style">
				<a href="<?php //echo base_url("urun-detay"); ?>">34.90 TL'den başlayan fiyatlarla >></a>
			</div>-->
		</div>
	<?php } ?>
	</div>
</div>