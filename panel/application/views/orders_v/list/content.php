<div class="row">
    <div class="col-md-12">
        <h4 class="m-b-lg">
            Sipariş Listesi
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
                        <th>Müşteri ID</th>
                        <th>Ürün İD</th>
                        <th>Birim Fiyat</th>
                        <th>Toplam Fiyat</th>
                        <th>KDV</th>
                        <th>Durum</th>
                        <th>İşlem</th>
                    </thead>
                    <tbody>
                        <?php foreach($items as $item) { ?>
                            <tr>
                                <td class="w50 text-center">#<?php echo $item->id; ?></td>
                                <td class="text-center"><?php echo $item->customer_id; ?></td>
                                <td class="text-center"><?php echo $item->product_id; ?></td>
                                <td class="text-center"><?php echo $item->unit_price; ?></td>
                                <td class="text-center"><?php echo $item->price; ?></td>
                                <td class="text-center"><?php echo $item->kdv; ?></td>
                                <td class="text-center"><?php echo $item->status; ?></td>
                                <td class="text-center w250">
                                    <button data-url="<?php echo base_url("orders/delete/$item->id"); ?>" class="btn btn-sm btn-danger btn-outline remove-btn"><i class="fa fa-trash"></i> Sil</button>
                                    <a href="<?php echo base_url("orders/view_form/$item->id"); ?>" class="btn btn-sm btn-info btn-outline"><i class="fa fa-pencil-square-o"></i> Görüntüle</a>
                                </td>
                            </tr>
                        <?php } ?>
                    </tbody>
                </table>
            <?php } ?>
        </div>
    </div>
</div>