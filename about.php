<!doctype html>
    <html lang="en">

    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" />
        
        <!-- connect to links -->
        <?php require('inc/links.php'); ?>
        
        <title><?php echo $settings_r['site_title'] ?> - ABOUT</title>
        
        <!-- swiper -->
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.css" />
            <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
            <link
              rel="stylesheet"
              href="https://unpkg.com/swiper/swiper-bundle.min.css"
            />
            <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />

        <style>
          .box{
            border-top-color: var(--teal) !important;
          }
        </style>
            

    </head>

    <body class="bg-light">

        <!-- link to header -->
        <?php require('inc/header.php'); ?>



        <div class="my-5 px-4">
            <h2 class="fw-bold h-font text-center">ABOUT US</h2>
            <div class="h-line bg-dark"></div>
            <p class="text-center mt-3">
                At AS HOTEL, we specialize in providing cutting-edge room management software tailored to the unique needs of modern hoteliers. 
                With years of industry expertise, our team is dedicated to delivering seamless solutions that streamline operations, 
                   enhance guest experiences, and maximize revenue. Trust us to be your partner in optimizing your hotel's efficiency and success.
            </p>
        </div>

        <div class="container">
            <div class="row justify-content-between align-items-center">
                <div class="col-lg-6 col-md-5 mb-4 order-lg-1 order-md-1 order-2">
                    <h3 class="mb-3">Mali Tusar</h3>
                    <p class="info_message">
                    Welcome to AS Hotel, where your comfort is our priority. 
                    At AS Hotel, we pride ourselves on providing exceptional service and luxurious accommodations to ensure your stay is nothing short of perfect. 
                    We value feedback from our guests, and your reviews are vital in helping us maintain our high standards. 
                    We invite you to share your experiences with us through our Cline Side Review feature, 
                    allowing us to continuously improve and tailor our services to exceed your expectations. 
                    Thank you for choosing AS Hotel, where every detail is crafted with your satisfaction in mind.
                    </p>
                </div>
                <div class="col-lg-5 col-md-5 md-4 order-lg-2 order-md-2 order-1">
                    <img src="Images/about/1.jpg" class="w-100">
                </div>
            </div>
        </div>

        <div class="container mt-5">
            <div class="row">
                <div class="col-lg-3 col-md-6 mb-4 px-4">
                    <div class="bg-whote rounded shadow p-4 border-top border-4 text-center box">
                        <img src="Images/about/hotel.svg" width="70px">
                        <h4 class="mt-3">100+ ROOMS</h4>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 mb-4 px-4">
                    <div class="bg-whote rounded shadow p-4 border-top border-4 text-center box">
                        <img src="Images/about/customer.svg" width="70px">
                        <h4 class="mt-3">200+ CUSTOMES</h4>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 mb-4 px-4">
                    <div class="bg-whote rounded shadow p-4 border-top border-4 text-center box">
                        <img src="Images/about/rating.svg" width="70px">
                        <h4 class="mt-3">150+ REVIEWS</h4>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 mb-4 px-4">
                    <div class="bg-whote rounded shadow p-4 border-top border-4 text-center box">
                        <img src="Images/about/staff.svg" width="70px">
                        <h4 class="mt-3">100+ STAFFS</h4>
                    </div>
                </div>
            </div>
        </div>

        <h3 class="my-5 fw-bold h-font text-center">MANAGEMENT TEAM</h3>
        <!-- Swiper -->
        <div class="container px-4">
            <div class="swiper mySwiper">
                <div class="swiper-wrapper mb-5">
                    <?php
                        $about_r = selectAll('team_details');
                        $path = ABOUT_IMG_PATH;
                        while($row = mysqli_fetch_assoc($about_r)){
                            echo<<<data
                                <div class="swiper-slide bg-white text-center overflow-hidden rounded ">
                                    <img src="$path$row[picture]" class="w-100">
                                    <h5 class="mt-2">$row[name]</h5>
                                </div>
                            data;
                        }
                    ?>
                    
                </div>
                <div class="swiper-pagination"></div>
            </div>

        </div>
            

        <!-- link to footer -->
            <?php require('inc/footer.php') ?>
            
        <!-- Swiper JS -->
            <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>

        <!-- Initialize Swiper -->
            <script>
                var swiper = new Swiper(".mySwiper", {
                    spaceBetween: 40,
                    pagination: {
                    el: ".swiper-pagination",
                    },
                    breakpoints: {
                        320: {
                            slidesPerView: 1,
                        },
                        640: {
                            slidesPerView: 1,
                        },
                        768: {
                            slidesPerView: 3,
                        },
                        1024: {
                            slidesPerView: 3,
                        },
                    }
                });
            </script>

    </body>

</html>