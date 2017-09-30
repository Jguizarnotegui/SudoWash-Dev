<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <head>
        <meta charset = "utf-8"
        <title>Available Contractor List</title>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
        <link rel = "stylesheet" href = "css/main.css">
        <link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet">
    </head>

    <body>
        <header>
                <img src= "images/Sudo_Wash_Logo.png" alt = "logo" width = "300" height="100">
                <hgroup>
                    <h1>Sudo Wash</h1>
                    <h2>Bringing a <strong> EPIC </strong> laundry service to the Table</h2>
                </hgroup>
                <nav id = "nav_bar">
                    <ul>
                        <li><a href = "index.jsp">HOME</a></li>
                        <li><a href = "Modelling.jsp"class="current">EXPLORE CONTRACTOR</a></li>
                    </ul>
                </nav>
        </header>
        <p><font size="3" face="Verdana, Arial, Helvetica, sans-serif"><strong>Available Contractors Near You
            </strong></font></p>
            <a href="/Shopping.jsp" mce_href="Shopping.jsp">View Cart</a>
        <p/>
        <div class="loader"></div>
        <table width="75%" border="1">
        <tr>
            <td><form name="modelDetail1" method="POST" action="servlet/crtHandler">
                <font size="2" face="Verdana, Arial, Helvetica, sans-serif"><strong>Contractor:</strong>
                Joshua Guizarnotegui</font><input type="hidden" name="modelNo" value="TF-MODEL1">
                <p><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><strong>Slogan:</strong>
                The best contractor in LA. </font><input type="hidden" name="description" value=" imaginary model 1."></p>
                <p><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><strong>Quantity of Bags:<input type="text" size="2" value="1" name="quantity"></strong></font></p>
                <p><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><strong>Unit Price:</strong>
                $50.00</font><input type="hidden" name="price" value="10"></p><input type="hidden" name="action" value="add"><input type="submit" name="addCrt" value="Get Contractor">
            </form></td>
            
            <td><form name="modelDetail2" method="POST" action="servlet/crtHandler"><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><strong>Contractor</strong>:
                Gilberto Placidon</font><input type="hidden" name="modelNo" value="TF-MODEL2">
                <font face="Verdana, Arial, Helvetica, sans-serif">
                <p><font size="2"><strong>Slogan</strong>: I am the fastest</font><input type="hidden" name="description" value=" imaginary model 2."></p>
                <p><font size="2"><strong>Quantity of Bags</strong>: <input type="text" size="2" value="1" name="quantity"></font></p>
                <p><font size="2"><strong>Unit Price</strong>: $20.00<input type="hidden" name="price" value="20"></font></p>
                <input type="hidden" name="action" value="add">
                <input type="submit" name="addCrt" value="Get Contractor">
            </font></form></td>
        </tr>
        
        <tr>
            <td><form name="modelDetail3" method="POST" action="servlet/crtHandler"><p><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><strong>Contractor:</strong>
                Walter Carbajal</font><input type="hidden" name="modelNo" value="TF-MODEL3"></p>
                <p><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><strong>Slogan:</strong>
                I get things done!</font><input type="hidden" name="description" value=" imaginary model 3."></p>
                <p><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><strong>Quantity of Bags:</strong></font> <input type="text" size="2" value="1" name="quantity"></p>
                <p><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><strong>Unit Price: $30.00</strong></font><input type="hidden" name="price" value="30"></p> <input type="hidden" name="action" value="add">
                <input type="submit" name="addCrt" value="Get Contractor">
            </form></td>
            
            <td><form name="modelDetail4" method="POST" action="servlet/crtHandler"><p><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><strong>Contractor</strong>:
                Vrezh Khalatyan</font><input type="hidden" name="modelNo" value="TF-MODEL4"></p>
                <p><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><strong>Slogan</strong>:
                I do it with passion! </font><input type="hidden" name="description" value=" imaginary model 4."></p>
                <p><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><strong>Quantity of Bags</strong>:</font> <input type="text" size="2" value="1" name="quantity"></p>
                <p><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><strong>Unit Price</strong>: $40.00</font><input type="hidden" name="price" value="40"></p>
                <input type="hidden" name="action" value="add"><input type="submit" name="addCrt" value="Get Contractor"></form></td>
        </tr>
    </table>
    <p> </p>
    <footer>
            <p>&copy; Copyright 2017 Sudo_Wash</p>
    </footer>
    </body>
</html>