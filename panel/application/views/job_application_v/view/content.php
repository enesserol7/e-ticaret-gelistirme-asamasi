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
                            <label>Başvuru Tarihi</label>
                            <input class="form-control" placeholder="Başvuru Tarihi" disabled name="application_date" value="<?php echo $item->application_date; ?>">
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label>Ön Yazı</label>
                            <textarea disabled name="adres" class="m-0 form-control" rows="5" cols="4"><?php echo $item->cover_letter; ?></textarea>
                        </div>
                        <div class="form-group col-md-6">
                            <label>CV</label>
                            <a target="_blank" href="http://localhost:9090/bidolu/<?php echo $item->cv; ?>" download="Bidolu-<?php echo $item->cv; ?>" class="btn btn-animated btn-default">İndir<i class="pl-10 fa fa-download"></i></a>
                        </div>
                    </div>
                    <a href="<?php echo base_url("job_application"); ?>" class="btn btn-md btn-danger btn-outline">Geri Dön</a>
                </form>
            </div><!-- .widget-body -->
        </div><!-- .widget -->
    </div><!-- END column -->
</div>