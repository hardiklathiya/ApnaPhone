from django.urls import path
from . import views

urlpatterns = [
    path('', views.homepage, name='index'),
    path("index", views.homepage, name="index"),
    path('register', views.register, name='registration'),
    path('regDb', views.doRegister, name='register'),
    path('login', views.login, name='login'),
    path('loginvalid', views.loginvalid, name='loginvalid'),
    path('logout',views.logout,name="logout"),
    path('productdetails',views.productdetails,name='productdetails'),
    path('addcart',views.addcart,name="addcart"),
    path('viewcart',views.viewcart,name="viewcart"),
    path('minuscart',views.minuscart,name="minuscart"),
    path('pluscart',views.pluscart,name="pluscart"),
    path('removecart',views.removecart,name="removecart"),
    path('checkout',views.checkout,name="checkout"),
    path('mobile/', views.mobile, name='mobile'),
    path('mobile/<slug:data>', views.mobile, name='mobiledata'),
    path('orderplaced',views.orderplaced,name="orderplaced"),
    path("about", views.about, name="about"),
    path('search',views.search,name="search"),
    path('search/<slug:data>',views.search,name="searchdata"),
    path("contact", views.contactus, name="contact"),
    path('profile',views.profile,name="profile"),
    path("personal_info",views.personal_info,name="personal_info"),
    path('myorders',views.orders,name="myorders"),
    path('order_item',views.order_item,name="myorder_item"),
    path("buy_now",views.buy_now,name="buy_now"),
    path("address",views.address,name="address"),
    path("survey",views.surveyForm,name="survey"),

]
