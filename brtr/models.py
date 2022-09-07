# import uuid
# from django.db import models
# from django.contrib.auth import get_user_model

# User=get_user_model()

# DELIVERY_CHOICES = (
#   ('ship', 'Ship'),
#   ('local', 'Local Delivery')
# )

# ORDER_CHOICES = (
#   ('buy', 'Buy'),
#   ('trade', 'Trade')
# )

# RATING_OPTIONS = (
#   ('1', '1'),
#   ('2', '2'),
#   ('3', '3'),
#   ('4', '4'),
#   ('5', '5')
# )

# class DeliveryChoices(models.Model):
#     choice = models.CharField(max_length=100)
    
#     def __str__(self):
#         return self.choice

# class Category(models.Model):
#     name = models.CharField(max_length=100)

#     def __str__(self):
#         return self.name

# class Product(models.Model):
#     user = models.ForeignKey(User, on_delete=models.CASCADE, related_name='products')
#     category  = models.ManyToManyField(Category)
#     name = models.CharField(max_length=100)
#     price = models.FloatField(null=True)
#     description = models.TextField(max_length=255, null=True, blank=True)
#     image = models.FileField(null=True, blank=True)
#     for_sale = models.BooleanField(default=True)
#     for_trade = models.BooleanField(default=False)
#     delivery_options = models.ManyToManyField(DeliveryChoices)

#     def __str__(self):
#       return self.name

# class Order(models.Model):
#     ORDER_STATUSES = (
#       ('pending', 'Pending'),
#       ('confirmed', 'Confirmed'),
#       ('out_for_delivery', 'Out For Delivery'),
#       ('delivered', 'Delivered'),
#     )
#     id = models.BigAutoField(primary_key=True, )
#     confirmation_number = models.UUIDField(default = uuid.uuid4)
#     type = models.CharField(max_length=100, choices = ORDER_CHOICES)
#     buyer = models.ForeignKey(User, related_name='user_order', null=True, on_delete=models.SET_NULL)
#     product = models.ForeignKey(Product, related_name='product_order', null=True, on_delete=models.SET_NULL)
#     delivery = models.CharField(max_length=100, choices = DELIVERY_CHOICES)
#     status = models.CharField(max_length=100, choices = ORDER_STATUSES, default='pending')
#     date_placed = models.DateTimeField(auto_now=True, null=True)
#     # add validator to give choices based on product.for_sale and product.for_trade
    
#     def __str__(self):
#         return str(self.confirmation_number)

# class UserReview(models.Model):
#     id = models.AutoField(auto_created = True, primary_key=True)
#     user = models.ForeignKey(User, on_delete=models.CASCADE, related_name='reviews_written')
#     reviewee = models.ForeignKey(User, on_delete=models.CASCADE, related_name='reviews_received')
#     title = models.CharField(max_length=100, null=True, blank=True)
#     body = models.TextField(null=True, blank=True)
#     rating = models.CharField(max_length=100, choices = RATING_OPTIONS, blank=True)
    
#     def __str__(self):
#         return ('{reviewee} review {id}'.format(reviewee=self.reviewee, id=self.id))

# class ProductReview(models.Model):
#     id = models.AutoField(auto_created = True, primary_key=True)
#     reviewer = models.ForeignKey(User, on_delete=models.CASCADE, related_name='product_reviewer')
#     product = models.ForeignKey(Product, on_delete=models.CASCADE, related_name='reviews')
#     title = models.CharField(max_length=100, null=True, blank=True)
#     body = models.TextField(null=True, blank=True)
#     rating = models.CharField(max_length=100, choices = RATING_OPTIONS, blank=True)
    
#     def __str__(self):
#         return '{product} review {id}'.format(product=self.product, id=self.id)