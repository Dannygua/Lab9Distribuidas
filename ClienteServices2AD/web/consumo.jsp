<%-- 
    Document   : consumo
    Created on : 1/02/2021, 06:03:47 PM
    Author     : Kirineko
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <h1>SUMA</h1>
        
        
        <form action="consumo.jsp" method="POST" >
            <div class="form-group">
                <label for="txt_nombre" >Primer Numero</label> 
                <input type="text" name="txt_num1" />
                <label for="txt_nombre" >Segundo Numero</label> 
                <input type="text" name="txt_num2" />
            
            </div>
            <div>
                <button type="submit" class="btn btn-dark">Enviar datos</button>
            </div>
             <br/>
        </form>
        
        <%!
            String s_num1, s_num2;
            %>
            
            <%s_num1 = request.getParameter("txt_num1"); %>
             <%s_num2 = request.getParameter("txt_num2"); %>
             
                     <h1>RESTA</h1>
        
        
        <form action="consumo.jsp" method="POST" >
            <div class="form-group">
                <label for="txt_nombre" >Primer Numero</label> 
                <input type="text" name="txt2_num1" />
                <label for="txt_nombre" >Segundo Numero</label> 
                <input type="text" name="txt2_num2" />
            
            </div>
            <div>
                <button type="submit" class="btn btn-dark">Enviar datos</button>
            </div>
             <br/>
        </form>
        
        <%!
            String s2_num1, s2_num2;
            %>
            
            <%s2_num1 = request.getParameter("txt2_num1"); %>
             <%s2_num2 = request.getParameter("txt2_num2"); %>
             
                     <h1>MULTIPLICACION</h1>
        
        
        <form action="consumo.jsp" method="POST" >
            <div class="form-group">
                <label for="txt_nombre" >Primer Numero</label> 
                <input type="text" name="txt3_num1" />
                <label for="txt_nombre" >Segundo Numero</label> 
                <input type="text" name="txt3_num2" />
            
            </div>
            <div>
                <button type="submit" class="btn btn-dark">Enviar datos</button>
            </div>
           
        </form>
        
        <%!
            String s3_num1, s3_num2;
            %>
            
            <%s3_num1 = request.getParameter("txt3_num1"); %>
             <%s3_num2 = request.getParameter("txt3_num2"); %>
    </body>
</html>

    <%-- start web service invocation --%><hr/>
    <%
    try {
	uddi.ServicioOperaciones_Service service = new uddi.ServicioOperaciones_Service();
	uddi.ServicioOperaciones port = service.getServicioOperacionesPort();
	 // TODO initialize WS operation arguments here
	double a = Double.parseDouble(s_num1);
	double b = Double.parseDouble(s_num2);
	// TODO process result here
	double result = port.suma(a, b);
	out.println("Result = "+result);
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>
    <%-- start web service invocation --%><hr/>
    <%
    try {
	uddi.ServicioOperaciones_Service service = new uddi.ServicioOperaciones_Service();
	uddi.ServicioOperaciones port = service.getServicioOperacionesPort();
	 // TODO initialize WS operation arguments here
	double a = Double.parseDouble(s2_num1);
	double b = Double.parseDouble(s2_num2);
	// TODO process result here
	double result = port.resta(a, b);
	out.println("Result = "+result);
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>
    <%-- start web service invocation --%><hr/>
    <%
    try {
	uddi.ServicioOperaciones_Service service = new uddi.ServicioOperaciones_Service();
	uddi.ServicioOperaciones port = service.getServicioOperacionesPort();
	 // TODO initialize WS operation arguments here
	double a = Double.parseDouble(s3_num1);
	double b = Double.parseDouble(s3_num2);
	// TODO process result here
	double result = port.multiplicacion(a, b);
	out.println("Result = "+result);
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>
