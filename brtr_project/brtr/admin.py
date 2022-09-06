from django.contrib import admin
from .models import DeliveryChoices, User, Category, Product, Order, UserReview, ProductReview
admin.site.register(DeliveryChoices)
admin.site.register(User)
admin.site.register(Category)
admin.site.register(Product)
admin.site.register(Order)
admin.site.register(UserReview)
admin.site.register(ProductReview)

# Register your models here.
