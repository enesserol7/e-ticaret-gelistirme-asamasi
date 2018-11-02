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
                            <label>Doğum Tarihi</label>
                            <input class="form-control" placeholder="Doğum Tarihi" disabled name="date_of_birth" value="<?php echo $item->date_of_birth; ?>">
                        </div>
                        <div class="form-group col-md-6">
                            <label>Cinsiyet</label>
                            <input class="form-control" placeholder="Cinsiyet" disabled name="gender" value="<?php echo $item->gender; ?>">
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label>Telefon</label>
                            <input class="form-control" disabled placeholder="Telefon" name="phone" value="<?php echo $item->phone; ?>">
                        </div>
                        <div class="form-group col-md-6">
                            <label>Telefon 2</label>
                            <input class="form-control" disabled placeholder="Telefon 2" name="phone_2" value="<?php echo $item->phone_2; ?>">
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label>TC</label>
                            <input class="form-control" disabled placeholder="TC" name="tc_no" value="<?php echo $item->tc_no; ?>">
                        </div>
                        <div class="form-group col-md-6">
                            <label>Vergi No</label>
                            <input class="form-control" disabled placeholder="Vergi No" name="tax_number" value="<?php echo $item->tax_number; ?>">
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label>Şirket İsmi</label>
                            <input class="form-control" placeholder="Şirket İsmi" disabled name="company_name" value="<?php echo $item->company_name; ?>">
                        </div>
                        <div class="form-group col-md-6">
                            <label>Sektör</label>
                            <input class="form-control" placeholder="Sektör" disabled name="sector" value="<?php echo $item->sector; ?>">
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label>Kayıt Tarihi</label>
                            <input class="form-control" placeholder="Kayıt Tarihi" disabled name="createdAt" value="<?php echo $item->createdAt; ?>">
                        </div>
                        <div class="form-group col-md-6">
                            <label>IP Adresi</label>
                            <input class="form-control" placeholder="IP Adresi" disabled name="ip_address" value="<?php echo $item->ip_address; ?>">
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label>Adres</label>
                            <textarea disabled name="adres" class="m-0 form-control" rows="5" cols="4"><?php echo $item->address; ?></textarea>
                        </div>
                        <div class="form-group col-md-6">
                            <label>Fatura Adresi</label>
                            <textarea disabled name="adres" class="m-0 form-control" rows="5" cols="4"><?php echo $item->billing_address; ?></textarea>
                        </div>
                    </div>
                    
                    <a href="<?php echo base_url("customers"); ?>" class="btn btn-md btn-danger btn-outline">Geri Dön</a>
                    <a href="<?php echo base_url("customers/other_addresses_form/$item->id"); ?>" class="btn btn-md btn-success btn-outline">Diğer Adresleri Gör</a>
                </form>
            </div><!-- .widget-body -->
        </div><!-- .widget -->
    </div><!-- END column -->
</div>