<div class="row">
    <div class="col-md-12">
        <h4 class="m-b-lg">
            Yeni Reklam Ekle
        </h4>
    </div>
    <div class="col-md-12">
        <div class="widget">
            <div class="widget-body">
                <form action="<?php echo base_url("banners/save"); ?>" method="post" enctype="multipart/form-data">
                    <div class="form-group">
                        <label>Başlık</label>
                        <input class="form-control" placeholder="Başlık" name="title">
                        <?php if(isset($form_error)){ ?>
                            <small class="pull-right input-form-error"> <?php echo form_error("title"); ?></small>
                        <?php } ?>
                    </div>
                    <div class="form-group">
                        <label>Açıklama</label>
                        <textarea name="description" class="m-0" data-plugin="summernote" data-options="{height: 250}"></textarea>
                    </div>
                    <div class="form-group image_upload_container">
                        <label>Görsel Seçiniz</label>
                        <input type="file" name="img_url" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Kampanya Url</label>
                        <input class="form-control" placeholder="Kampanya Url" name="campaign_url">
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <label for="datetimepicker1">Başlangıç Tarihi</label>
                            <input type="hidden" name="starting_date" id="datetimepicker1" data-plugin="datetimepicker" data-options="{ inline: true, viewMode: 'days', format : 'YYYY-MM-DD HH:mm:ss' }"/>
                        </div>
                        <div class="col-md-4 col-md-offset-1">
                            <label for="datetimepicker1">Bitiş Tarihi</label>
                            <input type="hidden" name="end_date" id="datetimepicker1" data-plugin="datetimepicker" data-options="{ inline: true, viewMode: 'days', format : 'YYYY-MM-DD HH:mm:ss' }"/>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary btn-md btn-outline">Kaydet</button>
                    <a href="<?php echo base_url("slides"); ?>" class="btn btn-md btn-danger btn-outline">İptal</a>
                </form>
            </div>
        </div>
    </div>
</div>