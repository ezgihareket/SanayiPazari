 <aside class="main-sidebar">
  <!-- sidebar: style can be found in sidebar.less -->
  <section class="sidebar">
    <!-- Sidebar user panel -->
    <div class="user-panel">
      <div class="pull-left image">
        <img src="../images/admin3.png" class="img-circle" alt="User Image">
      </div>
      <div class="pull-left info">
        <p><?php echo $_SESSION['email'] ?></p>
       
      </div>
    </div>
    <!-- sidebar menu: : style can be found in sidebar.less -->
    <ul class="sidebar-menu" data-widget="tree">
      <li class="header">MAIN NAVIGATION</li>
      <li>
        <a href="adminindex.php">
          <i class="fa fa-dashboard"></i> <span>Anasayfa</span>
        </a>
      </li>
      <li>
        <a href="categoryshow.php">
          <i class="fa fa-th"></i> <span>Kategori</span>
        </a>
      </li>
      <li>
        <a href="productsshow.php">
          <i class="fa fa-th"></i> <span>Ürünler</span>
        </a>
      </li>

      <li>
        <a href="orders.php">
          <i class="fa fa-th"></i> <span>Siparişler</span>
        </a>
      </li>
      <li>
        <a href="offers.php">
          <i class="fa fa-th"></i> <span>Teklifler</span>
        </a>
      </li>
      <li>
        <a href="adminpartials/logout.php">
          <i class="fa fa-circle-o text-red"></i> <span>Çıkış Yap</span>
        </a>
      </li>
    </li>

  </ul>
</section>
<!-- /.sidebar -->
</aside>