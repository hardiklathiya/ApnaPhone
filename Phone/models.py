from http.client import MULTIPLE_CHOICES
from turtle import up
from unittest.util import _MAX_LENGTH
from django.db import models
STATE_CHOICES = (
  ('Andhra Pradesh','Andhra Pradesh'),
  ('Arunachal Pradesh','Arunachal Pradesh'),
  ('Assam','Assam'),
  ('Bihar','Bihar'),
  ('Chandigarh','Chandigarh'),
  ('Chhattisgarh','Chhattisgarh'),
  ('Delhi','Delhi'),
  ('Goa','Goa'),
  ('Gujarat','Gujarat'),
  ('Haryana','Haryana'),
  ('Himachal Pradesh','Himachal Pradesh'),
  ('Jammu & Kashmir','Jammu & Kashmir'),
  ('Jharkhand','Jharkhand'),
  ('Karnataka','Karnataka'),
  ('Kerala','Kerala'),
  ('Madhya Pradesh','Madhya Pradesh'),
  ('Maharashtra','Maharashtra'),
  ('Manipur','Manipur'),
  ('Meghalaya','Meghalaya'),
  ('Mizoram','Mizoram'),
  ('Nagaland','Nagaland'),
  ('Odisha','Odisha'),
  ('Puducherry','Puducherry'),
  ('Punjab','Punjab'),
  ('Rajasthan','Rajasthan'),
  ('Sikkim','Sikkim'),
  ('Tamil Nadu','Tamil Nadu'),
  ('Telangana','Telangana'),
  ('Tripura','Tripura'),
  ('Uttarakhand','Uttarakhand'),
  ('Uttar Pradesh','Uttar Pradesh'),
  ('West Bengal','West Bengal'),
)
# Create your models here.

class signup(models.Model):
    fullName = models.CharField(max_length=20, blank=False)
    userId = models.CharField(max_length=30, blank=False)
    mobileNo = models.CharField(max_length=30, blank=True)
    email = models.EmailField(max_length=30, blank=False)      
    password = models.CharField(max_length=30, blank=False)
    State=models.CharField(max_length=30,blank=True)
    City=models.CharField(max_length=20,blank=True)
    Address=models.TextField(max_length=30,blank=True)
    Address2=models.TextField(max_length=30,blank=True)
    Pincode=models.IntegerField(max_length=6,blank=True,null=False)
    Registered_time=models.DateTimeField(auto_now_add=True,blank=False,null=True)
    def __str__(self):
        return str(self.userId)        


class category(models.Model):
    categoryname = models.CharField(max_length=150,blank=True)
    categoryimage = models.FileField(blank=True)

    def __str__(self):
        return self.categoryname

class product(models.Model):
    productcat = models.ForeignKey(category, on_delete=models.CASCADE)
    productname = models.CharField(max_length=1501,blank=True)
    productprice = models.IntegerField(max_length=10,blank=True)
    productmrp = models.IntegerField(max_length=10,blank=True)
    productdisc = models.IntegerField(max_length=10,blank=True)
    productdec1 = models.CharField(max_length=1000,blank=True)
    productdec2 = models.CharField(max_length=1000,blank=True)
    productdec3 = models.CharField(max_length=1000,blank=True)
    productdec4 = models.CharField(max_length=1000,blank=True)
    productdec5 = models.CharField(max_length=1000,blank=True)
    productdisplay = models.FileField(upload_to="product_display",blank=True)     
    productimage1 = models.FileField(upload_to="prod_img1",blank=True)
    productimage2 = models.FileField(upload_to="prod_img2",blank=True)
    productimage3 = models.FileField(upload_to="prod_img3",blank=True)
    productavaib = models.CharField(max_length=30,blank=True,default="In Stock")
    product_quantity=models.PositiveBigIntegerField()
    is_featured=models.BooleanField(default=False)
    is_bestseller=models.BooleanField(default=False)
    bestseller_display=models.FileField(upload_to="bestseller_products",blank=True)
    upload_date=models.DateTimeField(auto_now_add=True,blank=False,null=True)
    def __str__(self):
        return self.productname

class cart(models.Model):
    productid = models.ForeignKey(product, on_delete=models.CASCADE)
    productname = models.CharField(max_length=150,blank=True)
    productimage1 = models.CharField(max_length=100,blank=True)
    productprice = models.IntegerField(max_length=10,blank=True)
    productqty = models.PositiveIntegerField(max_length=10,blank=True)
    userId = models.CharField(max_length=30)
    create_date=models.DateTimeField(auto_now_add=True,blank=False,null=True)


class contact(models.Model):
    msg_id=models.AutoField(primary_key=True)
    name = models.CharField(max_length=20, blank=False,default="",null=True)
    MobileNo = models.CharField(max_length=10, blank=True,default="",null=True)
    Email = models.EmailField(max_length=30, blank=False,default="",null=True)  
    subject=models.CharField(max_length=500,blank=False,default="",null=True)
    def __str__(self):
        return str(self.name)


class myOrder(models.Model):
    orderId=models.IntegerField(blank=False,max_length=6)
    C_Name = models.CharField(max_length=20, blank=False)
    C_mobileNo = models.CharField(max_length=30, blank=False)
    C_email = models.EmailField(max_length=30, blank=False)      
    address=models.TextField(max_length=30,blank=False)
    address2=models.TextField(max_length=30,blank=False)
    state=models.CharField(choices=STATE_CHOICES ,max_length=30,blank=False)
    city=models.CharField(max_length=20,blank=False)
    c_pincode=models.IntegerField(max_length=6,blank=False)
    amount=models.IntegerField(blank=False)
    payment_mode=models.CharField(max_length=150,null=False)
    payment_id=models.CharField( max_length=50,null=True)
    orderStatus=(
        ('pending','pending'),
        ('out for shopping','out for shopping'),
        ('completed','completed')
    )
    status=models.CharField(choices=orderStatus,max_length=150,default='pending')
    create_date=models.DateTimeField(auto_now_add=True,blank=False,null=True)
    userId = models.CharField(max_length=30,blank=True)

    def __str__(self):
        return str(self.id)        


class orderInfo(models.Model):
    orderInfo = models.ForeignKey(myOrder, on_delete=models.CASCADE)
    # product = models.ForeignKey(cart, on_delete=models.CASCADE)
    p_name = models.CharField(max_length=1500,blank=True)
    productimg = models.CharField(max_length=100,blank=True)
    p_price = models.IntegerField(max_length=1000,blank=True)
    p_qty = models.PositiveIntegerField(max_length=10,blank=True)
    userId = models.CharField(max_length=30,blank=True)
    payment_mode=models.CharField(max_length=150,null=True)
    payment_id=models.CharField( max_length=50,null=True)

    def __str__(self):
        return self.orderInfo  

class survey(models.Model):
    survey_id=models.AutoField(primary_key=True)
    U_name = models.CharField(max_length=20, blank=False,null=True)
    Email = models.EmailField(max_length=30, blank=False,null=True)  
    preference=models.CharField(max_length=500,blank=False,null=True)
    def __str__(self):
        return (self.U_name) 