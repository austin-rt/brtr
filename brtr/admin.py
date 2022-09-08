from django.contrib import admin
from .models import *

admin.site.register(DeliveryChoices)
# admin.site.register(Cart)
admin.site.register(Category)
admin.site.register(Product)
admin.site.register(Order)
admin.site.register(UserReview)
admin.site.register(ProductReview)