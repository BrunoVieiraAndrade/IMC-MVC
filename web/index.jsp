<%--
  User: brunoandrade
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>IMC</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.1.8/semantic.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/css/materialize.min.css">

    <script src="https://code.jquery.com/jquery-2.2.3.min.js" integrity="sha256-a23g1Nt4dtEYOj7bR+vTu7+T8VP13humZFBJNIYoEJo=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.0/jquery.mask.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.1.8/semantic.min.js"></script>

    <style>
        .hide {
            display: none !important;
        }
        .margin-top {
            margin-top: 40px;
        }
        .margin-bottom{
            margin-bottom: 40px;
        }
        .negative-margin-left{
            margin-left: -15px;
        }
    </style>

    <script>
        $(document).ready(function() {
            $(".dropdown").dropdown();
            $("#height").mask("0,00");

            var imcTypeText = "<%=request.getAttribute("imcTypeText")%>";
            console.log(imcTypeText.length)
            if(imcTypeText != null && imcTypeText != '' && imcTypeText != 'null'){
                $("#resultMessage").removeClass("hide");
                $("#resultMessageContent").html(imcTypeText);
            }
        })
    </script>
</head>
<body>
<div class="container">
    <div class="container"></div>
    <div class="container">
        <div class="card">
            <div class="row">
                <h2 class="center-align">IMC</h2>
                <form action="/imc" method="POST" class="col s8">
                    <div class="row">
                        <div class="input-field">
                            <input id="weight" placeholder="Peso" name="weight" type="text" class="validate" required>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field">
                            <input id="height" name="height" placeholder="Altura" type="text" class="validate" required>
                        </div>
                    </div>
                    <div class="row">
                        <div class="ui selection dropdown">
                            <input type="hidden" name="gender" required>
                            <i class="dropdown icon"></i>
                            <div class="default text">Escolha o sexo</div>
                            <div class="menu">
                                <div class="item" data-value="1">Masculino</div>
                                <div class="item" data-value="0">Feminino</div>
                            </div>
                        </div>
                    </div>
                    <button id="resultButton" class="btn waves-effect waves-light red darken-4 margin-bottom" type="submit">Resultado</button>
                </form>
            </div>
        </div>

        <div id="resultMessage" class="ui icon message hide">
            <i class="icon"></i>
            <div class="content">
                <div id="resultMessageContent" class="header">
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
