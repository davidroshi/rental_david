 
         <script type="text/javascript">
            $(document).ready(function(){
               
                   obj = "";
                    
                   $.getJSON('pdo/PDO.php',function(data){
                   
                 /*   $.each(data, function( key, val) {
                        obj += "<p>"+val['id_users']+"</p><p>"+val['name_users']+"</p><p>"+val['password_users']+"</p><p>"+val['status_users']+"</p>"; 
                    $('.json').html(obj);
                    });
                 */  
                   
                  console.log(data);
                   
               });
                    
        });