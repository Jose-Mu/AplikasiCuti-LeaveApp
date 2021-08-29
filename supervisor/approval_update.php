<?php
include("sess_check.php");

$no=$_POST['no'];
$email=$_POST['email'];
$aksi=$_POST['aksi'];
$mng=$_POST['mng'];
$reject=$_POST['reject'];
$stt = "";
$null = 0;

if($aksi=="2"){
	$stt="Rejected";
	$sql = "UPDATE cuti SET
			stt_cuti='". $stt ."',
			ket_reject='". $reject ."'
			WHERE no_cuti='". $no ."'";
		$ress = mysqli_query($conn, $sql);
		// 		/sendmail

		$to      = $email;
        $subject = 'Pembaharuan Status Cuti';
        $message = 'Status cuti anda telah diperbaharui, lihat selengkapnya di https://kelompokungu.xyz';
        $headers = array(
        'From' => 'admin@kelompokungu.xyz',
        'Reply-To' => 'webmaster@example.com',
        'X-Mailer' => 'PHP/' . phpversion()
        );

        $mail = mail($to, $subject, $message, $headers);
 
        if(!$mail) {   
     echo "<script>alert('Email tidak terkirim!')
     document.location = 'app_wait.php?act=update&msg=success';</script>";   
    //  header("location: app_wait.php?act=update&msg=success");
        } else {
    echo "<script>alert('Email telah dikirim!') 	
    document.location = 'app_wait.php?act=update&msg=success';</script>";
    
    header("location: app_wait.php?act=update&msg=success");
        }
	
}else{
	$stt="Menunggu Approval HRD";
	$num	=1;
	$sql = "UPDATE cuti SET
			stt_cuti='". $stt ."',
			manager='". $mng ."',
			spv_app='". $num ."'
			WHERE no_cuti='". $no ."'";
		$ress = mysqli_query($conn, $sql);
		header("location: approval_cuti.php?act=update&msg=success");
	
}
?>