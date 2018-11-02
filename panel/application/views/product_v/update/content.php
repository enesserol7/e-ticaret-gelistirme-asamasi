<div class="row">
    <div class="col-md-12">
        <h4 class="m-b-lg">
        	<?php echo "<b>$item->title</b> kaydını düzenliyorsunuz" ?>
        </h4>
    </div><!-- END column -->
    <div class="col-md-12">
        <div class="widget">
            <hr class="widget-separator">
            <div class="widget-body">                        
                <form action="<?php echo base_url("product/update/$item->id"); ?>" method="post">
                    <div class="form-group">
                        <label>Ürün Adı</label>
                        <input class="form-control" placeholder="Ürün Adı" name="title" value="<?php echo $item->title; ?>">
                        <?php if (isset($form_error)) { ?>
                            <small class="input-form-error pull-right"><?php echo form_error("title"); ?></small>
                        <?php } ?>
                    </div>
                    <div class="form-group">
                        <label>Açıklama</label>
                        <textarea name="description" class="m-0" data-plugin="summernote" data-options="{height: 250}"><?php echo $item->description; ?></textarea>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label>Kategori</label>
                            <select class="form-control" name="category_id">
                                <?php foreach ($categories as $category) { ?>
                                    <?php $category_id = isset($form_error) ? set_value("category_id") : $item->category_id; ?>
                                    <option <?php echo ($category->id === $category_id) ? "selected" : ""; ?> value="<?php echo $category->id; ?>"><?php echo $category->title; ?></option>
                                <?php } ?>
                            </select>
                        </div>
                        <div class="form-group col-md-6">
                            <label>Ebat</label>
                            <input class="form-control" placeholder="Ebat" name="dimensions" value="<?php echo $item->dimensions; ?>">
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label>Kesim</label>
                            <input class="form-control" placeholder="Kesim" name="cut" value="<?php echo $item->cut; ?>">
                        </div>
                        <div class="form-group col-md-6">
                            <label>Kağıt Türü</label>
                            <input class="form-control" placeholder="Kağıt Türü" name="paper_type" value="<?php echo $item->paper_type; ?>">
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label>Renk</label>
                            <input class="form-control" placeholder="Renk" name="color" value="<?php echo $item->color; ?>">
                        </div>
                        <div class="form-group col-md-6">
                            <label>Üretim Süresi</label>
                            <input class="form-control" placeholder="Üretim Süresi" name="production_time" value="<?php echo $item->production_time; ?>">
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label>Uygulama</label>
                            <input class="form-control" placeholder="Uygulama" name="application" value="<?php echo $item->application; ?>">
                        </div>
                        <div class="form-group col-md-6">
                            <label>Lak</label>
                            <input class="form-control" placeholder="Lak" name="lac" value="<?php echo $item->lac; ?>">
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label>Laminasyon</label>
                            <input class="form-control" placeholder="Laminasyon" name="lamination" value="<?php echo $item->lamination; ?>">
                        </div>
                        <div class="form-group col-md-6">
                            <label>Kaplama</label>
                            <input class="form-control" placeholder="Kaplama" name="covering" value="<?php echo $item->covering; ?>">
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label>Malzeme</label>
                            <input class="form-control" placeholder="Malzeme" name="metarial" value="<?php echo $item->metarial; ?>">
                        </div>
                        <div class="form-group col-md-6">
                            <label>Kalınlık</label>
                            <input class="form-control" placeholder="Kalınlık" name="thickness" value="<?php echo $item->thickness; ?>">
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label>Kumaş</label>
                            <input class="form-control" placeholder="Kumaş" name="fabric" value="<?php echo $item->fabric; ?>">
                        </div>
                        <div class="form-group col-md-6">
                            <label>Taşıyıcı Malzeme</label>
                            <input class="form-control" placeholder="Taşıyıcı Malzeme" name="carrier_metarial" value="<?php echo $item->carrier_metarial; ?>">
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label>Sabitleyici Malzeme</label>
                            <input class="form-control" placeholder="Sabitleyici Malzeme" name="fixing_metarial" value="<?php echo $item->fixing_metarial; ?>">
                        </div>
                        <div class="form-group col-md-6">
                            <label>Bayrak Tipi</label>
                            <input class="form-control" placeholder="Bayrak Tipi" name="flag_type" value="<?php echo $item->flag_type; ?>">
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label>Zarf Yapışkanı</label>
                            <input class="form-control" placeholder="Zarf Yapışkanı" name="envelope_adhesive" value="<?php echo $item->envelope_adhesive; ?>">
                        </div>
                        <div class="form-group col-md-6">
                            <label>Zarf Penceresi</label>
                            <input class="form-control" placeholder="Zarf Penceresi" name="envelope_window" value="<?php echo $item->envelope_window; ?>">
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label>Yaprak Sayısı</label>
                            <input class="form-control" placeholder="Yaprak Sayısı" name="number_of_leaves" value="<?php echo $item->number_of_leaves; ?>">
                        </div>
                        <div class="form-group col-md-6">
                            <label>Ambalaj</label>
                            <input class="form-control" placeholder="Ambalaj" name="packing" value="<?php echo $item->packing; ?>">
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label>Fiyat</label>
                            <input class="form-control" placeholder="Fiyat" name="price" value="<?php echo $item->price; ?>">
                        </div>
                        <div class="form-group col-md-6">
                            <label>KDV Oranı</label>
                            <input class="form-control" placeholder="KDV Oranı" name="vat_rate" value="<?php echo $item->vat_rate; ?>">
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label>Ürün Anahtar Kelimeler SEO (En Fazla 255 Karakter Giriniz! Anahtar Kelimeleri ',' Virgül ile Ayırarak Giriniz!)</label>
                            <textarea class="form-control" name="product_keyw" cols="4" rows="5"><?php echo $item->product_keyw; ?></textarea>
                        </div>
                        <div class="form-group col-md-6">
                            <label>Ürün Açıklama SEO (En Fazla 255 Karakter Giriniz!)</label>
                            <textarea class="form-control" name="product_desc" cols="4" rows="5"><?php echo $item->product_desc; ?></textarea>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary btn-md btn-outline">Güncelle</button>
                    <a href="<?php echo base_url("product"); ?>" class="btn btn-md btn-danger btn-outlinen">İptal</a>
                </form>
            </div><!-- .widget-body -->
        </div><!-- .widget -->
    </div><!-- END column -->
</div>