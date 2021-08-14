<!DOCTYPE html>
<html>

<?php
include ('adminpartials/session.php');
include ('adminpartials/head.php');
?>
<body class="hold-transition skin-blue sidebar-mini">
  <div class="wrapper">

   <?php
   include ('adminpartials/header.php');
   include ('adminpartials/aside.php');
   ?>

   <!-- Left side column. contains the logo and sidebar -->


   <!-- Content Wrapper. Contains page content -->
   <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Dashboard
        <small>Control panel</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Anasayfa</a></li>
        <li class="active">Dashboard</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <h2 class="title text-center">ÜRÜNLER</h2>

      <div class="container" style="padding: 2px 16px;">
     <div class="row">
        <?php
        include ('../partials/connect.php');
        $sql="Select * from products";
        $results=$connect->query($sql);

        while($final=$results->fetch_assoc()){ ?>
         <div class="col-md-4">
         <div class="card" style="box-shadow:  0 4px 8px 0 rgba(0,0,0,0.2); transition: 0.3s; border-radius: 5px; padding: 10px; max-width: 350px" >
          <img src="../<?php echo $final['picture'] ?>" alt="No File" style="height: 300px; width: 100%; border-radius: 5px 5px 0 0;">
           <div class="container">
           <a href="proshow.php?pro_id=<?php echo $final['id']?>">
            <h4>ID : <?php echo $final['id']?> <br>ISIM : <?php echo $final['name']?></h4><br>
          </a>
          </div>
        </div>
</div>
      <?php }
      ?>
</div>
    </div>




      <!-- Small boxes (Stat box) 
      <div class="row">

        <div class="col-sm-6">


          <?php
          include ('../partials/connect.php');
          $sql="Select * from products";
          $results=$connect->query($sql);

          while($final=$results->fetch_assoc()){ ?>


            <a href="proshow.php?pro_id=<?php echo $final['id']?>">
              <h3><?php echo $final['id']?>: <?php echo $final['name']?></h3><br>
            </a>
            <img src="../<?php echo $final['picture'] ?>" alt="No File" style="height: 300px; width: 300px;">
            <hr>


          <?php }
          ?>

        </div>

        <div class="col-sm-6">

        </div>  
      </div>-->


    </section>
    <!-- right col -->
  </div>
  <!-- /.row (main row) -->

</section>
<!-- /.content -->
</div>
<!-- /.content-wrapper -->
<?php
include ('adminpartials/footer.php');
?>
</body>
</html>



