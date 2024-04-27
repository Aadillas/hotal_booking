<!doctype html>
    <html lang="en">

    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" />
        
        <!-- connect to links -->
        <?php require('inc/links.php'); ?>
        
        <title><?php echo $settings_r['site_title'] ?> - FACILITIES</title>
        
        <style>
            .pop:hover{
                border-top-color: var(--teal) !important;
                transform: scale(1.03);
                transition: all 0.3s;
            }
        </style>
            

    </head>

    <body class="bg-light">

        <!-- link to header -->
        <?php require('inc/header.php'); ?>

        <div class="my-5 px-4">
            <h2 class="fw-bold h-font text-center">OUR FACILITIES</h2>
            <div class="h-line bg-dark"></div>
            <p class="text-center mt-3">
                A hotel room management online system is essential for modern hotel operations, 
                enabling guests to book rooms, manage reservations, and access information about available facilities and amenities. 
                Here's how various facilities such as Wi-Fi, spa, and others can be showcased on a hotel's website through its management system:
            </p>
        </div>

        <div class="container">
            <div class="row info_message">
                <?php
                    $res = selectAll('facilities');
                    $path = FACILITIES_IMG_PATH;

                    while($row = mysqli_fetch_assoc($res)){
                        echo<<<data
                            <div class="col-lg-4 col-md-6 mb-5 px-4">
                                <div class="bg-white rounded shadow p-4 border-top border-4 border-dark pop">
                                    <div class="d-flex align-items-center mb-2">
                                        <img src="$path$row[icon]" width="40px">
                                        <h5 class="m-0 ms-3">$row[name]</h5>
                                    </div>
                                    <p>$row[description]</p>
                                </div>
                            </div>
                        data;
                    }
                ?>
            </div>
        </div>
            

        <!-- link to footer -->
            <?php require('inc/footer.php') ?>


    </body>

</html>