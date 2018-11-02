<div class="row">
    <div class="col-md-12">
        <h4 class="m-b-lg">
            <?php echo "<b>$item->name</b> kaydını görüntülüyorsunuz"; ?>
        </h4>
    </div><!-- END column -->
    <div class="col-md-12">
        <div class="widget">
            <div class="widget-body">
                <form>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label>İsim</label>
                            <input class="form-control" placeholder="İsim" disabled name="name" value="<?php echo $item->name; ?>">
                        </div>
                        <div class="form-group col-md-6">
                            <label>E-Posta</label>
                            <input class="form-control" disabled placeholder="E-Posta" name="email" value="<?php echo $item->email; ?>">
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label>Telefon</label>
                            <input class="form-control" disabled placeholder="Telefon" name="phone" value="<?php echo $item->phone; ?>">
                        </div>
                        <div class="form-group col-md-6">
                            <label>Teklif İstenen Ürün</label>
                            <input class="form-control" disabled placeholder="Teklif İstenen Ürün" name="offer_requested_product" value="<?php echo $item->offer_requested_product; ?>">
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label>Ağırlık</label>
                            <input class="form-control" placeholder="Ağırlık" disabled name="weight" value="<?php echo $item->weight; ?>">
                        </div>
                        <div class="form-group col-md-6">
                            <label>Boyut</label>
                            <input class="form-control" disabled placeholder="Boyut" name="dimensions" value="<?php echo $item->dimensions; ?>">
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label>Baskı Yönü</label>
                            <input class="form-control" placeholder="Baskı Yönü" disabled name="direction_of_printing" value="<?php echo $item->direction_of_printing; ?>">
                        </div>
                        <div class="form-group col-md-6">
                            <label>Teklif Tarihi</label>
                            <input class="form-control" placeholder="Teklif Tarihi" disabled name="createdAt" value="<?php echo $item->createdAt; ?>">
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label>Teklif İstenen Ürün Özellikleri</label>
                            <textarea disabled name="offer_requested_attributes" class="m-0 form-control" rows="5" cols="4"><?php echo $item->offer_requested_attributes; ?></textarea>
                        </div>
                        <label>Dosya</label>
                        <a target="_blank" href="http://localhost:9090/bidolu/<?php echo $item->file; ?>" download="Bidolu-<?php echo $item->file; ?>" class="btn btn-animated btn-default">İndir<i class="pl-10 fa fa-download"></i></a>
                    </div>
                    <a href="<?php echo base_url("offer_requests"); ?>" class="btn btn-md btn-danger btn-outline">Geri Dön</a>
                </form>
            </div><!-- .widget-body -->
        </div><!-- .widget -->
    </div><!-- END column -->
</div>