<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">Tambah Penjualan</h1>
        </div>
        <!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item">
              <a href="#">Penjualan</a>
            </li>
            <li class="breadcrumb-item active">Tambah Penjualan</li>
          </ol>
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </div>
    <!-- /.container-fluid -->
  </div>
  <!-- /.content-header -->

  <!-- Main content -->
  <section class="content">
    <div class="container-fluid">
      <div class="card-header">
        <h5>Input Penjualan</h5>
      </div>
      <div class="card-body">
        <!-- form cari produk -->
        <div class="form-row">
        <div class="form-group col-sm-2">
            <form action="">
                <input type="number" name="jumlah" class="form-control" value="1" placeholder="Jumlah...">
                </div>
                <div class="form-group col-sm-4">
                <input type="text" name="barcode" class="form-control" placeholder="Barcode...">
            </div>
            <div class="form-group col-sm-3">
            <button class="btn btn-block btn-info" type="submit"><i class="fas fa-barcode"></i> Cari By Barcode</button>
            </form>
            </div>
            <div class="form-group col-sm-3">
            <button class="btn btn-block btn-success" type="button"><i class="fas fa-tags"></i> Cari By Nama</button>
            </div>
        </div>
        <!-- tutup -->
        <table class="table table-bordered">
            <thead>
                <tr class="bg-dark">
                    <th>Hps</th>
                    <th>No</th>
                    <th>Nama Produk</th>
                    <th>Harga</th>
                    <th>Jumlah</th>
                    <th>Subtotal</th>
                </tr>
                </thead>
                <tr>
                    <td><a href="#"><i class="fas fa-trash"></i></a></td>
                    <td>1</td>
                    <td>Coca Cola</td>
                    <td align="right">7,000</td>
                    <td align="right">2</td>
                    <td align="right">14,000</td>
                </tr>
                <tr class="text-bold">
                    <td colspan="4">TOTAL</td>
                    <td align="right">2</td>
                    <td align="right">14,000</td>
                </tr>
        </table>
        <button class="btn btn-block bg-dark mt-3"><i class="fas fa-save"></i> Simpan Penjualan</button>
      </div>
    </div>
        </div>
    <!-- /.container-fluid -->
  </section>
  <!-- /.content -->
</div>
<!-- /.content-wrapper -->

<!-- Modal tambah periode -->
<div class="modal fade" id="modaltambah" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Tambah User</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="aksi/user.php" method="post">
          <input type="hidden" name="aksi" value="tambah">

          <label for="nama">Nama</label>
          <input type="text" name="nama" class="form-control" required="required">

          <label for="username">Username</label>
          <input type="text" name="username" class="form-control" required="required">

          <label for="password">Password</label>
          <input type="password" name="password" class="form-control" required="required">

          <label for="hak_akses" class="mt-3">Hak Akses</label>
          <select class ="form-control" id="hak_akses" name="hak_akses" require >
            <option value="1">1</option>
            <option value="2">2</option>
          </select>
          <br>
          <button type="submit" class="btn btn-block bg-purple">
            <i class="fas fa-save"></i>
            Simpan
          </button>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>