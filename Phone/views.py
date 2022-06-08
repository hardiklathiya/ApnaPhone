from random import random
from django.shortcuts import render, redirect
from django.http import JsonResponse
import random
from Phone.models import orderInfo, myOrder, signup, category, product, cart, contact, survey
from django.contrib import messages
from django.core.paginator import Paginator


def homepage(request):
    allproduct = product.objects.all().order_by('productname')
    featured = product.objects.filter(is_featured=True)
    bestseller = product.objects.filter(is_bestseller=True)

    allcategory = category.objects.all()
    category_id = request.GET.get('category_id')
    if category_id:
        cat_list = product.objects.filter(productcat=category_id)
    else:
        cat_list = product.objects.all()

    allcart = cart.objects.filter(userId=request.session.get('name'))
    paginator = Paginator(allproduct, 6)  # Show 6 products per page.

    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)
    # cus_info = signup.objects.all()
    # cus_id = request.GET.get('id')
    # print("cust id is ::", cus_id)
    profile = signup.objects.filter(userId=request.session.get('name'))
    item = 0
    if allcart:
        for orders in allcart:
            item += orders.productqty
    return render(request, 'index.html', {'allproduct': allproduct,
                                        'allcategory': allcategory,
                                        'item': item,
                                        'page_obj': page_obj,
                                        'page_number': page_number,
                                        'cat_list': cat_list,
                                        'category_id': category_id,
                                        'profile': profile, 'featured': featured,
                                        'bestseller': bestseller})


def register(request):
    return render(request, 'registration.html')


def login(request):
    return render(request, 'login.html')


def doRegister(request):
    if request.method == 'POST':

        fullName = request.POST['name']
        userId = request.POST['userid']
        mobileNo = request.POST['mobileNo']
        email = request.POST['email']
        password = request.POST['password']
        State = request.POST['state']
        City = request.POST['city']
        Address = request.POST['address']
        Address2 = request.POST['address2']
        Pincode = request.POST['pincode']
        value = {
                'fullName': fullName,
                'userId': userId,
                'mobileNo': mobileNo,
                'email': email,
                'password': password,
                'State': State,
                'City': City,
                'Address': Address,
                'Address2': Address2,
                'Pincode': Pincode
            }
        check_user = signup.objects.filter(userId=userId)
        if (len(fullName) < 5):
            messages.error(request, "Name should be 5 characters or long")
            return render(request, 'registration.html', {'value': value})
        if (fullName.isalpha() == False):
            messages.error(request, "Name must be characters only")
            return render(request, 'registration.html', {'value': value})

        if (mobileNo.isdecimal() == False):
            messages.error(request, "Mobile Phone takes only numbers ")
            return render(request, 'registration.html', {'value': value})

        if check_user:
            messages.error(request, "Username is already taken")
            return render(request, 'registration.html', {'value': value})
        check_email = signup.objects.filter(email=email)

        if check_email:
            messages.error(request, "Email is already taken")
            return render(request, 'registration.html', {'value': value})

        if (Pincode.isdecimal() == False):
            messages.error(request, "Pincode number takes only numbers ")
            return render(request, 'registration.html', {'value': value})

        m = signup(
                fullName=fullName,
                userId=userId,
                mobileNo=mobileNo,
                email=email,
                password=password,
                State=State,
                City=City,
                Address=Address,
                Address2=Address2,
                Pincode=Pincode
            )

        m.save()
        return render(request, 'login.html')
    return render(request, 'registration.html')


def loginvalid(request):
    if request.method == 'POST':
        userId = request.POST['userid']
        password = request.POST['password']
        userdata = signup.objects.filter(
            userId=userId).filter(password=password)
        if userdata:
            request.session['name'] = userId
           
            return redirect('index')
        else:
            value = {
                'userId': userId
            }
            messages.error(
                request, "invalid credentials! Your email or password might be incorrect. Please try again.")
            return render(request, 'login.html', {'value': value})
    return render(request, 'login.html')


def logout(request):
    del request.session['name']
    return redirect('index')


def productdetails(request):
    item = 0
    allcart = cart.objects.filter(userId=request.session.get('name'))
    if allcart:
        for orders in allcart:
            item += orders.productqty
    p_id = request.GET.get('id')
    p_ent = product.objects.filter(id=p_id)
    allproduct = product.objects.all()
    allcategory = category.objects.all()
    item_cart = cart.objects.filter(userId=request.session.get(
        'name')).filter(productid_id=p_id).exists()
    return render(request, 'productdetails.html', {"product_detail": p_ent, "allproduct": allproduct,
     "allcategory": allcategory, 'item_cart': item_cart, 'item': item})


