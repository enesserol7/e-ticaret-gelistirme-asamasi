<div class="container-fluid">
	<div class="row">
		<div class="col-sm-8 col-md-8 col-lg-8 col-xs-12 offset-sm-1 offset-md-1 offset-lg-1 top-15 mini-slider">
			<div id="demo" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ul class="carousel-indicators">
					<li data-target="#demo" data-slide-to="0" class="active"></li>
					<li data-target="#demo" data-slide-to="1"></li>
					<li data-target="#demo" data-slide-to="2"></li>
				</ul>
				<!-- The slideshow -->
				<div class="carousel-inner">
				<?php $sayac = 1; ?>
				<?php foreach ($slides as $slide) { ?>
					<div class="carousel-item <?php echo ($sayac == 1)? "active" : ""; ?>">
						<img src="<?php echo get_picture("slides_v",$slide->img_url,"1100x500"); ?>" alt="<?php echo $slide->title; ?>" width="750" height="350">
					</div>
					<?php $sayac++; ?>
				<?php } ?>
				</div>
				<!-- Left and right controls -->
				<a class="carousel-control-prev" href="#demo" data-slide="prev">
					<span class="carousel-control-prev-icon"></span>
				</a>
				<a class="carousel-control-next" href="#demo" data-slide="next">
					<span class="carousel-control-next-icon"></span>
				</a>
			</div>
			<div class="top-12 col banner-1">
				<figure class="clearfix top-m"><a href="#"><img typeof="foaf:Image" class="img img-responsive img-size left-30" src="<?php echo base_url("assets/"); ?>images/numune-kutusu-talep-mini-banner.png" alt=""></a><a href="#"><img typeof="foaf:Image" class="img img-responsive left-12 left-22 left-30 img-size top-m-5" src="<?php echo base_url("assets/"); ?>images/mini-banner-bizi-dene.png" alt=""></a></figure>
			</div>
		</div>
		<div class="col-3 top-25 banner-2">
			<a href="#"><img src="<?php echo base_url("assets/"); ?>images/cok-subeli-banner.jpg" class="img img-responsive"></a>
		</div>
	</div>
	<hr>

</div>