    <!-- ======= Hero Section ======= -->

    <section id="hero" class="d-flex flex-column justify-content-center align-items-center">

    <div class="container text-center text-md-left" data-aos="fade-up">

      <h1>Welcome to <span>Ashirwad Capital Limited.</span></h1>

      <h2>We are team of Solid, Consistent Growth. By Design.</h2>

      <a href="#about" class="btn-get-started scrollto">Get Started</a>

    </div>

    </section><!-- End Hero -->



    <main id="main">



        <!-- ======= About Section ======= -->

        <section id="about" class="about p-5 section-bg">

          <div class="container">



            <div class="section-title">

              <h2>What We Do</h2>

            </div>



            <div class="row">

              <div class="col-lg-6">

                <img src="<?php echo base_url(); ?>front-assets/img/about.jpg" class="img-fluid" alt="">

              </div>

              <div class="col-lg-6 pt-4 pt-lg-0">

                <h3 class="mb-4">About Us</h3>

                <ul>

                  <li><i class="bx bx-check-double"></i> When it comes to an investment partner, the key attributes you look for are solidity, a consistent track record and expertise.</li>

                  <li><i class="bx bx-check-double"></i> Here at Ashirwad, we are proud to say we meet these criteria. The group has a long history of solid performance, and is backed by promoters with considerable acumen in the field.</li>

                  <li><i class="bx bx-check-double"></i> We focus on long-term investments in blue chip scrips, with a view to well-timed entry and exit. To do this, we employ a strong fundamental analysis, along with an in-house technical analysis model, that aims for performance consistency.</li>

                </ul>

              </div>

            </div>



          </div>

        </section><!-- End About Section -->



        <!-- ======= Team Section ======= -->

        <?php

        $getData = isset($this->data['getData']) ? $this->data['getData'] : array();

        $getDocumentType = $this->data['getDocumentType'];

        if (isset($getData) && count($getData) > 0) {

        $getData1 = json_decode(json_encode($getData), true); ?>

        <section id="team" class="team portfolio-details pt-5">

          <div class="container">



            <div class="section-title">

              <h2>Team</h2>

              <!-- <p>Sit sint consectetur velit quos quisquam cupiditate nemo qui</p> -->

            </div>



            <div class="row">



              <div class="col-lg-2"></div>

              <div class="col-lg-8">

                <div class="portfolio-info">

                  <h3><?php echo $getDocumentType[$getData1[0]['team_document_type']]; ?></h3>

                  <div class="row">

                    <div class="col-lg-6">

                      <p><strong>Name</strong></p>

                      <ul>

                        <?php foreach ($getData as $data_1) { ?>

                        <li><?php echo $data_1->team_director_name; ?></li>

                        <?php } ?>

                      </ul>

                    </div>

                    <div class="col-lg-6">

                      <p><strong>Designation</strong></p>

                      <ul>

                        <?php foreach ($getData as $data_1) { ?>

                        <li><?php echo $data_1->team_director_designation; ?></li>

                        <?php } ?>

                      </ul>

                    </div>

                  </div>

                </div>

            </div>

            <div class="col-lg-2"></div>



            </div>



          </div>

        </section><!-- End Team Section -->

        <?php } ?>



    </main><!-- End #main -->

