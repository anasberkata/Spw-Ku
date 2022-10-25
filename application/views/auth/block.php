<!DOCTYPE html>
<html>

<head>
    <title>Space | tsParticles 404</title>
    <link type="text/css" rel="stylesheet" href="<?= base_url('assets/e404/') ?>css/404.css" />
    <link rel="icon" type="image/x-icon" href="<?= base_url('assets/e404/') ?>images/tsParticles-64.png">
</head>

<body class="permission_denied">
    <div id="tsparticles"></div>
    <div class="denied__wrapper">
        <h1>403</h1>
        <h3>MAAF YA! KAMU DILARANG MENGAKSES HALAMAN INI</h3>
        <img id="astronaut" src="<?= base_url('assets/e404/') ?>images/astronaut.svg" />
        <!-- <img class="planet" id="planet" src="<?= base_url('assets/e404/') ?>images/planet.svg" /> -->
        <a href="<?= base_url('dashboard') ?>"><button class="denied__link">Kembali ke Dashboard</button></a>
    </div>

    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/tsparticles@2.3.4/tsparticles.bundle.min.js"></script>
    <script type="text/javascript" src="<?= base_url('assets/e404/') ?>js/404.js"></script>

</html>