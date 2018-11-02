<div class="row">
  <div class="col-md-12">
    <h4 class="m-b-lg">
     Ürün Fiyat Listesi
     <a href="<?php echo base_url("product/price_form/$item->id"); ?>" class="pull-right btn btn-outline btn-primary btn-sm"><i class="fa fa-plus"></i>Yeni Ekle</a>
   </h4>
 </div><!-- END column -->
 <div class="col-md-12">
  <div class="widget p-lg">
    <table class="table table-hover table-striped table-bordered content-container">
      <thead>
        <th class="order"><i class="fa fa-reorder"></i></th>
        <th class="w50">#id</th>
        <th>Ürün Adı</th>
        <th>Fiyat Başlık</th>
        <th>Fiyat</th>
        <th>Durum</th>
        <th class="text-center w300">İşlem</th>
      </thead>
      <tbody class="sortable" data-url="<?php echo base_url("product/priceRankSetter"); ?>">
       <?php foreach ($items as $item) { ?>
        <tr id="ord-<?php echo $item->id; ?>">
          <?php $productName = getProductName($item->product_id); ?>
          <td class="order"><i class="fa fa-reorder"></i></td>
          <td class="w50 text-center">#<?php echo $item->id; ?></td>
          <td><?php echo $productName; ?></td>
          <td><?php echo $item->price_title; ?></td>
          <td><?php echo $item->price; ?></td>
          <td class="text-center">
            <input
            data-url="<?php echo base_url("product/priceIsActiveSetter/$item->id"); ?>" 
            class="isActive" 
            type="checkbox" 
            data-switchery 
            data-color="#10c469" 
            <?php echo ($item->isActive) ? "checked" : ""; ?> 
            />
          </td>
          <td class="text-center w300">
           <button data-url="<?php echo base_url("product/price_delete/$item->id/$item->product_id"); ?>" class="btn btn-sm btn-danger btn-outline remove-btn"><i class="fa fa-trash"></i> Sil</button>
           <a href="<?php echo base_url("product/price_update_form/$item->id/$item->product_id"); ?>" class="btn btn-sm btn-info btn-outline"><i class="fa fa-pencil-square-o"></i> Düzenle</a>
         </td>
       </tr>
     <?php } ?>                    
   </tbody>
 </table>
</div><!-- .widget -->
</div><!-- END column -->
</div>