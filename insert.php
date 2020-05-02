<?php

if($_SERVER['REQUEST_METHOD']=='POST') {

   $response = array();
   //mendapatkan data
   $id = $_POST['id'];
   $nama_customer = $_POST['nama_customer'];
   $jenis_pakaian = $_POST['jenis_pakaian'];
   $berat = $_POST['berat'];
    $total_harga = $_POST['total_harga'];
    $nama_kasir = $_POST['nama_kasir'];  
    $tgl_simpan = $_POST['tgl_simpan'];
    $tgl_update = $_POST['tgl_update'];
    $status = $_POST['status'];
    
    

   require_once('koneksi.php');
   //Cek id sudah terdaftar apa belum
   $sql = "SELECT * FROM orderan WHERE id ='$id'";
   $check = mysqli_fetch_array(mysqli_query($conn,$sql));
   if(isset($check)){
     $response["value"] = false;
     $response["message"] = "oops! Id sudah terdaftar!";
     echo json_encode($response);
   } else {
     $sql = "INSERT INTO orderan (
       id,
       nama_customer,
       jenis_pakaian,
       berat,
       total_harga,
       nama_kasir,
       tgl_simpan,
       tgl_update,
       status) 
      VALUES(
        '$id',
        '$nama_customer',
        '$jenis_pakaian',
        '$berat',
        '$total_harga',
        '$nama_kasir',
        '$tgl_simpan',
        '$tgl_update',
        '$status')";
     if(mysqli_query($conn,$sql)) {
       $response["value"] = true;
       $response["message"] = "Sukses mendaftar";
       echo json_encode($response);
     } else {
       $response["value"] = false;
       $response["message"] = "oops! Coba lagi!";
       echo json_encode($response);
     }
   }
   // tutup database
   mysqli_close($conn);
} else {
  $response["value"] = false;
  $response["message"] = "oops! id Sudah terdaftar!";
  echo json_encode($response);
}