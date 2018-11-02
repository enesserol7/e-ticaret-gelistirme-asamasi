<div class="row">
    <div class="col-md-12">
        <h4 class="m-b-lg">
            <?php echo "<b>$customer->name</b> isimli müşterinin siparişini görüntülüyorsunuz"; ?>
        </h4>
    </div><!-- END column -->
    <div class="col-md-12">
        <div class="widget">
            <div class="widget-body">
                <form>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label>İsim</label>
                            <input class="form-control" placeholder="İsim" disabled name="name" value="<?php echo $customer->name; ?>">
                        </div>
                        <div class="form-group col-md-6">
                            <label>E-Posta</label>
                            <input class="form-control" disabled placeholder="E-Posta" name="email" value="<?php echo $customer->email; ?>">
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label>Telefon</label>
                            <input class="form-control" disabled placeholder="Telefon" name="phone" value="<?php echo $customer->phone; ?>">
                        </div>
                        <div class="form-group col-md-6">
                            <label>Telefon 2</label>
                            <input class="form-control" disabled placeholder="Telefon 2" name="phone_2" value="<?php echo $customer->phone_2; ?>">
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label>Vergi No</label>
                            <input class="form-control" disabled placeholder="Vergi No" name="tax_number" value="<?php echo $customer->tax_number; ?>">
                        </div>
                        <div class="form-group col-md-6">
                            <label>Tc No</label>
                            <input class="form-control" disabled placeholder="Tc No" name="tc_no" value="<?php echo $customer->tc_no; ?>">
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label>Ürün Adı</label>
                            <input class="form-control" disabled placeholder="Ürün Adı" name="title" value="<?php echo $product->title; ?>">
                        </div>
                        <div class="form-group col-md-6">
                            <label>Adet</label>
                            <input class="form-control" disabled placeholder="Adet" name="piece" value="<?php echo $order->piece; ?>">
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label>Birim Fiyat</label>
                            <input class="form-control" disabled placeholder="Birim Fiyat" name="unit_price" value="<?php echo $order->unit_price; ?>">
                        </div>
                        <div class="form-group col-md-6">
                            <label>Tutar</label>
                            <input class="form-control" disabled placeholder="Tutar" name="price" value="<?php echo $order->price; ?>">
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label>KDV</label>
                            <input class="form-control" disabled placeholder="KDV" name="kdv" value="<?php echo $order->kdv; ?>">
                        </div>
                        <div class="form-group col-md-6">
                            <label>Sipariş Durumu</label>
                            <input class="form-control" disabled placeholder="Sipariş Durumu" name="status" value="<?php echo $order->status; ?>">
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label>Sipariş Numarası</label>
                            <input class="form-control" disabled placeholder="Sipariş Numarası" name="order_number" value="<?php echo $order->order_number; ?>">
                        </div>
                        <div class="form-group col-md-6">
                            <label>Sipariş Tarihi</label>
                            <input class="form-control" disabled placeholder="Sipariş Tarihi" name="date" value="<?php echo $order->date; ?>">
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label>Kargo Adresi</label>
                            <textarea disabled name="cargo_address" class="m-0 form-control" rows="5" cols="4"><?php echo $order->address; ?></textarea>
                        </div>
                        <div class="form-group col-md-6">
                            <label>Fatura Adresi</label>
                            <textarea disabled name="cargo_address" class="m-0 form-control" rows="5" cols="4"><?php echo $order->billing_address; ?></textarea>
                        </div>
                    </div>
                    <a href="<?php echo base_url("orders"); ?>" class="btn btn-md btn-danger btn-outline">Geri Dön</a>
                </form>
            </div><!-- .widget-body -->
        </div><!-- .widget -->
    </div><!-- END column -->
</div>