def addcart(request):
    if request.session.get('name'):
        if request.method == 'POST':
            pid = request.POST['id']
            item_cart = cart.objects.filter(userId=request.session.get(
                'name')).filter(productid_id=pid).exists()
            if item_cart == False:
                m = cart(productid_id=request.POST['id'],
                        productprice=request.POST['price'],
                        productqty=request.POST['qty'],
                        productname=request.POST['name'],
                        productimage1=request.POST['pimg'],
                        userId=request.session['name'])
                m.save()

            elif item_cart:
                pid = request.POST['id']
                obj = cart.objects.get(productid_id=pid).filter(
                    userId=request.session.get('name'))
                obj.productqty = int(obj.productqty) + 1
                obj.save()

            return redirect('viewcart')
        return redirect('viewcart')
    else:
        return redirect('loginvalid')


def minuscart(request):
    if request.method == 'POST':
        pid = request.POST['product_id']
        count = cart.objects.filter(productid_id=pid).count()
        if count > 0:
            obj = cart.objects.get(productid_id=pid)
            obj.productqty = int(obj.productqty) - 1
            if obj.productqty == 0:
                c = cart.objects.get(productid_id=pid)
                c.delete()
                messages.success(request, 'Product Updated successfully.')
                return render(request, 'emptycart.html')

            obj.save()
            messages.success(request, 'Product Updated successfully.')

    return redirect('viewcart')


def pluscart(request):
    if request.method == 'POST':
        pid = request.POST['product_id']
        count = cart.objects.filter(productid_id=pid).count()
        if count > 0:
            obj = cart.objects.get(productid_id=pid)
            obj.productqty = int(obj.productqty) + 1
            obj.save()
            messages.success(request, 'Product Updated successfully.')

    return redirect('viewcart')


def removecart(request):
    if request.method == 'POST':
        pid = request.POST['product_id']
        c = cart.objects.filter(id=pid).filter(userId=request.session['name'])
        c.delete()
    return redirect('viewcart')


def viewcart(request):
    if request.session.get('name'):
        allcart = cart.objects.filter(userId=request.session['name'])
        allcategory = category.objects.all()
        total = 0
        item = 0
        if allcart:
            for orders in allcart:
                item += orders.productqty
                total += ((orders.productprice)*(orders.productqty))
            return render(request, 'viewcart.html', {"allcart": allcart,  "total": total,  "item": item, 'allcategory': allcategory})
        else:
            return render(request, 'emptycart.html', {'item': item})

        # return render(request,'viewcart.html')
    else:
        return redirect('loginvalid')


def contactus(request):
    allcategory = category.objects.all()
    allcart = cart.objects.filter(userId=request.session.get('name'))
    item = 0
    if allcart:
        for orders in allcart:
            item += orders.productqty
    if request.method == "POST":

        m = contact(
            name=request.POST.get('c_name'),
            Email=request.POST.get('email'),
            MobileNo=request.POST.get('c_mobileno'),
            subject=request.POST.get('subject')
        )
        m.save()  
    return render(request, 'contact.html', {'allcategory': allcategory, 'item': item})


def checkout(request):
    allcart = cart.objects.filter(userId=request.session.get('name'))
    total = 0
    item = 0
    if allcart:
        for orders in allcart:
            item += orders.productqty
            total += ((orders.productprice)*(orders.productqty))

    return render(request, 'checkout.html', {'allcart': allcart,
    "total": total,
    "item": item})


def about(request):
    return render(request, 'about.html')


def orderplaced(request):
    if request.method == 'POST':
        print("inside orderplaced")
        orderno = random.randint(10000000, 99999999)
        m = myOrder(
                    C_Name=request.POST.get('c_name'),
                    C_mobileNo=request.POST.get('c_mobile'),
                    C_email=request.POST.get('c_email'),
                    state=request.POST.get('state'),
                    city=request.POST.get('city'),
                    address=request.POST.get('address'),
                    address2=request.POST.get('address2'),
                    c_pincode=request.POST.get('zipcode'),
                    amount=request.POST.get('amount'),
                    payment_mode=request.POST.get('payment_mode'),
                    payment_id=request.POST.get('payment_id'),
                    orderId=orderno,
                    userId=request.session['name']
        )
        m.save()

        cartdata = cart.objects.filter(userId=request.session.get('name'))
        newid = myOrder.objects.latest('id')
        for i in cartdata:
            orderInfo.objects.create(
                    p_name=i.productname,
                    productimg=i.productimage1,
                    p_price=i.productprice,
                    p_qty=i.productqty,
                    orderInfo=newid,
                    payment_mode=request.POST.get('payment_mode'),
                    payment_id=request.POST.get('payment_id'),

                    userId=request.session['name']
                )
        messages.success(request, 'your order has been placed successfully')
        c = cart.objects.filter(userId=request.session['name'])
        c.delete()
        payMode = request.POST.get('payment_mode')
        if payMode == "Paid by RazorPay":
            return JsonResponse({'status': 'your order has been placed successfully'})
        return redirect('checkout')


