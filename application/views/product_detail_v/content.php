<div class="container">
	<div class="row">
		<div class="col-sm-12 col-md-6 col-lg-6 col-xs-12 top-15 ">
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
					<?php foreach ($product_images as $image) { ?>
						<div class="carousel-item <?php echo ($sayac == 1)? "active" : ""; ?>">
							<img src="<?php echo base_url("panel/uploads/product_v/580x446/$image->img_url");?>" alt="<?php echo $product->title; ?>" width="750" height="350">
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
			<div class="row mt-5">
				<div class="col-12 mb-3">
					<h4>Benzer Ürünler</h4>
				</div>
				<?php foreach ($other_products as $other_product) { ?>
					<div class="col-md-4 col-lg-4 col-sm-4 col-xs-12">
						<div class="col product-style">
							<?php
							$image = get_product_cover_image($other_product->id);
							$image = ($image) ? base_url("panel/uploads/product_v/260x200/$image") : base_url("assets/images/portfolio-1.jpg");
							?>
							<a href="<?php echo base_url("urun-detay/");echo $other_product->url; ?>"><img src="<?php echo $image; ?>" class="img img-responsive responsive" alt="<?php echo $other_product->title; ?>"></a>
							<a href="<?php echo base_url("urun-detay/");echo $other_product->url; ?>"><?php echo $other_product->title; ?></a>
						</div>
						<!--<div class="col product-a-style">
							<a href="<?php //echo base_url("urun-detay"); ?>">34.90 TL'den başlayan fiyatlarla >></a>
						</div>-->
					</div>
				<?php } ?>
			</div>
			<div class="row mt-5 product-detail">
				<div class="col-12">
					<h3><?php echo $product->title; ?> Hakkında</h3>
					<?php echo $product->description; ?>
				</div>
			</div>
		</div>
		<div class="col-sm-12 col-md-6 col-lg-6 col-xs-12 top-25 product-detail-style">
			<h2><?php echo $product->title; ?></h2>
			<div class="col-12 detail-box">
				<?php if ($product->dimensions != "") { ?>
					<small class="small-style"><b>Ebat</b> : <?php echo $product->dimensions; ?></small>
				<?php } ?>
				<?php if ($product->paper_type != "") { ?>
					<small><b>Kağıt</b> : <?php echo $product->paper_type; ?></small><br><br>
				<?php } ?>
				<?php if ($product->cut != "") { ?>
					<small class="small-style"><b>Kesim</b> : <?php echo $product->cut; ?></small>
				<?php } ?>
				<?php if ($product->color != "") { ?>
					<small><b>Renk</b> : <?php echo $product->color; ?></small><br><br>
				<?php } ?>
				<?php if ($product->application != "") { ?>
					<small class="small-style"><b>Uygulama</b> : <?php echo $product->application; ?></small>
				<?php } ?>
				<?php if ($product->lac != "") { ?>
					<small><b>Lak</b> : <?php echo $product->lac; ?></small><br><br>
				<?php } ?>
				<?php if ($product->lamination != "") { ?>
					<small class="small-style"><b>Laminasyon</b> : <?php echo $product->lamination; ?></small>
				<?php } ?>
				<?php if ($product->covering != "") { ?>
					<small><b>Kapak</b> : <?php echo $product->covering; ?></small><br><br>
				<?php } ?>
				<?php if ($product->metarial != "") { ?>
					<small class="small-style"><b>Malzeme</b> : <?php echo $product->metarial; ?></small>
				<?php } ?>
				<?php if ($product->thickness != "") { ?>
					<small><b>Kalınlık</b> : <?php echo $product->thickness; ?></small><br><br>
				<?php } ?>
				<?php if ($product->fabric != "") { ?>
					<small class="small-style"><b>Kumaş</b> : <?php echo $product->fabric; ?></small>
				<?php } ?>
				<?php if ($product->carrier_metarial != "") { ?>
					<small><b>Taşıyıcı Malzeme</b> : <?php echo $product->carrier_metarial; ?></small><br><br>
				<?php } ?>
				<?php if ($product->fixing_metarial != "") { ?>
					<small class="small-style"><b>Sabitleyici Malzeme</b> : <?php echo $product->fixing_metarial; ?></small>
				<?php } ?>
				<?php if ($product->flag_type != "") { ?>
					<small><b>Bayrak Tipi</b> : <?php echo $product->flag_type; ?></small><br><br>
				<?php } ?>
				<?php if ($product->envelope_adhesive != "") { ?>
					<small class="small-style"><b>Zarf Yapışkanı</b> : <?php echo $product->envelope_adhesive; ?></small>
				<?php } ?>
				<?php if ($product->envelope_window != "") { ?>
					<small><b>Zarf Penceresi</b> : <?php echo $product->envelope_window; ?></small><br><br>
				<?php } ?>
				<?php if ($product->number_of_leaves != "") { ?>
					<small class="small-style"><b>Sayfa Sayısı</b> : <?php echo $product->number_of_leaves; ?></small>
				<?php } ?>
				<?php if ($product->packing != "") { ?>
					<small><b>Ambalaj</b> : <?php echo $product->packing; ?></small><br><br>
				<?php } ?>
			</div>
			<div class="col-12 detail-form">
				<form action="<?php echo base_url(); ?>">
					<div class="row">
						<?php if ($product->paper_type != "") { ?>
							<div class="form-group col-sm-12 col-md-12 col-xs-12 col-lg-12">
								<label>Kağıt</label>
								<input type="text" disabled placeholder="<?php echo $product->paper_type; ?>" name="paper_type" class="form-control">
							</div>
						<?php } ?>
						<div class="form-group col-sm-12 col-md-12 col-xs-12 col-lg-12">
							<label>Baskı</label>
							<select class="form-control" name="printing">
								<option value="sadece ön">Sadece Ön</option>
								<option value="Ön-Arka">Ön-Arka</option>
							</select>
						</div>
						<?php if ($product->application != "") { ?>
							<div class="form-group col-sm-12 col-md-12 col-xs-12 col-lg-12">
								<label>Uygulama</label>
								<input type="text" disabled value="<?php echo $product->application; ?>" name="application" class="form-control">
							</div>
						<?php } ?>
						<?php if ($product->dimensions != "") { ?>
							<div class="form-group col-sm-12 col-md-12 col-xs-12 col-lg-12">
								<label>Ebat</label>
								<input type="text" disabled value="<?php echo $product->dimensions; ?>" name="dimensions" class="form-control">
							</div>
						<?php } ?>
						<?php if ($product->cut != "") { ?>
							<div class="form-group col-sm-12 col-md-12 col-xs-12 col-lg-12">
								<label>Kesim</label>
								<input type="text" disabled value="<?php echo $product->cut; ?>" name="cut" class="form-control">
							</div>
						<?php } ?>
						<?php if ($product->color != "") { ?>
							<div class="form-group col-sm-12 col-md-12 col-xs-12 col-lg-12">
								<label>Renk</label>
								<input type="text" disabled value="<?php echo $product->color; ?>" name="color" class="form-control">
							</div>
						<?php } ?>
						<?php if ($product->lac != "") { ?>
							<div class="form-group col-sm-12 col-md-12 col-xs-12 col-lg-12">
								<label>Lak</label>
								<input type="text" disabled value="<?php echo $product->lac; ?>" name="lac" class="form-control">
							</div>
						<?php } ?>
						<?php if ($product->lamination != "") { ?>
							<div class="form-group col-sm-12 col-md-12 col-xs-12 col-lg-12">
								<label>Laminasyon</label>
								<input type="text" disabled value="<?php echo $product->lamination; ?>" name="lamination" class="form-control">
							</div>
						<?php } ?>
						<?php if ($product->covering != "") { ?>
							<div class="form-group col-sm-12 col-md-12 col-xs-12 col-lg-12">
								<label>Kapak</label>
								<input type="text" disabled value="<?php echo $product->covering; ?>" name="covering" class="form-control">
							</div>
						<?php } ?>
						<?php if ($product->metarial != "") { ?>
							<div class="form-group col-sm-12 col-md-12 col-xs-12 col-lg-12">
								<label>Malzeme</label>
								<input type="text" disabled value="<?php echo $product->metarial; ?>" name="metarial" class="form-control">
							</div>
						<?php } ?>
						<?php if ($product->thickness != "") { ?>
							<div class="form-group col-sm-12 col-md-12 col-xs-12 col-lg-12">
								<label>Kalınlık</label>
								<input type="text" disabled value="<?php echo $product->thickness; ?>" name="thickness" class="form-control">
							</div>
						<?php } ?>
						<?php if ($product->fabric != "") { ?>
							<div class="form-group col-sm-12 col-md-12 col-xs-12 col-lg-12">
								<label>Kumaş</label>
								<input type="text" disabled value="<?php echo $product->fabric; ?>" name="fabric" class="form-control">
							</div>
						<?php } ?>
						<?php if ($product->carrier_metarial != "") { ?>
							<div class="form-group col-sm-12 col-md-12 col-xs-12 col-lg-12">
								<label>Taşıyıcı Malzeme</label>
								<input type="text" disabled value="<?php echo $product->carrier_metarial; ?>" name="carrier_metarial" class="form-control">
							</div>
						<?php } ?>
						<?php if ($product->fixing_metarial != "") { ?>
							<div class="form-group col-sm-12 col-md-12 col-xs-12 col-lg-12">
								<label>Sabitleyici Malzeme</label>
								<input type="text" disabled value="<?php echo $product->fixing_metarial; ?>" name="fixing_metarial" class="form-control">
							</div>
						<?php } ?>
						<?php if ($product->flag_type != "") { ?>
							<div class="form-group col-sm-12 col-md-12 col-xs-12 col-lg-12">
								<label>Bayrak Tipi</label>
								<input type="text" disabled value="<?php echo $product->flag_type; ?>" name="flag_type" class="form-control">
							</div>
						<?php } ?>
						<?php if ($product->envelope_adhesive != "") { ?>
							<div class="form-group col-sm-12 col-md-12 col-xs-12 col-lg-12">
								<label>Zarf Yapışkanı</label>
								<input type="text" disabled value="<?php echo $product->envelope_adhesive; ?>" name="envelope_adhesive" class="form-control">
							</div>
						<?php } ?>
						<?php if ($product->envelope_window != "") { ?>
							<div class="form-group col-sm-12 col-md-12 col-xs-12 col-lg-12">
								<label>Zarf Penceresi</label>
								<input type="text" disabled value="<?php echo $product->envelope_window; ?>" name="envelope_window" class="form-control">
							</div>
						<?php } ?>
						<?php if ($product->number_of_leaves != "") { ?>
							<div class="form-group col-sm-12 col-md-12 col-xs-12 col-lg-12">
								<label>Sayfa Sayısı</label>
								<input type="text" disabled value="<?php echo $product->number_of_leaves; ?>" name="number_of_leaves" class="form-control">
							</div>
						<?php } ?>
						<?php if ($product->packing != "") { ?>
							<div class="form-group col-sm-12 col-md-12 col-xs-12 col-lg-12">
								<label>Ambalaj</label>
								<input type="text" disabled value="<?php echo $product->packing; ?>" name="packing" class="form-control">
							</div>
						<?php } ?>
					</div>
				</form>
			</div>
			<div class="col-12 price-form">
				<form>
					<div class="form-check-inline price-form-div">
						<label class="form-check-label" for="radio1">
							<input type="radio" class="form-check-input" id="radio1" name="optradio" value="option1" checked><b><?php echo $product->price; ?> TL+KDV</b> <br><small>250 Adet</small>
						</label>
					</div>
					<div class="form-check-inline price-form-div">
						<label class="form-check-label" for="radio2">
							<input type="radio" class="form-check-input" id="radio2" name="optradio" value="option2"><b>42,38 TL+KDV</b> <br> <small>500 Adet</small>
						</label>
					</div>
					<div class="form-check-inline price-form-div">
						<label class="form-check-label" for="radio3">
							<input type="radio" class="form-check-input" id="radio3" name="optradio" value="option3"><b>81,25 TL+KDV</b> <br><small>1.000 Adet</small>
						</label>
					</div>
				</form>
			</div>
			<div class="col-12 mt-3">
				<p class="price-form float-left"><i class="fa fa-truck"> Kargo Ücretsiz -</i><br> KDV Dahil <b class="mr-3">44,11 TL</b>
					<button class="btn btn-danger float-right">SEPETE EKLE & TASARIM YÜKLE</button></p>
				</div>
				<div class="clearfix"></div>
				<div class="col-12 mt-3">
					<h5>Baskılarım ne zaman elimde olur?</h5>
				</div>
				<div class="row">
					<div class="col-12 mt-3 time-box">
						<div class="col-4 float-left">
							<small>Ücretsiz Doküman Kontrolü</small>
							<p><b>24 Saat İçinde</b></p>
						</div>
						<div class="col-4 float-left">
							<small>Üretim Süreci</small>
							<p><b><?php echo $product->production_time; ?></b></p>
						</div>
						<div class="col-4 float-left">
							<small>Ücretsiz Kargo</small>
							<p><b>İstanbul 1 İş Günü<br>Tüm Türkiye 1-2 İş Günü</b></p>
						</div>	
					</div>
				</div>
				<div class="row mt-4">
					<div class="col-12 time-box-2">
						<p><b>Tasarım Yükleme Süreci</b>: Tasarım dosyalarınızı, ürünü sepete attıktan sonra <b>pdf</b>, <b>psd</b>, <b>ai</b>, <b>indd</b>, <b>svg</b>, <b>eps</b> formatlarında sitemize yükleyebilirsiniz. Tasarımınızın baskıya uygunluğu kontrol edilip, sizden onay alındıktan sonra ürününüz baskıya alınacaktır.</p>
					</div>
				</div>
				<div class="row mt-5">
					<div class="col-12">
						<h5>Tuale Fantazi Kartvizit Şablonları</h5>
					</div>
					<div class="col-12">
						<section id="tabs">
							<div class="container">
								<div class="row">
									<div class="col-xs-12 mx-auto">
										<nav>
											<div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
												<a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true"><i class="fa fa-file-o"></i> Dosyalar</a>
						<!--<a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false"><i class="fa fa-file-o"></i> Psd</a>
							<a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-contact" role="tab" aria-controls="nav-contact" aria-selected="false"><i class="fa fa-file-o"></i> Pdf</a>-->
						</div>
					</nav>
					<div class="tab-content py-3 px-3 px-sm-0" id="nav-tabContent">
						<div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
							<?php foreach ($product_files as $product_file) { ?>
								<a target="_blank" href="<?php echo base_url(); ?>panel/uploads/product_v/files/<?php echo $product_file->url; ?>" download="Bidolu-<?php echo $product->dimensions; ?>-<?php echo $product->url; ?>-<?php echo $product_file->url; ?>" class="btn btn-animated btn-default"><?php echo $product->dimensions; ?> <?php echo $product->title; ?> <?php echo $product_file->url; ?><i class="pl-10 fa fa-download"></i></a>
							<?php } ?>
						</div>
					<!--<div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
						<a href="<?php //echo base_url(); ?>"><i class="fa fa-arrow-circle-down"></i> 8.4x5.2cm Tuale Fantazi Kartvizit</a>
					</div>
					<div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">
						<a href="<?php //echo base_url(); ?>"><i class="fa fa-arrow-circle-down"></i> 8.4x5.2cm Tuale Fantazi Kartvizit</a>
					</div>-->
				</div>

			</div>
		</div>
	</div>
</section>
</div>
</div>
</div>
</div>
</div>
<hr>