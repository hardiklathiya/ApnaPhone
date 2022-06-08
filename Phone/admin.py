from django.contrib import admin
from .models import category, myOrder, orderInfo,product,contact,signup,survey
from django.utils.html import format_html
# Register your models here.

class categoryAdmin(admin.ModelAdmin):
    model = category
    list_display = ['categoryname','catimage']
    def catimage(self,obj):
        return format_html(f'<img src="/pimage/{obj.categoryimage }" width="50px" height="30px">')

admin.site.register(category,categoryAdmin)

class productAdmin(admin.ModelAdmin):
    model=product
    list_display = ['productdetails','name','price','MRP','image','product_quantity','is_featured','is_bestseller']
    list_display_links=['name','price','MRP','product_quantity']
    list_filter=['is_featured','is_bestseller','upload_date']
    list_per_page = 5
    # readonly_fields=['image']
    # save_on_top=True
    def name(self,obj):
        return format_html(f'<span>{obj.productname[0:30]+"..."}</span>')
    def price(self,obj):
        return format_html(f'<span style="color:orange;">{obj.productprice}</span>')
    def MRP(self,obj):
        return format_html(f'<span style="color:orange;">{obj.productmrp}</span>')
    def image(self,obj):
        return format_html(f'<img src="/pimage/{obj.productimage1}" width="100px" height="100px">')
    def productdetails(self,obj):
        return format_html(f'<a href="http://127.0.0.1:8000/admin/Phone/product/{obj.id}/change/" style="color:white;">View</a>')

admin.site.register(product,productAdmin)
class contactAdmin(admin.ModelAdmin):
    list_display=['msg_id','name','MobileNo','Email','subject']
admin.site.register(contact,contactAdmin)

class myOrderAdmin(admin.ModelAdmin):
    list_editable=['status']    
    list_display=['userId','orderId','amount','payment_mode','payment_id','status']
admin.site.register(myOrder,myOrderAdmin)
admin.site.register(orderInfo)

class customer(admin.ModelAdmin):
    list_display=['fullName','userId','mobileNo']
admin.site.register(signup,customer)

class surveyAdmin(admin.ModelAdmin):
    list_display=['U_name','Email','preference']
admin.site.register(survey,surveyAdmin)