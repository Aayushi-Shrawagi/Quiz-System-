<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">
                    .card-container{
                        padding-top:30px;
                        padding-left:10px;
                        /*display:inline-block;*/
                    }
                    .card{
                          /* Add shadows to create the "card" effect */
                          /*position: relative;*/
                          box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
                          transition: 0.3s;
                          float:left;
                          width:20%;
                          margin-left: 1rem;
                          margin-bottom: 1rem;

                        }

                        /* On mouse-over, add a deeper shadow */
                        .card:hover {
                          box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
                        }

                        /* Add some padding inside the card container */
                        .container {
                          padding: 2px 16px;
                          color: #002699;
                          background-color:white;
                          font-size: 17px;
                        }
                        .button {
                          position: relative;
                          left: 78%;
                          border-radius: 5px;
                          background-color:#002699;
                          border: none;
                          color: #FFFFFF;
                          text-align: center;
                          font-size: 22px;
                          padding: 20px;
                          width: 260px;
                          height:65px;
                          transition: all 0.5s;
                          cursor: pointer;
                          margin: 5px;
                        }

                        .button span {
                          cursor: pointer;
                          display: inline-block;
                          position: relative;
                          transition: 0.5s;
                        }

                        .button span:after {
                          content: '\00bb';
                          position: absolute;
                          opacity: 0;
                          top: 0;
                          right: -20px;
                          transition: 0.5s;
                        }

                        .button:hover span {
                          padding-right: 25px;
                        }

                        .button:hover span:after {
                          opacity: 1;
                          right: 0;
                        }
                        a {
                            text-decoration: none !important;
                        }
        </style>
    </head>
    <body bgcolor="#e6ecff">
        <center><h1>Student Quiz Dashboard</h1></center>
        <button class="button"><span>Quiz analysis</span></button>
        <br><br>

        <hr style="color: navy;" size="4">
        <div class ="card-container">

         <a href = "Questions.jsp" id="subject" value ="maths" class="card" >
          <img src="Maths.jpg" alt="Avatar"  height="120px" style="width:100%">
          <div class="container">
            <h4><b>Mathematics</b></h4>
            <p>topic description</p>
             </div>
          </a>
           
         <a href = "Questions.jsp" id="subject" value ="literature" class="card" >
          <img src="Literature.jpg" alt="Avatar" height="120px" style="width:100%">
          <div class="container">
            <h4><b>Literature</b></h4>
            <p>topic description</p>
          </div>
        </a>

        <a href = "Questions.jsp" id="subject" value ="science" class="card" >
          <img src="science.jpg" alt="Avatar" height="120px" style="width:100%">
          <div class="container">
            <h4><b>Science</b></h4>
            <p>topic description</p>
          </div>
      </a>

        <a href = "Questions.jsp" id="subject" value ="history" class="card" >
          <img src="History.jpg" height="120px" alt="Avatar" style="width:100%">
          <div class="container">
            <h4><b>History</b></h4>
            <p>topic description</p>
          </div>
        </a>

        <a href = "Questions.jsp" id ="subject" value="geography" class="card" >
          <img src="geo.jpg" height="120px" alt="Avatar" style="width:100%">
          <div class="container">
            <h4><b>Geography</b></h4>
            <p>topic description</p>
          </div>
        </a>
        
    </div>
    </body>
</html>

