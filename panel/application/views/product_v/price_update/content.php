<div class="row">
    <div class="col-md-12">
        <h4 class="m-b-lg">
        	<?php echo "<b>$item2->title;</b> kaydının fiyatını düzenliyorsunuz" ?>
        </h4>
    </div><!-- END column -->
    <div class="col-md-12">
        <div class="widget">
            <hr class="widget-separator">
            <div class="widget-body">                        
                <form action="<?php echo base_url("product/price_update/$item->id/$item->product_id"); ?>" method="post">
                    <div class="form-group">
                        <label>Fiyat Başlık</label>
                        <input class="form-control" placeholder="Fiyat Başlık" name="price_title" value="<?php echo $item->price_title; ?>">
                        <?php if (isset($form_error)) { ?>
                            <small class="input-form-error pull-right"><?php echo form_error("price_title"); ?></small>
                        <?php } ?>
                    </div>
                    <div class="form-group">
                        <label>Fiyat</label>
                        <input class="form-control" placeholder="Fiyat" name="price" value="<?php echo $item->price; ?>">
                    </div>
                    <button type="submit" class="btn btn-primary btn-md btn-outline">Güncelle</button>
                    <a href="<?php echo base_url("product/price_list/$item->product_id"); ?>" class="btn btn-md btn-danger btn-outlinen">İptal</a>
                </form>
            </div><!-- .widget-body -->
        </div><!-- .widget -->
    </div><!-- END column -->
</div>