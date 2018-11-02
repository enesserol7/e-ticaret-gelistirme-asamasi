<div class="row">
    <div class="col-md-12">
        <h4 class="m-b-lg">
            <?php echo "<b>$item->title</b> kaydını düzenliyorsunuz"; ?>
        </h4>
    </div>
    <div class="col-md-12">
        <div class="widget">
            <div class="widget-body">
                <form action="<?php echo base_url("job_advertisements/update/$item->id"); ?>" method="post" enctype="multipart/form-data">
                    <div class="form-group">
                        <label>İş Başlığı</label>
                        <input class="form-control" placeholder="İş Başlığı" name="title" value="<?php echo $item->title; ?>">
                        <?php if(isset($form_error)){ ?>
                            <small class="pull-right input-form-error"> <?php echo form_error("title"); ?></small>
                        <?php } ?>
                    </div>
                    <div class="form-group">
                        <label>Açıklama</label>
                        <textarea name="description" class="m-0" data-plugin="summernote" data-options="{height: 250}"><?php echo $item->description; ?></textarea>
                    </div>
                    <div class="row">
                        <div class="col-md-1 image_upload_container">
                            <img src="<?php echo get_picture($viewFolder, $item->img_url,"1920x1208"); ?>" alt="" class="img-responsive">
                        </div>
                        <div class="col-md-9 form-group image_upload_container">
                            <label>Görsel Seçiniz</label>
                            <input type="file" name="img_url" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Aranan Özellikler</label>
                        <textarea name="sought_after_features" class="m-0" data-plugin="summernote" data-options="{height: 250}"><?php echo $item->sought_after_features; ?></textarea>
                    </div>                    
                    <div class="form-group">
                        <label>Departman</label>
                        <input class="form-control" placeholder="Departman" value="<?php echo $item->department; ?>" name="department">
                        <?php if(isset($form_error)){ ?>
                            <small class="pull-right input-form-error"> <?php echo form_error("address"); ?></small>
                        <?php } ?>
                    </div>
                    <div class="form-group">
                        <label>İş Adresi</label>
                        <input class="form-control" placeholder="İş Adresi" value="<?php echo $item->address; ?>" name="address">
                        <?php if(isset($form_error)){ ?>
                            <small class="pull-right input-form-error"> <?php echo form_error("department"); ?></small>
                        <?php } ?>
                    </div> 
                    <div class="form-group">
                        <label>Anahtar Kelime (',' Virgül ile Ayırarak Giriniz!)</label>
                        <textarea name="keyw" class="form-control"><?php echo $item->keyw; ?></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary btn-md btn-outline">Güncelle</button>
                    <a href="<?php echo base_url("job_advertisements"); ?>" class="btn btn-md btn-danger btn-outline">İptal</a>
                </form>
            </div>
        </div>
    </div>
</div>