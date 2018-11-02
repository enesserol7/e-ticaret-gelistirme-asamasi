<div role="tabpanel" class="tab-pane fade" id="tab-5">
    <div class="row">
        <div class="form-group col-md-8">
            <label>E-posta Adresiniz</label>
            <input class="form-control" placeholder="Şirketinize ait e-posta adresi" name="email" value="<?php echo isset($form_error) ? set_value("email") : ""; ?>">
            <?php if (isset($form_error)) { ?>
                <small
                class="pull-right input-form-error"> <?php echo form_error("email"); ?></small>
            <?php } ?>
        </div>
    </div>
    <div class="row">
        <div class="form-group col-md-4">
            <label>Facebook (Sadece Kullanıcı Adı Giriniz...)</label>
            <input class="form-control" placeholder="Facebook Adresiniz" name="facebook" value="<?php echo isset($form_error) ? set_value("facebook") : ""; ?>">
        </div>
        <div class="form-group col-md-4">
            <label>Twitter (Sadece Kullanıcı Adı Giriniz...)</label>
            <input class="form-control" placeholder="Twitter Adresiniz" name="twitter" value="<?php echo isset($form_error) ? set_value("twitter") : ""; ?>">
        </div>
    </div>
    <div class="row">
        <div class="form-group col-md-4">
            <label>Instagram (Sadece Kullanıcı Adı Giriniz...)</label>
            <input class="form-control" placeholder="Instagram Adresiniz" name="instagram" value="<?php echo isset($form_error) ? set_value("instagram") : ""; ?>">
        </div>
        <div class="form-group col-md-4">
            <label>Linkedin (Sadece Kullanıcı Adı Giriniz...)</label>
            <input class="form-control" placeholder="Linkedin Adresiniz" name="linkedin" value="<?php echo isset($form_error) ? set_value("linkedin") : ""; ?>">
        </div>
    </div>
    <div class="row">
        <div class="form-group col-md-4">
            <label>Youtube</label>
            <input class="form-control" placeholder="Youtube Adresiniz" name="youtube" value="<?php echo isset($form_error) ? set_value("youtube") : ""; ?>">
        </div>
    </div>
</div>