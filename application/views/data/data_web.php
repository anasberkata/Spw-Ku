<div class="row">

    <!-- MENU -->
    <div class="col-12 col-lg-4">
        <div class="card mb-4">
            <div class="card-header pb-3">
                <div class="row">
                    <div class="col">
                        <h6>Backup Database</h6>
                    </div>
                </div>
            </div>
            <div class="card-body pb-2">
                <div class="row">
                    <div class="col-12">
                        <?= $this->session->flashdata('message'); ?>
                    </div>
                    <div class="col-12">
                        <?= form_error('lab', '<div class="alert alert-danger text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">', '</div>') ?>
                    </div>
                    <div class="col-12">
                        <p>Backup Database: Klik tombol dibawah untuk backup database.</p>
                        <a href="<?= base_url('data/database_backup') ?>" class="btn btn-primary w-100">
                            <i class="fa fa-download"> </i>
                            <span>Download</span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="col-12 col-lg-4">
        <div class="card mb-4">
            <div class="card-header pb-3">
                <div class="row">
                    <div class="col">
                        <h6>Restore Database</h6>
                    </div>
                </div>
            </div>
            <div class="card-body pb-2">
                <div class="row">
                    <div class="col-12">
                        <?= $this->session->flashdata('message'); ?>
                    </div>
                    <div class="col-12">
                        <?= form_error('lab', '<div class="alert alert-danger text-white text-sm mb-3 text-center w-75 mx-auto" role="alert">', '</div>') ?>
                    </div>
                    <div class="col-12">
                        <p>Restore Database: Pilih file database (.sql) untuk mengembalikan database.</p>
                        <form action="<?= base_url('data/database_backup') ?>" method="POST">
                            <div class="row">
                                <div class="col-12">
                                    <input type="file" class="form-control" placeholder="Pilih File" name="sql_file">
                                </div>
                                <div class="col-12">
                                    <button type="submit" class="btn btn-primary w-100 mt-3">
                                        <i class="fa fa-upload"> </i>
                                        <span>Upload</span>
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>