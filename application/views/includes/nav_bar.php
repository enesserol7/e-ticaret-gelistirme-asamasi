<div class="container-fluid fontsize clearfix ">
	<div class="row clearfix menu">
		<ul class="row menu-pc">
		<?php $sayac = 1; ?>
		<?php foreach ($categories as $category) { ?>
			<li class="col <?php if($sayac == 3 || $sayac == 4){ echo "menuu3"; }else if($sayac == 5 || $sayac == 6 || $sayac == 7){ echo "menuu"; }else if($sayac == 8 || $sayac == 9 || $sayac == 10){ echo "menuu2"; } ?>"><a href="<?php echo base_url("urunler/");echo $category->url; ?>"><?php echo $category->title; ?></a>
				<ul class="alt-menu">
				<?php $sayac2 = 1; ?>
				<?php foreach ($products as $product) { ?>
					<?php if ($product->category_id == $category->id) { ?>
						<?php
                            $image = get_product_cover_image($product->id);
                            $image = ($image) ? base_url("panel/uploads/product_v/260x200/$image") : base_url("assets/images/portfolio-1.jpg");
                        ?>
						<li><a href="<?php echo base_url("urun-detay/");echo $product->url; ?>"><img src="<?php echo $image; ?>" class="img img-responsive"></a><?php echo $product->title; ?></li>
						<?php $sayac2++; ?>
					<?php } ?>
					
				<?php } ?>
				<?php if ($sayac2 > 8) { ?>
					<li><a href="<?php echo base_url("urunler/");echo $category->url; ?>"><img src="<?php echo base_url("assets/images/tum-urunler.png"); ?>" class="img img-responsive"></a>Tümünü Gör</li>
				<?php } ?>
				</ul>
			</li>
			<?php $sayac++; ?>
		<?php } ?>
		</ul>
		<div id="navmobilebutton"></div>
		<nav class="clearfix col nav navbar" id="ulnavmobiles">
			<ul id="ulnavmobile">
			<?php foreach ($categories as $category) { ?>
				<li><a href="<?php echo base_url();echo $category->url; ?>"><?php echo $category->title; ?></a></li>
			<?php } ?>
			</ul>
		</nav>
	</div>
</div>