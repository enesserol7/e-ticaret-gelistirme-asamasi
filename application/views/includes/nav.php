<?php $settings = get_settings(); ?>
<?php $customer = get_active_user(); ?>
<nav class="navbar navbar-expand-sm bg-light navbar-dark border nav-h">
	<ul class="navbar-nav navmobilelogo">
		<li class="nav-item active">
			<a class="nav-link text-dark" href="<?php echo base_url(); ?>"><img src="<?php echo get_picture("settings_v", $settings->logo, "168x57"); ?>" class="img img-responsive"></a>
		</li>
	</ul>
	<ul class=""></ul>
	<ul class="ml-sm-5"></ul>
	<ul class="navbar-nav ml-auto form-w">
		<form class="form-inline border border-success rounded" action="<?php echo base_url(); ?>">
			<input class="form-control form-w-input" type="text" placeholder="Ara">
			<button class="btn btn-success btn-block form-w-button" type="submit">Ara</button>
		</form>
	</ul>
	<ul class="navbar-nav ml-auto">
		<li class="nav-item">
			<?php if ($customer != "") { ?>
				<a class="nav-link text-dark nav-text-size" href="<?php echo base_url("hesabim"); ?>"><i class="fa fa-user-circle"></i> <?php echo $customer->name; ?></a>
			<?php } else{ ?>
				<a class="nav-link text-dark nav-text-size" href="<?php echo base_url("giris-yap"); ?>"><i class="fa fa-user-circle"></i> Giriş Yap</a>
			<?php } ?>
		</li>
		<li class="nav-item">
			<a class="nav-link text-dark nav-text-size" href="<?php echo base_url("sepetim"); ?>"><i class="fa fa-shopping-bag"></i> Sepetim</a>
		</li>
	</ul>
</nav>