<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ninja Gold</title>
    <!--Import Google Icon Font-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--Import materialize.css--><!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

    <link rel="stylesheet" type="text/css" href="css/ninja-style.css">

    <!--Let browser know website is optimized for mobile-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <style>
        .activities{
            overflow: auto !important
        }
    </style>
</head>
<body>

<div class="container">
        <!-- Page Content goes here -->
        <div class="row">
            <div class="col s12 m10 offset-m1">
                <div class="col s2">
                    <img class="responsive-img" src="img/Ninja.jpg">
                </div>
                <h1 class="header">Ninja Gold</h1>
            </div>
        </div>
        <div class="divider"></div>

        <div class="row">
            <div class="col s6" >
                <h3>Your gold: <c:out value="${gold}"/></h3>
            </div>
        </div>

        <div class="row">
            <div class="col s12 m6 l3">
                <div class="card small sticky-action">
                    <div class="card-image waves-effect waves-block waves-light">
                        <img class="activator" src="img/farm.jpg">
                    </div>
                    <div class="card-content">
                        <span class="card-title activator grey-text text-darken-4">The Farm<i class="material-icons right">more_vert</i></span>
                    </div>
                    <div class="card-reveal">
                        <span class="card-title grey-text text-darken-4">The Farm<i class="material-icons right">close</i></span>
                        <p>Put some elbow grease into it. Work hard and earn 10-20 gold</p>
                    </div>
                    <div class="card-action">
                        <form action="/process_money" method="POST">
                            <input type="hidden" name="building" value="farm" />
                            <button class="btn waves-effect waves-light" type="submit" name="action">Find Gold!
                            </button>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col s12 m6 l3">
                <div class="card small sticky-action">
                    <div class="card-image waves-effect waves-block waves-light">
                        <img class="activator" src="img/cave.jpg">
                    </div>
                    <div class="card-content">
                        <span class="card-title activator grey-text text-darken-4">The Cave<i class="material-icons right">more_vert</i></span>
                    </div>
                    <div class="card-reveal">
                        <span class="card-title grey-text text-darken-4">The Cave<i class="material-icons right">close</i></span>
                        <p>Venture into the darkness and find 5-10 gold</p>
                    </div>
                    <div class="card-action">
                        <form action="/process_money" method="POST">
                            <input type="hidden" name="building" value="cave" />
                            <button class="btn waves-effect waves-light" type="submit" name="action">Find Gold!
                            </button>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col s12 m6 l3">
                <div class="card small sticky-action">
                    <div class="card-image waves-effect waves-block waves-light">
                        <img class="activator" src="img/house.jpg">
                    </div>
                    <div class="card-content">
                        <span class="card-title activator grey-text text-darken-4">The House<i class="material-icons right">more_vert</i></span>
                    </div>
                    <div class="card-reveal">
                        <span class="card-title grey-text text-darken-4">The House<i class="material-icons right">close</i></span>
                        <p>Sit on your ass all day and just wait for your savings account's interest to get you 2-5 gold</p>
                    </div>
                    <div class="card-action">
                        <form action="/process_money" method="POST">
                            <input type="hidden" name="building" value="house" />
                            <button class="btn waves-effect waves-light" type="submit" name="action">Find Gold!
                            </button>
                        </form>
                    </div>
                </div>
                
            </div>
            <div class="col s12 m6 l3">
                <div class="card small sticky-action">
                    <div class="card-image waves-effect waves-block waves-light">
                        <img class="activator" src="img/casino.jpg">
                    </div>
                    <div class="card-content">
                        <span class="card-title activator grey-text text-darken-4">The Casino<i class="material-icons right">more_vert</i></span>
                    </div>
                    <div class="card-reveal">
                        <span class="card-title grey-text text-darken-4">The Casino<i class="material-icons right">close</i></span>
                        <p>Try your luck! If you play your cards right, you could earn 0-50 gold. But if Lady Luck is not on your side, you could lose 0-50 gold. Do you dare?</p>
                    </div>
                    <div class="card-action">
                        <form action="/process_money" method="POST">
                            <input type="hidden" name="building" value="casino" />
                            
                            <button class="btn waves-effect waves-light <c:if test = "${gold==0}"> disabled </c:if>" type="submit" name="action">Find Gold!</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <h3>Activities</h3>
        </div>
        <div class="row">
            <div class="s12">
                <div class="card small activities">
                    <c:out value="${activities}" escapeXml="false"/>
                </div>
            </div>
        </div>




    </div>







    <!--JavaScript at end of body for optimized loading--><!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

</body>
</html>