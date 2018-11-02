<?php $user = get_active_user(); ?>
<aside id="menubar" class="menubar light">
    <div class="app-user">
        <div class="media">
            <div class="media-left">
                <div class="avatar avatar-md avatar-circle">
                    <a href="javascript:void(0)"><img class="img-responsive" src="<?php echo base_url("assets"); ?>/assets/images/221.jpg" alt="<?php echo convertToSEO($user->full_name); ?>"/></a>
                </div><!-- .avatar -->
            </div>
            <div class="media-body">
                <div class="foldable">
                    <h5><a href="javascript:void(0)" class="username"><?php echo $user->full_name; ?></a></h5>
                    <ul>
                        <li class="dropdown">
                            <a href="javascript:void(0)" class="dropdown-toggle usertitle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <small>İşlemler</small>
                                <span class="caret"></span>
                            </a>
                            <ul class="dropdown-menu animated flipInY">
                                <li>
                                    <a class="text-color" href="<?php echo base_url(); ?>">
                                        <span class="m-r-xs"><i class="fa fa-home"></i></span>
                                        <span>Anasayfa</span>
                                    </a>
                                </li>
                                <li>
                                    <a class="text-color" href="<?php echo base_url("users/update_form/$user->id"); ?>">
                                        <span class="m-r-xs"><i class="fa fa-user"></i></span>
                                        <span>Profilim</span>
                                    </a>
                                </li>
                                <li role="separator" class="divider"></li>
                                <li>
                                    <a class="text-color" href="<?php echo base_url("logout"); ?>">
                                        <span class="m-r-xs"><i class="fa fa-power-off"></i></span>
                                        <span>Çıkış</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div><!-- .media-body -->
        </div><!-- .media -->
    </div><!-- .app-user -->
    <div class="menubar-scroll">
        <div class="menubar-scroll-inner">
            <ul class="app-menu">
                <li>
                    <a href="javascript:void(0)">
                        <i class="menu-icon zmdi zmdi-view-dashboard zmdi-hc-lg"></i>
                        <span class="menu-text">Dashboard</span>
                    </a>
                </li>
                <li>
                    <a href="<?php echo base_url("settings"); ?>">
                        <i class="menu-icon zmdi zmdi-settings zmdi-hc-lg"></i>
                        <span class="menu-text">Ayarlar</span>
                    </a>
                </li>
                <li>
                    <a href="<?php echo base_url("emailsettings"); ?>">
                        <i class="menu-icon zmdi zmdi-email zmdi-hc-lg"></i>
                        <span class="menu-text">E-Posta Ayarları</span>
                    </a>
                </li>
                <li>
                    <a href="<?php echo base_url("information_pages"); ?>">
                        <i class="menu-icon zmdi zmdi-apps zmdi-hc-lg"></i>
                        <span class="menu-text">Bilgi Sayfaları</span>
                    </a>
                </li>
                <!--<li>
                    <a href="<?php //echo base_url("galleries"); ?>">
                        <i class="menu-icon zmdi zmdi-apps zmdi-hc-lg"></i>
                        <span class="menu-text">Galeri İşlemleri</span>
                    </a>
                </li>-->
                <!--<li class="has-submenu">
                    <a href="javascript:void(0)" class="submenu-toggle">
                        <i class="menu-icon zmdi zmdi-apps zmdi-hc-lg"></i>
                        <span class="menu-text">Galeri İşlemleri</span>
                        <i class="menu-caret zmdi zmdi-hc-sm zmdi-chevron-right"></i>
                    </a>
                    <ul class="submenu">
                        <li><a href="<?php //echo base_url("galleries"); ?>"><span class="menu-text">Galeriler</span></a></li>
                        <li><a href="#"><span class="menu-text">Resim Galerisi</span></a></li>
                        <li><a href="#"><span class="menu-text">Video Galerisi</span></a></li>
                        <li><a href="#"><span class="menu-text">Dosya Galerisi</span></a></li>
                    </ul>
                </li>-->
                <li>
                    <a href="<?php echo base_url("slides"); ?>">
                        <i class="menu-icon zmdi zmdi-layers zmdi-hc-lg"></i>
                        <span class="menu-text">Slider</span>
                    </a>
                </li>
                <li>
                    <a href="<?php echo base_url("banners"); ?>">
                        <i class="menu-icon fa fa-link"></i>
                        <span class="menu-text">Reklam</span>
                    </a>
                </li>
                <!--<li>
                    <a href="<?php //echo base_url("product"); ?>">
                        <i class="menu-icon fa fa-cubes"></i>
                        <span class="menu-text">Ürünler</span>
                    </a>
                </li>-->
                <li class="has-submenu">
                    <a href="javascript:void(0)" class="submenu-toggle">
                        <i class="menu-icon fa fa-cubes"></i>
                        <span class="menu-text">Ürün İşlemleri</span>
                        <i class="menu-caret zmdi zmdi-hc-sm zmdi-chevron-right"></i>
                    </a>
                    <ul class="submenu">
                        <li>
                            <a href="<?php echo base_url("product_categories"); ?>">
                                <span class="menu-text">Ürün Kategorileri</span>
                            </a>
                        </li>
                        <li>
                            <a href="<?php echo base_url("product"); ?>">
                                <span class="menu-text">Ürünler</span>
                            </a>
                        </li>
                    </ul>
                </li>
                <!--<li>
                    <a href="<?php //echo base_url("services"); ?>">
                        <i class="menu-icon fa fa-th-list"></i>
                        <span class="menu-text">Hizmetlerimiz</span>
                    </a>
                </li>-->
                <li>
                    <a href="<?php echo base_url("questions"); ?>">
                        <i class="menu-icon fa fa-list"></i>
                        <span class="menu-text">Soru (SSS)</span>
                    </a>
                </li>
                <li>
                    <a href="<?php echo base_url("job_advertisements"); ?>">
                        <i class="menu-icon fa fa-thumbs-o-up"></i>
                        <span class="menu-text">İş İlanları</span>
                    </a>
                </li>
                <li>
                    <a href="<?php echo base_url("sector"); ?>">
                        <i class="menu-icon fa fa-indent"></i>
                        <span class="menu-text">Sektör</span>
                    </a>
                </li>
                <!--<li class="has-submenu">
                    <a href="javascript:void(0)" class="submenu-toggle">
                        <i class="menu-icon fa fa-asterisk"></i>
                        <span class="menu-text">Portfolyo İşlemleri</span>
                        <i class="menu-caret zmdi zmdi-hc-sm zmdi-chevron-right"></i>
                    </a>
                    <ul class="submenu">
                        <li>
                            <a href="<?php //echo base_url("portfolio_categories"); ?>">
                                <span class="menu-text">Portfolyo Kategorileri</span>
                            </a>
                        </li>
                        <li>
                            <a href="<?php //echo base_url("portfolio"); ?>">
                                <span class="menu-text">Portfolyo</span>
                            </a>
                        </li>
                    </ul>
                </li>-->
                <!--<li>
                    <a href="<?php //echo base_url("news"); ?>">
                        <i class="menu-icon fa fa-newspaper-o"></i>
                        <span class="menu-text">Haberler</span>
                    </a>
                </li>-->
                <!--<li>
                    <a href="<?php //echo base_url("courses"); ?>">
                        <i class="menu-icon fa fa-calendar"></i>
                        <span class="menu-text">Eğitimler</span>
                    </a>
                </li>-->
                <!--<li>
                    <a href="<?php //echo base_url("references"); ?>">
                        <i class="menu-icon zmdi zmdi-check zmdi-hc-lg"></i>
                        <span class="menu-text">Referanslar</span>
                    </a>
                </li>-->
                <li>
                    <a href="<?php echo base_url("brands"); ?>">
                        <i class="menu-icon zmdi zmdi-puzzle-piece zmdi-hc-lg"></i>
                        <span class="menu-text">Markalar</span>
                    </a>
                </li>
                <li>
                    <a href="<?php echo base_url("customers"); ?>">
                        <i class="menu-icon fa fa-users"></i>
                        <span class="menu-text">Müşteriler</span>
                    </a>
                </li>
                <li>
                    <a href="<?php echo base_url("orders"); ?>">
                        <i class="menu-icon fa fa-gift"></i>
                        <span class="menu-text">Siparişler</span>
                    </a>
                </li>
                <li>
                    <a href="<?php echo base_url("users"); ?>">
                        <i class="menu-icon fa fa-user-secret"></i>
                        <span class="menu-text">Kullanıcılar</span>
                    </a>
                </li>
                <li>
                    <a href="<?php echo base_url("job_application"); ?>">
                        <i class="menu-icon fa fa-bold"></i>
                        <span class="menu-text">İş Başvuruları</span>
                    </a>
                </li>
                <li>
                    <a href="<?php echo base_url("offer_requests"); ?>">
                        <i class="menu-icon fa fa-mortar-board"></i>
                        <span class="menu-text">Teklif İstekleri</span>
                    </a>
                </li>
                <li>
                    <a href="<?php echo base_url("sample_box"); ?>">
                        <i class="menu-icon fa fa-inbox"></i>
                        <span class="menu-text">Numune Kutusu Talepleri</span>
                    </a>
                </li>
                <!--<li>
                    <a href="javascript:void(0)">
                        <i class="menu-icon fa fa-users"></i>
                        <span class="menu-text">Aboneler</span>
                    </a>
                </li>-->
                <!--<li>
                    <a href="<?php //echo base_url("testimonials"); ?>">
                        <i class="menu-icon fa fa-comments"></i>
                        <span class="menu-text">Ziyaretçi Notları</span>
                    </a>
                </li>-->
                <li>
                    <a href="<?php echo base_url("popups"); ?>">
                        <i class="menu-icon zmdi zmdi-lamp zmdi-hc-lg"></i>
                        <span class="menu-text">Popup Hizmeti</span>
                    </a>
                </li>
                <li>
                    <a href="documentation.html">
                        <i class="menu-icon zmdi zmdi-view-web zmdi-hc-lg"></i>
                        <span class="menu-text">Ana Sayfa</span>
                    </a>
                </li>
            </ul><!-- .app-menu -->
        </div><!-- .menubar-scroll-inner -->
    </div><!-- .menubar-scroll -->
</aside>