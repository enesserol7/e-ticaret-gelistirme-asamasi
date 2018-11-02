<div class="container">
	<div class="row">
		<div class="col offset-1">
			<h3><?php echo get_product_category_title($all_product->category_id); ?></h3>
		</div>
	</div>
	<div class="row">
	<?php foreach ($all_products as $all_products) { ?>
		<div class="col-md-4 col-lg-3 col-sm-6 col-xs-12 product-div-style">
			<div class="col product-style">
				<?php
                    $image = get_product_cover_image($all_products->id);
                    $image = ($image) ? base_url("panel/uploads/product_v/260x200/$image") : base_url("assets/images/portfolio-1.jpg");
                ?>
				<a href="<?php echo base_url("urun-detay/");echo $all_products->url; ?>"><img src="<?php echo $image; ?>" class="img img-responsive" alt="<?php echo $all_products->title; ?>"></a>
				<a href="<?php echo base_url("urun-detay/");echo $all_products->url; ?>"><?php echo $all_products->title; ?></a>
			</div>
			<!--<div class="col product-a-style">
				<a href="<?php //echo base_url("urun-detay"); ?>">34.90 TL'den başlayan fiyatlarla >></a>
			</div>-->
		</div>
	<?php } ?>
	</div>
</div>
<hr>