from django.contrib import admin
from .models import User, Category, Product, Order, User_Review, Product_Review
admin.site.register(User)
admin.site.register(Category)
admin.site.register(Product)
admin.site.register(Order)
admin.site.register(User_Review)
admin.site.register(Product_Review)

# Register your models here.