def search(request):
    allcategory = category.objects.all()
    item = 0
    allcart = cart.objects.filter(userId=request.session.get('name'))
    if allcart:
        for orders in allcart:
            item += orders.productqty

    search = request.GET['search']

    if search:
        if len(search) > 50:
            allproduct = product.objects.none()
        else:
            allproduct = product.objects.filter(productname__icontains=search)
            # allproductdec=product.objects.filter(productdec1__icontains=search)
            # allproduct=allproductName.union(allproductdec)

        if allproduct.count() == 0:
            messages.warning(
                request, 'No Search Results found. Please refine your query')
        results = len(allproduct)
        query = {'allproduct': allproduct, 'search': search,
        'results': results, 'allcategory': allcategory, 'allcart': allcart,
        'item': item}

        return render(request, 'search.html', query)
    else:
        return redirect('index')


def buy_now(request):
    if request.session.get('name'):
        if request.method == 'POST':
            pid = request.POST['id']
            item_cart = cart.objects.filter(productid_id=pid).exists()
            if item_cart == False:
                m = cart(productid_id=request.POST['id'],
                        productprice=request.POST['price'],
                        productqty=request.POST['qty'],
                        productname=request.POST['name'],
                        productimage1=request.POST['pimg'])
                m.save()

            return redirect('checkout')
        return redirect('checkout')
    else:
        return redirect('loginvalid')


def orders(request):
    item = 0
    allcart = cart.objects.filter(userId=request.session.get('name'))
    if allcart:
        for orders in allcart:
            item += orders.productqty
    orderdata = myOrder.objects.filter(userId=request.session.get('name'))
    return render(request, 'orders.html', {'orderdata': orderdata, 'item': item})


def order_item(request):
    item = 0
    allcart = cart.objects.filter(userId=request.session.get('name'))
    if allcart:
        for orders in allcart:
            item += orders.productqty
    order_item = request.GET.get('id')
    order_data = orderInfo.objects.filter(orderInfo=order_item).filter(
        userId=request.session.get('name'))
    return render(request, 'order_item.html', {'orderdata': order_data, 'item': item})


def profile(request):
    item = 0
    allcart = cart.objects.filter(userId=request.session.get('name'))
    if allcart:
        for orders in allcart:
            item += orders.productqty
    profile = signup.objects.filter(userId=request.session.get('name'))

    # profile=signup.objects.filter(userId=cus_id)
    return render(request, 'profile.html', {'profile': profile, 'item': item})


def address(request):
    item = 0
    allcart = cart.objects.filter(userId=request.session.get('name'))
    if allcart:
        for orders in allcart:
            item += orders.productqty
    profile = signup.objects.filter(userId=request.session.get('name'))
    return render(request, 'address.html', {'profile': profile, 'item': item})


def personal_info(request):
    item = 0
    allcart = cart.objects.filter(userId=request.session.get('name'))
    if allcart:
        for orders in allcart:
            item += orders.productqty
    profile = signup.objects.filter(userId=request.session.get('name'))
    return render(request, 'personal_info.html', {'profile': profile, 'item': item})


def mobile(request, data=None):

    allcategory = category.objects.all()
    category_id = request.GET.get('category_id')
    allproduct = product.objects.all()
    item = 0
    allcart = cart.objects.filter(userId=request.session.get('name'))
    if allcart:
        for orders in allcart:
            item += orders.productqty
    if category_id:
        cat_list = product.objects.filter(productcat=category_id)
    elif data == None:
        cat_list = product.objects.all()

    elif data == 'below_10000':
        cat_list = product.objects.filter(
            productprice__lt=10000).order_by('productprice')

    elif data == 'bet_10k-20k':
        cat_list = product.objects.filter(productprice__lt=20000).filter(
            productprice__gt=10000).order_by('productprice')
    elif data == 'bet_20k-30k':
        cat_list = product.objects.filter(productprice__lt=30000).filter(
            productprice__gt=20000).order_by('productprice')
    elif data == 'bet_30k-40k':
        cat_list = product.objects.filter(productprice__lt=40000).filter(
            productprice__gt=30000).order_by('productprice')
    elif data == 'bet_40k-50k':
        cat_list = product.objects.filter(productprice__lt=50000).filter(
            productprice__gt=40000).order_by('productprice')
    elif data == 'above_50k':
        cat_list = product.objects.filter(
            productprice__gt=50000).order_by('productprice')
    else:
        cat_list = product.objects.all()

    context = ({'cat_list': cat_list, 'allcategory': allcategory, 'item': item, 'allproduct': allproduct
    })
    return render(request, 'mobile.html', context)


def surveyForm(request):
    if request.method == "POST":
  
        U_name = request.POST.get('name'),
        Email = request.POST.get('email'),
        preference = request.POST.get('textfield')
        m=survey(
            U_name=U_name,
            Email=Email,
            preference=preference
        )
        m.save()
        print(U_name,Email,preference)
    
    return redirect("/")