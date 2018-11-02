<div class="container">
	<div class="row">
		<div class="col-12 offer-style">
			<h3 class="offset-1">Teklif İste</h3>
			<form action="<?php echo base_url(); ?>">
				<div class="row">
					<div class="form-group col-sm-9 col-md-3 col-xs-9 offset-md-1 col-lg-3 offset-lg-1">
						<label>Ad Soyad</label>
						<input type="text" name="name" class="form-control">
					</div>
					<div class="form-group col-sm-9 col-md-3 col-xs-9 col-lg-3">
						<label>E-Posta</label>
						<input type="email" name="email" class="form-control">
					</div>
					<div class="form-group col-sm-9 col-md-3 col-xs-9 col-lg-3">
						<label>Telefon Numaranız</label>
						<input type="tel" name="phone" class="form-control">
					</div>
				</div>
				<div class="row">
					<div class="form-group col-9 offset-md-1">
						<label>Teklif İstenen Ürün</label>
						<input type="text" name="offerProduct" class="form-control">
					</div>
				</div>
				<div class="row">
					<div class="form-group col-9 offset-md-1">
						<label>Teklif istenen ürünün özellikleri</label>
						<textarea rows="4" cols="115" name="offerProductFeatures" class="col-12"></textarea>
					</div>
				</div>
				<div class="row">
					<div class="form-group col-sm-9 col-md-3 col-xs-9 col-lg-3 offset-md-1">
						<label>Gramaj</label>
						<input type="text" name="weight" class="form-control">
					</div>
					<div class="form-group col-sm-9 col-md-3 col-xs-9 col-lg-3">
						<label>Ebat</label>
						<input type="text" name="dimensions" class="form-control">
					</div>
					<div class="form-group col-sm-9 col-md-3 col-xs-9 col-lg-3">
						<label>Baskı Yönü</label>
						<input type="text" name="directionofPrinting" class="form-control">
					</div>
				</div>
				<div class="row">
					<div class="form-group col-sm-9 col-md-3 col-xs-9 col-lg-3 offset-md-1">
						<label>Dosya</label>
						<input type="file" name="file" class="form-control">
						<small>Bir dosya yukleyin (PDF, PNG, JPG veya DOC - En fazla 50 MB)</small><br><br>
						<input type="checkbox" name="contract" class=""> Sözleşmeleri kabul ediyorum
					</div>
				</div>
				<div class="row">
					<div class="form-group col-sm-9 col-md-3 col-xs-9 col-lg-3 offset-md-1">
						<input type="submit" name="requestForaBid" value="Teklif İste" class="btn btn-danger">
					</div>
				</div>
			</form>
		</div>
	</div>		
</div>
<hr>