<div class="min-height-300 bg-primary position-absolute w-100"></div>
<aside class="sidenav bg-white navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-4 " id="sidenav-main">
    <div class="sidenav-header">
        <i class="fas fa-times p-3 cursor-pointer text-secondary opacity-5 position-absolute end-0 top-0 d-none d-xl-none" aria-hidden="true" id="iconSidenav"></i>
        <a class="navbar-brand m-0" href=" https://demos.creative-tim.com/argon-dashboard/pages/dashboard.html " target="_blank">
            <img src="<?= base_url('assets/') ?>img/logos/logo-smkdaku.png" class="navbar-brand-img h-100" alt="main_logo">
            <span class="ms-1 font-weight-bold">SPW SMKN 2 Cilaku</span>
        </a>
    </div>
    <hr class="horizontal dark mt-0">
    <div class="collapse navbar-collapse  w-auto " id="sidenav-collapse-main">
        <ul class="navbar-nav">

            <li class="nav-item">
                <a class="nav-link" href="<?= base_url('dashboard'); ?>">
                    <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
                        <i class="ni ni-tv-2 text-primary text-sm opacity-10"></i>
                    </div>
                    <span class="nav-link-text ms-1">Dashboard</span>
                </a>
            </li>

            <!-- QUERY MENU -->
            <?php
            $role_id = $this->session->userdata('role_id');
            $queryMenu = "SELECT `tbl_user_menu`.`id_user_menu`, `menu`
                            FROM `tbl_user_menu` JOIN `tbl_user_access_menu`
                              ON `tbl_user_menu`.`id_user_menu` = `tbl_user_access_menu`.`menu_id`
                           WHERE `tbl_user_access_menu`.`role_id` = $role_id
                        ORDER BY `tbl_user_access_menu`.`menu_id` ASC
                        ";
            $menu = $this->db->query($queryMenu)->result_array();
            ?>

            <!-- LOOPING MENU -->
            <?php foreach ($menu as $m) : ?>
                <li class="nav-item mt-3">
                    <h6 class="ps-4 ms-2 text-uppercase text-xs font-weight-bolder opacity-6"><?= $m['menu']; ?></h6>
                </li>

                <!-- SIAPKAN SUB-MENU SESUAI MENU -->
                <?php
                $menuId = $m['id_user_menu'];
                $querySubMenu = "SELECT *
                               FROM `tbl_user_submenu` JOIN `tbl_user_menu` 
                                 ON `tbl_user_submenu`.`menu_id` = `tbl_user_menu`.`id_user_menu`
                              WHERE `tbl_user_submenu`.`menu_id` = $menuId
                                AND `tbl_user_submenu`.`is_active` = 1
                        ";
                $subMenu = $this->db->query($querySubMenu)->result_array();
                ?>

                <?php foreach ($subMenu as $sm) : ?>
                    <li class="nav-item">
                        <?php if ($title == $sm['title']) : ?>
                            <a class="nav-link active" href="<?= base_url($sm['url']); ?>">
                                <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center"><i class="<?= $sm['icon']; ?> text-sm opacity-10"></i></div>
                                <span class="nav-link-text ms-1"><?= $sm['title']; ?></span>
                            </a>
                        <?php else : ?>
                            <a class="nav-link" href="<?= base_url($sm['url']); ?>">
                                <div class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center"><i class="<?= $sm['icon']; ?> text-sm opacity-10"></i></div>
                                <span class="nav-link-text ms-1"><?= $sm['title']; ?></span>
                            </a>
                        <?php endif; ?>
                    </li>
                <?php endforeach; ?>

                <hr class="sidebar-divider mt-3">

            <?php endforeach; ?>
        </ul>
    </div>
    <div class="sidenav-footer mx-3 ">
        <a href="<?= base_url('auth/logout') ?>" class="btn btn-dark btn-sm w-100 mb-3">Logout</a>
    </div>
</aside>