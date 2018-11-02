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
                            <label>Vergi/Tc No</label>
                            <input class="form-control" disabled placeholder="Vergi/Tc No" name="tax_number" value="<?php echo $item->tax_number; ?>">
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label>İl</label>
                            <input class="form-control" disabled placeholder="İl" name="city" value="<?php echo $item->city; ?>">
                        </div>
                        <div class="form-group col-md-6">
                            <label>İlçe</label>
                            <input class="form-control" placeholder="İlçe" disabled name="state" value="<?php echo $item->state; ?>">
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label>Kargo Adresi</label>
                            <textarea disabled name="cargo_address" class="m-0 form-control" rows="5" cols="4"><?php echo $item->cargo_address; ?></textarea>
                        </div>
                        <div class="form-group col-md-6">
                            <label>Numune Kutusu Talep Nedeni</label>
                            <input class="form-control" placeholder="Numune Kutusu Talep Nedeni" disabled name="purpose_of_request" value="<?php echo $item->purpose_of_request; ?>">
                        </div>
                    </div>
                    <a href="<?php echo base_url("sample_box"); ?>" class="btn btn-md btn-danger btn-outline">Geri Dön</a>
                </form>
            </div><!-- .widget-body -->
        </div><!-- .widget -->
    </div><!-- END column -->
</div>