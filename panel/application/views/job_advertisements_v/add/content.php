<div class="row">
    <div class="col-md-12">
        <h4 class="m-b-lg">
            Yeni İş İlan Ekle
        </h4>
    </div>
    <div class="col-md-12">
        <div class="widget">
            <div class="widget-body">
                <form action="<?php echo base_url("job_advertisements/save"); ?>" method="post" enctype="multipart/form-data">
                    <div class="form-group">
                        <label>İş Başlığı</label>
                        <input class="form-control" placeholder="İş Başlığı" name="title">
                        <?php if(isset($form_error)){ ?>
                            <small class="pull-right input-form-error"> <?php echo form_error("title"); ?></small>
                        <?php } ?>
                    </div>
                    <div class="form-group">
                        <label>İş Açıklaması</label>
                        <textarea name="description" class="m-0" data-plugin="summernote" data-options="{height: 250}"></textarea>
                    </div>
                    <div class="form-group image_upload_container">
                        <label>Görsel Seçiniz</label>
                        <input type="file" name="img_url" class="form-control">
                    </div>
                     <div class="form-group">
                        <label>Aranan Özellikler</label>
                        <textarea name="sought_after_features" class="m-0" data-plugin="summernote" data-options="{height: 250}"></textarea>
                    </div>                    
                   <div class="form-group">
                        <label>Departman</label>
                        <input class="form-control" placeholder="Departman" name="department">
                        <?php if(isset($form_error)){ ?>
                            <small class="pull-right input-form-error"> <?php echo form_error("address"); ?></small>
                        <?php } ?>
                    </div>
                    <div class="form-group">
                        <label>İş Adresi</label>
                        <input class="form-control" placeholder="İş Adresi" name="address">
                        <?php if(isset($form_error)){ ?>
                            <small class="pull-right input-form-error"> <?php echo form_error("department"); ?></small>
                        <?php } ?>
                    </div>
                    <div class="form-group">
                        <label>Anahtar Kelime (',' Virgül ile Ayırarak Giriniz!)</label>
                        <textarea name="keyw" class="form-control"></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary btn-md btn-outline">Kaydet</button>
                    <a href="<?php echo base_url("job_advertisements"); ?>" class="btn btn-md btn-danger btn-outline">İptal</a>
                </form>
            </div>
        </div>
    </div>
</div>