<?php

if($_SERVER['REQUEST_METHOD']=='POST') {

   $response = array();
   //mendapatkan data
   $id = $_POST['id'];
   // $nama_customer = $_POST['nama_customer'];
   // $jenis_pakaian = $_POST['jenis_pakaian'];
   // $berat = $_POST['berat'];
   //  $total_harga = $_POST['total_harga'];
   //  $nama_kasir = $_POST['nama_kasir'];
   //  $tgl_simpan = $_POST['tgl_simpan'];
   //  $tgl_update = $_POST['tgl_update'];
    // $status = 'diambil';
    
    

    require_once('koneksi.php');
   //Cek id ada atau tidak ada 
   $sql = "SELECT * FROM orderan WHERE id ='$id'";
   $check = mysqli_fetch_array(mysqli_query($conn,$sql));
   if(isset($check)){
       
       
       $sql = "DELETE FROM orderan
       WHERE id = '$id'";
//       print_r($sql);exit;
     if(mysqli_query($conn,$sql)) {
       $response["value"] = true;
       $response["message"] = "Sukses menghapus";
       echo json_encode($response);
     } else {
       $response["value"] = false;
       $response["message"] = "oops! Coba gagal mengumenghapus!";
       echo json_encode($response);
     }
     
   } else {
     
       $response["value"] = false;
     $response["message"] = "oops! Data Tidak Ada!";
     echo json_encode($response);
   }
    
    
   // tutup database
   mysqli_close($conn);
} else {
  $response["value"] = false;
  $response["message"] = "oops! id Sudah terdaftar!";
  echo json_encode($response);
}