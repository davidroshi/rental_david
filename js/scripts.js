
            $(document).ready(function(){
               
                   obj = "";
                    
                   $.getJSON('pdo/PDO_conn.php',function(data){
                   
                 /*   $.each(data, function( key, val) {
                        obj += "<p>"+val['id_users']+"</p><p>"+val['name_users']+"</p><p>"+val['password_users']+"</p><p>"+val['status_users']+"</p>"; 
                    $('.json').html(obj);
                    });
                 */  
                   
                  console.log(data);
                   
               });
                  
                
                var myLooper = $('.looper').data('looperjs');
                
                $('.looper').looper({
                    interval: 3000
                });

            });
            
             

             $(document).ready(function(){
               
                     $('#rent').click(function(){
                      window.location.href = "../RentCar/rentcar.php";
                     });
                     
                       $('#return').click(function(){
                       window.location.href = "../RentCar/returncar.php";
                     });
                     
                      $('#reports').click(function(){
                       window.location.href = "../RentCar/reports.php";
                     });
            });
            
       