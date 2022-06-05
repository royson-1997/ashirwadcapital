    <style>
      .col-md-6{
        margin-top: 20px;
      }
      .portfolio .portfolio-item {
        height: auto !important;
      }
    </style>

    <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs section-bg">
      <div class="container">
        <?php $text_1 = isset($this->data['text_1']) ? $this->data['text_1'] : ''; ?>
        <div class="d-flex justify-content-between align-items-center">
          <h2><?php echo $text_1; ?></h2>
          <ol>
            <li><a href="<?php echo base_url(); ?>">Home</a></li>
            <li><?php echo $text_1; ?></li>
          </ol>
        </div>
      </div>
    </section>
    <!-- End Breadcrumbs -->

    <!-- ======= Services Section ======= -->
    <section id="services" class="services portfolio section-bg pt-0">
        <div class="container">

        <?php
          $getData = isset($this->data['getData']) ? $this->data['getData'] : array();
          $getData2 = isset($this->data['getData2']) ? $this->data['getData2'] : array();
          $getDocumentType = $this->data['getDocumentType'];
          if (isset($getData) && count($getData) > 0) {
            $getData1 = json_decode(json_encode($getData), true);
            if($getData1[0]['document_upload_type_no'] != 4 && $getData1[0]['document_upload_type_no'] != 5){
        ?>
          <div class="section-title pb-0">
            <h2><?php echo $getDocumentType[$getData1[0]['document_upload_type']]; ?></h2>
          </div>
        <?php } ?>
          <div class="row">
            <?php
            $arr = $arr2 = $arr3 = array();

            $yearArr = array(1=>"2010 - 11",2=>"2011 - 12",3=>"2012 - 13",4=>"2013 - 14",5=>"2014 - 15",6=>"2015 - 16",7=>"2016 - 17",8=>"2017 - 18",9=>"2018 - 19",10=>"2019 - 20",11=>"2020 - 21",12=>"2021 - 22",13=>"2022 - 23",14=>"2023 - 24",15=>"2024 - 25",16=>"2025 - 26");

            foreach ($getData as $year) {

              if(!empty($year->document_upload_year) && $year->document_upload_year != 0){
                $arr[] = $year->document_upload_year;
                $arr2[] = $year->document_upload_type;
                $arr3[] = $year->document_upload_type_no;
              }

            }

            $unique_data = array_unique($arr);

            if(count($unique_data) > 0){ ?>

              <div class="col-md-12">
                <ul id="portfolio-flters">
                  <?php foreach ($unique_data as $x => $fil) { ?>
                    <li class="<?php echo ($x == 0) ? 'filter-active' : ''; ?>" data-filter=".filter-<?php echo $fil; ?>" onclick="modifyList('<?php echo $fil; ?>')" ><?php echo $yearArr[$fil]; ?></li>
                  <?php } ?>
                  <li data-filter="*" class="">All</li>
                </ul>
              </div>

          </div>

          <div class="row portfolio-container">

            <?php  foreach ($unique_data as $y => $val) { ?>
                <!-- <h4 class="mt-4"><?php echo $yearArr[$val]; ?></h4> -->
                <?php
                $doc_type = $arr2[0];
                $doc_type_no = $arr3[0];
                $orderBy = 'document_upload_id DESC';
                $whereclause = array('document_upload_year' => $val, 'document_upload_type' => $doc_type, 'document_upload_type_no' => $doc_type_no, 'status' => 1);
                $getYearData = $this->admin_model->getdata('document_upload_data',$whereclause,$orderBy); ?>

                <?php foreach ($getYearData as $yvalue) { ?>
                  <div class="col-md-6 portfolio-item filter-<?php echo $yvalue->document_upload_year; ?> wow fadeInUp" style="<?php echo ($y != 0) ? 'display: none' : ''; ?>" id="filter-<?php echo $yvalue->document_upload_year; ?>">
                    <div class="icon-box">
                      <div class="row">
                        <div class="col-md-8">
                          <i class="bi bi-card-checklist"></i>
                          <h4><a href="#"><?php echo $yvalue->document_upload_title; ?></a></h4>
                          <p><?php echo $yvalue->document_upload_description; ?></p>
                        </div>

                        <div class="col-md-4">
                          <a class="btn btn-primary" href="<?php echo base_url().$yvalue->document_upload_link; ?>" target="_blank">Download PDF</a>
                        </div>
                      </div>
                    </div>
                  </div>
                <?php } ?>

            <?php  }

            } else {

              foreach ($getData as $value) { ?>
              <div class="col-md-6">
                <div class="icon-box">
                  <div class="row">
                    <div class="col-md-8">
                      <i class="bi bi-card-checklist"></i>
                      <h4><a href="#"><?php echo $value->document_upload_title; ?></a></h4>
                      <p><?php echo $value->document_upload_description; ?></p>
                    </div>

                    <div class="col-md-4">
                      <a class="btn btn-primary" href="<?php echo base_url().$value->document_upload_link; ?>" target="_blank">Download PDF</a>
                    </div>
                  </div>
                </div>
              </div>

            <?php } } ?>

          </div>

        <?php } else { ?>

          <div class="row">
            <div class="col-md-12">
              <div class="icon-box">
                <h4><a href="#">No Files Found</a></h4>
                <p>Maybe go back and try again. Or we still working on it. </p>
              </div>
            </div>
          </div>
        <?php } ?>

        <?php if (isset($getData2) && count($getData2) > 0) {
          $getData_2 = json_decode(json_encode($getData2), true);
          if($getData_2[0]['document_upload_type_no'] != 4 && $getData_2[0]['document_upload_type_no'] != 5){
        ?>
          <div class="section-title pt-5 pb-0">
            <h2><?php echo $getDocumentType[$getData_2[0]['document_upload_type']]; ?></h2>
          </div>

        <?php } ?>

          <div class="row">
            <?php foreach ($getData2 as $key2 => $value2) { ?>
              <div class="col-md-6">
                <div class="icon-box">
                  <div class="row">
                    <div class="col-md-8">
                      <i class="bi bi-card-checklist"></i>
                      <h4><a href="#"><?php echo $value2->document_upload_title; ?></a></h4>
                      <p><?php echo $value2->document_upload_description; ?></p>
                    </div>
                    <div class="col-md-4">
                      <a class="btn btn-primary" href="<?php echo base_url().$value2->document_upload_link; ?>" target="_blank">Download PDF</a>
                    </div>
                  </div>
                </div>
              </div>
            <?php } ?>
          </div>
        <?php } ?>

        </div>
    </section>
