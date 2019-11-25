<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="formatacao.css"/>
         <c:if test="${funcionario == null}">
        <title>Cadastrar novo funcionario</title>
         </c:if><c:if test="${funcionario != null}">
        <title>Alterar funcionario: <c:out value='${funcionario.nome}' /></title>
         </c:if>
        
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet"
              href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
              integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
              crossorigin="anonymous">
        <link rel="stylesheet"
              href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
        <script
            src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
            integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
        <script
            src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
            integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
        crossorigin="anonymous"></script>

     
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="">Navbar</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Alterna navegação">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item ">
        <a class="nav-link" href="${pageContext.request.contextPath}">Home<span class="sr-only"></span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="${pageContext.request.contextPath}/Cliente">Cliente</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="${pageContext.request.contextPath}/Funcionario">Funcionário</a>
      </li>
      <li class="nav-item ">
        <a class="nav-link" href="${pageContext.request.contextPath}/Produto">Produto<span class="sr-only"></span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#">Privilegiado</a>
      </li>
    </ul>
  </div>
</nav>
        
 <center>
  <h1>Gerenciamento de Funcionarios</h1>
        </center>
    <div align="center">
  <c:if test="${funcionario != null}">
   <form action="Edicao" method="post">
        </c:if>
        <c:if test="${funcionario == null}">
   <form action="Inserir" method="post">
        </c:if>
        <table border="1" cellpadding="5">
             <h2>
              <c:if test="${funcionario != null}">
               Edição Funcionario
              </c:if>
              <c:if test="${funcionario == null}">
               Novo Funcionario
              </c:if>
             </h2>
          <c:if test="${funcionario != null}">
           <input type="hidden" name="id" value="<c:out value='${funcionario.id}' />" />
          

          </c:if>
           
            <tr>
                <th>Nome</th>
                <td>
                    <input type="text" name="nome" size="45" id="nome" value="<c:out value='${funcionario.nome}' />"/>
                </td>
            </tr>
            <tr>
                <th>Cargo</th>
                <td>
                 <input type="text" name="cargo" size="45"
                   value="<c:out value='${funcionario.cargo}' />"
                 />
                </td>
            </tr>
            <tr>
                <th>Endereço</th>
                <td>
                 <input type="text" name="endereco" size="45"
                   value="<c:out value='${funcionario.endereco}' />"
                 />
                </td>
            </tr>
             <tr>
                <th>Sexo</th>
                <td>
              <c:if test="${funcionario != null}">
                  <c:if test='${funcionario.sexo=="Masculino"}'>
                <input type="radio" name="sexo" value="Masculino" checked> Masculino
                <input type="radio" name="sexo" value="Feminino"> Feminino
                  </c:if>
                <c:if test='${funcionario.sexo=="Feminino"}'>
                <input type="radio" name="sexo" value="Masculino"> Masculino
                <input type="radio" name="sexo" value="Feminino" checked> Feminino
            </c:if>
              </c:if>
              <c:if test="${funcionario == null}">
               <input type="radio" name="sexo" value="Masculino" checked> Masculino
                <input type="radio" name="sexo" value="Feminino"> Feminino
              </c:if>
                </td>
            </tr>
             <tr>
                <th>Telefone</th>
                <td>
                 <input type="number" name="telefone" size="15"
                   value="<c:out value='${funcionario.telefone}' />"
                 />
                </td>
            </tr>
             <tr>
                <th>Login</th>
                <td>
                 <input type="text" name="login" size="15"
                   value="<c:out value='${funcionario.login}' />"
                 />
                </td>
            </tr> <tr>
                <th>Senha</th>
                <td>
                 <input type="text" name="senha" size="15"
                   value="<c:out value='${funcionario.senha}' />"
                 />
                </td>
            </tr>
            
            
            
            
            
            
             <tr>
                <th>Status</th>
                <td>
                 <c:if test="${funcionario != null}">
                  
                   <c:if test='${funcionario.ativo=="true"}'>
                <input type="radio" name="ativo" value="true"checked> Ativo
                <input type="radio" name="ativo" value="false"> Desativado
                  </c:if>
                
                    <c:if test='${funcionario.ativo=="false"}'>
                <input type="radio" name="ativo" value="true"> Ativo
                <input type="radio" name="ativo" value="false" checked> Desativado
                  </c:if>
              
                  <tr>
                <th>Data de cadastro</th>
                <td>
                    <c:out value='${funcionario.datacadastro}'></c:out>
                 
                </td>
            </tr>
                 </c:if>
              <c:if test="${funcionario == null}">
               <input type="radio" name="ativo" value="true" checked> Ativo
               <input type="radio" name="ativo" value="false"> Desativado
              </c:if></td>
            </tr>
            
            
            
            
           
            
            <tr>
             <td colspan="2" align="center">
              <input type="submit" value="Salvar" />
             <input type="button" value="Cancel" onclick="javascript:window.location='${pageContext.request.contextPath}/Funcionario';" />

             </td>
            </tr>
        </table>
        </form>
    </div>


    </body>
</html>