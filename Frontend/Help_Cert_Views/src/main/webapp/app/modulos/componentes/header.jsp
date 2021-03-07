<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Help_Cert</title>
        <link rel="shortcut icon" href="img/icons/HC.png" type="image/x-icon">
        <link href='https://fonts.googleapis.com/css?family=Segoe+UI' rel='stylesheet'>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
        <link rel="stylesheet" href="app/css/main.css">
        <link rel="stylesheet" href="app/css/scan.css">
        <link rel="stylesheet" href="css/alert-css.css">
    </head>

    <%if ((session.getAttribute("user") == null) ){
        response.sendRedirect("page");
    }%>