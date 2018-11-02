<?php if (empty($item_files)) { ?>
                <div class="alert alert-info text-center">
                    <h5 class="alert-title">Kayıt Bulunamadı</h5>
                    <p>Burada herhangi bir dosya bulunmamaktadır!</p>
                </div>
            <?php }else { ?>                       
                <table class="table table-bordered table-striped table-hover pictures_list">
                    <thead>
                        <th class="order"><i class="fa fa-reorder"></i></th>
                        <th class="w50">#id</th>
                        <th>Dosya</th>
                        <th>Dosya Adı</th>
                        <th>Durum</th>
                        <th>İşlem</th>
                    </thead>
                    <tbody class="sortable" data-url="<?php echo base_url("product/fileRankSetter"); ?>">
                        <?php foreach ($item_files as $file) { ?>
                        <tr id="ord-<?php echo $file->id; ?>">
                            <td class="order"><i class="fa fa-reorder"></i></td>
                            <td class="w50 text-center">#<?php echo $file->id; ?></td>
                            <td class="w100 text-center"><i class="fa fa-folder fa-2x"></i></td>
                            <td><?php echo $file->url; ?></td>
                            <td class="w100 text-center">
                                <input
                                    data-url="<?php echo base_url("product/fileIsActiveSetter/$file->id"); ?>" 
                                    class="isActive" 
                                    type="checkbox" 
                                    data-switchery 
                                    data-color="#10c469" 
                                    <?php echo ($file->isActive) ? "checked" : ""; ?> 
                                />
                            </td>
                            <td class="w100 text-center"><button data-url="<?php echo base_url("product/fileDelete/$file->id/$file->product_id"); ?>" class="btn btn-sm btn-danger btn-outline remove-btn btn-block"><i class="fa fa-trash"></i> Sil</button></td>
                        </tr>
                        <?php } ?>
                    </tbody>
                </table>
            <?php } ?>