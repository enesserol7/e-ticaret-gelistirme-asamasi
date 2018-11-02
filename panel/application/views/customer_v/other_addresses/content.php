<div class="row">
    <div class="col-md-12">
        <h4 class="m-b-lg">
            <?php echo "<b>$item->name</b> isimli kullanıcının diğer adreslerini görüntülüyorsunuz"; ?>
        </h4>
    </div><!-- END column -->
    <div class="col-md-12">
        <div class="widget">
            <div class="widget-body">
                <form>
                    <div class="row">
                        <?php foreach ($items as $item) { ?>
                            <div class="form-group col-md-10 col-md-offset-1">
                                <label><?php echo $item->address_title; ?></label>
                                <textarea disabled name="addres" class="m-0 form-control" rows="5" cols="4"><?php echo $item->address; ?></textarea>
                            </div>
                        <?php } ?>
                    </div>
                    
                    <a href="<?php echo base_url("customers"); ?>" class="btn btn-md btn-danger btn-outline">Geri Dön</a>
                </form>
            </div><!-- .widget-body -->
        </div><!-- .widget -->
    </div><!-- END column -->
</div>