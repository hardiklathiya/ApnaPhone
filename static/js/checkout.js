$(document).ready(function(){
    $('.RazorPay ').click(function(e){
        e.preventDefault();
        var c_name=$("[name='c_name']").val();
        var c_email=$("[name='c_email']").val();
        var c_mobile=$("[name='c_mobile']").val();
        var address=$("[name='address']").val();
        var address2=$("[name='address2']").val();
        var city=$("[name='city']").val();
        var state=$("[name='state']").val();
        var zipcode=$("[name='zipcode']").val();
        var token=$("[name='csrfmiddlewaretoken']").val();

        if (c_name =="" | c_email =="" | c_mobile=="" | address =="" | address2==""|city==""|state==""|zipcode=="")
        {
            swal("Alert!", "All the fields are mandatory!","error");
            
        }
        else{
            
            $.ajax({
                method:"GET",
                url:"proceed-to-pay",
                success:function(responsea){
                    var options = {
                        "key": "rzp_test_JjctKLxiA3zHAO",                   // Enter the Key ID generated from the Dashboard
                        "amount":1*100,//response.total_price*100,          // Amount is in currency subunits. Default currency is INR. Hence, 50000 refers to 50000 paise
                        "currency": "INR",
                        "name": "Apna Phone",
                        "description": "Thank you for buying from us",
                        "handler": function (responseb){
                            alert(responseb.razorpay_payment_id);
                            data={
                                 "c_name":c_name,     
                                 "c_email":c_email,
                                 "c_mobile":c_mobile,
                                 "address":address,
                                 "address2":address2,
                                 "city":city,
                                 "state":state,
                                 "zipcode":zipcode,
                                 "payment_mode":"Paid by RazorPay",
                                 "payment_id":responseb.razorpay_payment_id,
                                 csrfmiddlewaretoken:token
                            }
                            $.ajax({
                                method:"POST",
                                url:"/orderplaced",
                                data:data,
                                success:function(responsec){
                                    swal("Congratulations!!", responsec.status,"success").then(()=>{
                                        window.location.href='myorders'
                                    });

                                }
                            });
                        },
                        "prefill": {
                            "name":c_name,
                            "email": c_email,
                            "contact": c_mobile
                        },
                        "theme": {
                            "color": "#3399cc"
                        }
                    };
                    var rzp1 = new Razorpay(options);
                    
                        rzp1.open();
                }                
            });
            
        }
       
        
    })

    
})