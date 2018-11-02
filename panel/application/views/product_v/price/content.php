<div class="row">
    <div class="col-md-12">
        <h4 class="m-b-lg">
        	<?php echo $item->title; ?> Ürünü için Fiyat Ekle
        </h4>
    </div><!-- END column -->
    <div class="col-md-12">
        <div class="widget">
            <hr class="widget-separator">
            <div class="widget-body">                        
                <form action="<?php echo base_url("product/price_save/$item->id"); ?>" method="post">
                    <div class="form-group">
                        <label>Fiyat Başlık</label>
                        <input class="form-control" placeholder="Fiyat Başlık" name="price_title">
                    </div>
                    <div class="form-group">
                        <label>Fiyat</label>
                        <input class="form-control" placeholder="Fiyat" name="price">
                    </div>
                    <button type="submit" class="btn btn-primary btn-md btn-outline">Kaydet</button>
                    <a href="<?php echo base_url("product"); ?>" class="btn btn-md btn-danger btn-outlinen">İptal</a>
                </form>
            </div><!-- .widget-body -->
        </div><!-- .widget -->
    </div><!-- END column -->
</div>