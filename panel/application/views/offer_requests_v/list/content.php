<div class="row">
    <div class="col-md-12">
        <h4 class="m-b-lg">
            Teklif İstekleri Listesi
        </h4>
    </div>
    <div class="col-md-12">
        <div class="widget p-lg">
            <?php if(empty($items)) { ?>
                <div class="alert alert-info text-center">
                    <p>Burada herhangi bir veri bulunmamaktadır.</p>
                </div>
            <?php } else { ?>
                <table class="table table-hover table-striped table-bordered content-container">
                    <thead>
                        <th class="w50">#id</th>
                        <th>İsim</th>
                        <th>E-Posta</th>
                        <th>Telefon</th>
                        <th>Teklif İstenen Ürün</th>
                        <th>İşlem</th>
                    </thead>
                    <tbody>
                        <?php foreach($items as $item) { ?>
                            <tr>
                                <td class="w50 text-center">#<?php echo $item->id; ?></td>
                                <td class="text-center"><?php echo $item->name; ?></td>
                                <td class="text-center"><?php echo $item->email; ?></td>
                                <td class="text-center"><?php echo $item->phone; ?></td>
                                <td class="text-center"><?php echo $item->offer_requested_product; ?></td>
                                <td class="text-center w250">
                                    <button data-url="<?php echo base_url("offer_requests/delete/$item->id"); ?>" class="btn btn-sm btn-danger btn-outline remove-btn"><i class="fa fa-trash"></i> Sil</button>
                                    <a href="<?php echo base_url("offer_requests/view_form/$item->id"); ?>" class="btn btn-sm btn-info btn-outline"><i class="fa fa-pencil-square-o"></i> Görüntüle</a>
                                </td>
                            </tr>
                        <?php } ?>
                    </tbody>
                </table>
            <?php } ?>
        </div>
    </div>
</div>