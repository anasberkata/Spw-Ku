<div class="row">

    <!-- ROLE -->
    <div class="col-12 col-lg-8">
        <div class="card mb-4">
            <div class="card-header pb-0">
                <div class="row">
                    <div class="col">
                        <h6>Role : <?= $role->role; ?></h6>
                    </div>
                    <div class="col">
                        <a class="btn btn-dark btn-sm mb-3 float-end" href="<?= base_url('admin/role'); ?>">
                            Kembali
                        </a>
                    </div>
                </div>
            </div>
            <div class="card-body px-0 pt-0 pb-2">
                <div class="row">
                    <div class="col-12">
                        <?= $this->session->flashdata('message'); ?>
                    </div>
                    <div class="col-12">
                        <div class="table-responsive p-0 mb-3">
                            <table class="table align-items-center mb-0">
                                <thead>
                                    <tr>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">No.</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Menu</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Access</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php $i = 1; ?>
                                    <?php foreach ($menu->result() as $m) : ?>
                                        <tr>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3"><?= $i; ?></p>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0 px-3"><?= $m->menu; ?></p>
                                            </td>
                                            <td class="align-middle text-center text-sm">
                                                <div class="form-check">
                                                    <input class="form-check-input mx-auto" type="checkbox" <?= check_access($role->id_role, $m->id_user_menu); ?> data-role="<?= $role->id_role; ?>" data-menu="<?= $m->id_user_menu; ?>">
                                                </div>
                                            </td>
                                        </tr>
                                        <?php $i++; ?>
                                    <?php endforeach; ?>
                                </tbody>
                            </table>

                            <script>
                                // $('.custom-file-input').on('change', function() {
                                //     let fileName = $(this).val().split('\\').pop();
                                //     $(this).next('.custom-file-label').addClass("selected").html(fileName);
                                // });

                                $('.form-check-input').on('click', function() {
                                    const menuId = $(this).data('menu');
                                    const roleId = $(this).data('role');

                                    $.ajax({
                                        url: "<?= base_url('admin/changeAccess'); ?>",
                                        type: 'post',
                                        data: {
                                            menuId: menuId,
                                            roleId: roleId
                                        },
                                        success: function() {
                                            document.location.href = "<?= base_url('admin/roleAccess/'); ?>" + roleId;
                                        }
                                    });
                                });
                            </script>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>