<!DOCTYPE html>
<html>
<head>
    <link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="dist/css/yearpicker.css">
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="dist/chart.js/dist/Chart.js"></script>
    <script src="dist/js/yearpicker.js"></script>
</head>
<body>
	<style type="text/css">
	body{
		
        background-color: #f8f9fa;
	}

	
	</style>

	
    <?php 
	include 'dist/config/koneksi.php';
	?>
    <div class="row">
					<div class="col-lg-6 col-md-6">
								<div class="row">
									<div style="width: auto;margin: 0px auto;margin-top:60px;">
        								<h3 style="font-size:24px">Status Saat ini</h3>
										<canvas class="chart" id="myChart"></canvas>
    								</div>
								</div>
					</div><!-- /.panel-green -->
					
					<div class="col-lg-6 col-md-6">
								<div class="row">
								    <br>
								    <br>
									<div style="right:auto; width: auto;margin: 0px auto;">
        								<div><h3 style="font-size:24px">Jumlah Cuti Tahun</h3>
             							<form action="" method="POST" >
             								<?php  
             								$already_selected_value =2020;
											$earliest_year = 2000;
											print '<select name="year">';	
											print'<option selected>Select Year</option>';
											foreach (range(date('Y'), $earliest_year) as $x) {
   											 print '<option value="'.$x.'"'.($x === $already_selected_value ).'>'.$x.'</option>';
											}
											print '</select>';
											?>
											<button type="submit" class=btn-warning style="border-radius:20px; margin-left:10px"> Submit Year</button>
             						
             								</form>
             								
        								</div>
										<canvas id="cutiChart"></canvas>
    								</div>
							</div>
						</div><!-- /.panel-green -->
	</div><!-- /.row -->

    <!-- buat year -->
 
   <!--   <script>
      $(document).ready(function() {
        $(".yearpicker").yearpicker({
          year: <?php echo date("Y"); ?> ,
          startYear: 2000,
          endYear: 999999
        });
      });
    </script> -->

    <script>
		var ctx = document.getElementById("myChart").getContext('2d');
		var myChart = new Chart(ctx, {
			type: 'pie',
			data: {
			labels: ["Approved", "Reject","Menunggu Approval"],
			datasets: [{
			label: '',
			data: [
			<?php
                $jumlah_approved = mysqli_query($conn,"select * from cuti where stt_cuti='approved'");
                echo mysqli_num_rows($jumlah_approved);
            ?>,
            <?php
                $jumlah_rejected = mysqli_query($conn,"select * from cuti where stt_cuti='rejected'");
                echo mysqli_num_rows($jumlah_rejected);
            ?>,
            <?php
                $jumlah_menunggu_approval = mysqli_query($conn,"select * from cuti where stt_cuti LIKE '%Menunggu Approval%'");
                echo mysqli_num_rows($jumlah_menunggu_approval);
            ?>
            ],
					backgroundColor: [
					'rgba(54, 162, 235, 0.2)',
					'rgba(255, 99, 132, 0.2)',
					'rgba(255, 206, 86, 0.2)',
					// 'rgba(75, 192, 192, 0.2)'
					],
					borderColor: [
					'rgba(54, 162, 235, 1)',
					'rgba(255,99,132,1)',
					'rgba(255, 206, 86, 1)',
					// 'rgba(75, 192, 192, 1)'
					],
					borderWidth: 1
				}]
			},
			options: {
				scales: {
					yAxes: [{
						ticks: {
							beginAtZero:true
						}
					}]
				}
			}
		});
    </script>
    <script>
		var ctx = document.getElementById("cutiChart").getContext('2d');
		var myChart = new Chart(ctx, {
			type: 'bar',
			data: {
			labels: ["January", "Febuary", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"],
			datasets: [{
			label: '',
			data: [
			<?php 
			$year = $_POST['year'];
			
			$jumlah_jan = mysqli_query($conn,"SELECT * FROM cuti WHERE month(tgl_pengajuan)='01' and year(tgl_pengajuan)=$year");
			echo mysqli_num_rows($jumlah_jan);
            ?>, 
            <?php 
           $year = $_POST['year'];
			
			$jumlah_feb = mysqli_query($conn,"SELECT * FROM cuti WHERE month(tgl_pengajuan)='02'and year(tgl_pengajuan)=$year");
			echo mysqli_num_rows($jumlah_feb);
            ?>, 
            <?php 
            $year = $_POST['year'];
			
			$jumlah_mar = mysqli_query($conn,"SELECT * FROM cuti WHERE month(tgl_pengajuan)='03'and year(tgl_pengajuan)=$year");
			echo mysqli_num_rows($jumlah_mar);
            ?>, 
            <?php 
           $year = $_POST['year'];
			
			$jumlah_apr = mysqli_query($conn,"SELECT * FROM cuti WHERE month(tgl_pengajuan)='04'and year(tgl_pengajuan)=$year");
			echo mysqli_num_rows($jumlah_apr);
            ?>, 
            <?php 
          $year = $_POST['year'];
			
			$jumlah_may = mysqli_query($conn,"SELECT * FROM cuti WHERE month(tgl_pengajuan)='05'and year(tgl_pengajuan)=$year");
			echo mysqli_num_rows($jumlah_may);
            ?>, 
            <?php 
           $year = $_POST['year'];
			
			$jumlah_jun = mysqli_query($conn,"SELECT * FROM cuti WHERE month(tgl_pengajuan)='06'and year(tgl_pengajuan)=$year");
			echo mysqli_num_rows($jumlah_jun);
            ?>, 
            <?php 
            $year = $_POST['year'];
			
			$jumlah_jul = mysqli_query($conn,"SELECT * FROM cuti WHERE month(tgl_pengajuan)='07'and year(tgl_pengajuan)=$year");
			echo mysqli_num_rows($jumlah_jul);
            ?>, 
            <?php 
         	$year = $_POST['year'];
			
			$jumlah_ags = mysqli_query($conn,"SELECT * FROM cuti WHERE month(tgl_pengajuan)='08'and year(tgl_pengajuan)=$year");
			echo mysqli_num_rows($jumlah_ags);
            ?>, 
            <?php 
         	$year = $_POST['year'];
			
			$jumlah_sep = mysqli_query($conn,"SELECT * FROM cuti WHERE month(tgl_pengajuan)='09'and year(tgl_pengajuan)=$year");
			echo mysqli_num_rows($jumlah_sep);
            ?>, 
            <?php 
         	$year = $_POST['year'];
			
			$jumlah_okt = mysqli_query($conn,"SELECT * FROM cuti WHERE month(tgl_pengajuan)='10'and year(tgl_pengajuan)=$year");
			echo mysqli_num_rows($jumlah_okt);
			?>, 
			<?php 
			$year = $_POST['year'];
		
			$jumlah_nov = mysqli_query($conn,"SELECT * FROM cuti WHERE month(tgl_pengajuan)='11'and year(tgl_pengajuan)=$year");
			echo mysqli_num_rows($jumlah_nov);
            ?>,
            <?php 
         	$year = $_POST['year'];
			
			$jumlah_des = mysqli_query($conn,"SELECT * FROM cuti WHERE month(tgl_pengajuan)='12'and year(tgl_pengajuan)=$year");
			echo mysqli_num_rows($jumlah_des);
			?>
            ],
					backgroundColor: [
					'rgba(255, 99, 132, 0.2)',
					'rgba(54, 162, 235, 0.2)',
					'rgba(255, 206, 86, 0.2)',
                    'rgba(75, 192, 192, 0.2)',

                    'rgba(250, 99, 132, 0.2)',
					'rgba(53, 162, 235, 0.2)',
					'rgba(255, 208, 86, 0.2)',
                    'rgba(76, 192, 192, 0.2)',
                    
                    'rgba(251, 99, 132, 0.2)',
					'rgba(50, 162, 235, 0.2)',
					'rgba(178, 34, 34, 0.2)',
					'rgba(218, 165, 32, 0.2)'
					],
					borderColor: [
                    'rgba(255, 99, 132, 1)',
					'rgba(54, 162, 235, 1)',
					'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)',
                    'rgba(250, 99, 132, 1)',
					'rgba(53, 162, 235, 1)',
					'rgba(255, 208, 86, 1)',
                    'rgba(76, 192, 192, 1)',
                    'rgba(251, 99, 132, 1)',
					'rgba(50, 162, 235, 1)',
					'rgba(178, 34, 34, 1)',
					'rgba(218, 165, 32, 1)'
					],
					borderWidth: 1
				}]
			},
			options: {
				scales: {
					yAxes: [{
						ticks: {
							beginAtZero:true
						}
					}]
				}
			}
		});
	</script>
</body>
</html>
