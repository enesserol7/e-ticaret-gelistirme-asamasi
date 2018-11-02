<div class="row">
    <div class="col-md-12">
        <h4 class="m-b-lg">
        	Yeni Ürün Ekle
        </h4>
    </div><!-- END column -->
    <div class="col-md-12">
        <div class="widget">
            <hr class="widget-separator">
            <div class="widget-body">                        
                <form action="<?php echo base_url("product/save"); ?>" method="post">
                    <div class="form-group">
                        <label>Ürün Adı</label>
                        <input class="form-control" placeholder="Ürün Adı" name="title">
                        <?php if (isset($form_error)) { ?>
                            <small class="input-form-error pull-right"><?php echo form_error("title"); ?></small>
                        <?php } ?>
                    </div>
                    <div class="form-group">
                        <label>Açıklama</label>
                        <textarea name="description" class="m-0" data-plugin="summernote" data-options="{height: 250}"></textarea>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label>Kategori</label>
                            <select class="form-control" name="category_id">
                                <?php foreach ($categories as $category) { ?>
                                    <option value="<?php echo $category->id; ?>"><?php echo $category->title; ?></option>
                                <?php } ?>
                            </select>
                            <?php if(isset($form_error)){ ?>
                                <small class="pull-right input-form-error"> <?php echo form_error("category_id"); ?></small>
                            <?php } ?>
                        </div>
                        <div class="form-group col-md-6">
                            <label>Ebat</label>
                            <input class="form-control" placeholder="Ebat" name="dimensions">
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label>Kesim</label>
                            <input class="form-control" placeholder="Kesim" name="cut">
                        </div>
                        <div class="form-group col-md-6">
                            <label>Kağıt Türü</label>
                            <input class="form-control" placeholder="Kağıt Türü" name="paper_type">
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label>Renk</label>
                            <input class="form-control" placeholder="Renk" name="color">
                        </div>
                        <div class="form-group col-md-6">
                            <label>Üretim Süresi</label>
                            <input class="form-control" placeholder="Üretim Süresi" name="production_time">
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label>Uygulama</label>
                            <input class="form-control" placeholder="Uygulama" name="application">
                        </div>
                        <div class="form-group col-md-6">
                            <label>Lak</label>
                            <input class="form-control" placeholder="Lak" name="lac">
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label>Laminasyon</label>
                            <input class="form-control" placeholder="Laminasyon" name="lamination">
                        </div>
                        <div class="form-group col-md-6">
                            <label>Kaplama</label>
                            <input class="form-control" placeholder="Kaplama" name="covering">
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label>Malzeme</label>
                            <input class="form-control" placeholder="Malzeme" name="metarial">
                        </div>
                        <div class="form-group col-md-6">
                            <label>Kalınlık</label>
                            <input class="form-control" placeholder="Kalınlık" name="thickness">
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label>Kumaş</label>
                            <input class="form-control" placeholder="Kumaş" name="fabric">
                        </div>
                        <div class="form-group col-md-6">
                            <label>Taşıyıcı Malzeme</label>
                            <input class="form-control" placeholder="Taşıyıcı Malzeme" name="carrier_metarial">
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label>Sabitleyici Malzeme</label>
                            <input class="form-control" placeholder="Sabitleyici Malzeme" name="fixing_metarial">
                        </div>
                        <div class="form-group col-md-6">
                            <label>Bayrak Tipi</label>
                            <input class="form-control" placeholder="Bayrak Tipi" name="flag_type">
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label>Zarf Yapışkanı</label>
                            <input class="form-control" placeholder="Zarf Yapışkanı" name="envelope_adhesive">
                        </div>
                        <div class="form-group col-md-6">
                            <label>Zarf Penceresi</label>
                            <input class="form-control" placeholder="Zarf Penceresi" name="envelope_window">
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label>Yaprak Sayısı</label>
                            <input class="form-control" placeholder="Yaprak Sayısı" name="number_of_leaves">
                        </div>
                        <div class="form-group col-md-6">
                            <label>Ambalaj</label>
                            <input class="form-control" placeholder="Ambalaj" name="packing">
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label>Fiyat</label>
                            <input class="form-control" placeholder="Fiyat" name="price">
                        </div>
                        <div class="form-group col-md-6">
                            <label>KDV Oranı</label>
                            <input class="form-control" placeholder="KDV Oranı" name="vat_rate">
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label>Ürün Anahtar Kelimeler SEO (En Fazla 255 Karakter Giriniz! Anahtar Kelimeleri ',' Virgül ile Ayırarak Giriniz!)</label>
                            <textarea class="form-control" name="product_keyw" cols="4" rows="5"></textarea>
                        </div>
                        <div class="form-group col-md-6">
                            <label>Ürün Açıklama SEO (En Fazla 255 Karakter Giriniz!)</label>
                            <textarea class="form-control" name="product_desc" cols="4" rows="5"></textarea>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary btn-md btn-outline">Kaydet</button>
                    <a href="<?php echo base_url("product"); ?>" class="btn btn-md btn-danger btn-outlinen">İptal</a>
                </form>
            </div><!-- .widget-body -->
        </div><!-- .widget -->
    </div><!-- END column -->
</div>