from django.db import models
import uuid

DELIVERY_CHOICES = (
  ('ship', 'Ship'),
  ('local', 'Local Delivery')
)

ORDER_CHOICES = (
  ('sell', 'Sell'),
  ('trade', 'Trade')
)

RATING_OPTIONS = (
  ('1', '1'),
  ('2', '2'),
  ('3', '3'),
  ('4', '4'),
  ('5', '5')
)

# Create your models here.
class User(models.Model):
    username = models.CharField(max_length=100, blank=True)
    password = models.CharField(max_length=100, blank=True)
    first_name = models.CharField(max_length=100, null=True, blank=True)
    last_name = models.CharField(max_length=100, null=True, blank=True)
    profile_photo = models.FileField(null=True, blank=True)
    street_address = models.CharField(max_length=100, null=True, blank=True)
    street_address_2 = models.CharField(max_length=100, null=True, blank=True)
    city = models.CharField(max_length=100, null=True, blank=True)
    state = models.CharField(max_length=100, null = True, blank=True)
    zip = models.CharField(max_length=100, null = True, blank=True)

    def __str__(self):
        return self.username

class Category(models.Model):
    name = models.CharField(max_length=100)

    def __str__(self):
        return self.username



class Product(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE, related_name='product')
    cateogry  = models.ManyToManyField(Category)
    name = models.CharField(max_length=100)
    price = models.FloatField(null=True)
    description = models.TextField(max_length=255, null=True, blank=True)
    image = models.FileField(null=True, blank=True)
    sale = models.BooleanField(null=False, default=True)
    trade = models.BooleanField(null=False, default=False)
    delivery_options = models.CharField(max_length=100, choices = DELIVERY_CHOICES, null=True, blank=True)

    def __str__(self):
      return self.name


class Order(models.Model):
    ORDER_STATUSES = (
      ('pending', 'Pending'),
      ('confirmed', 'Confirmed'),
      ('out_for_delivery', 'Out For Delivery'),
      ('delivered', 'Delivered'),
    )

    confirmation_number = models.UUIDField(default = uuid.uuid4, primary_key=True)
    type = models.CharField(max_length=100, choices = ORDER_CHOICES)
    user = models.ForeignKey(User, related_name='user_order', null=True, on_delete=models.SET_NULL)
    product = models.ForeignKey(User, related_name='product_order', null=True, on_delete=models.SET_NULL)
    delivery = models.CharField(max_length=100, choices = DELIVERY_CHOICES)
    status = models.CharField(max_length=100, choices = ORDER_STATUSES, default='pending')
    
    #add validator to give choices based on product.sale and product.trade
    
    def __str__(self):
        return self.confirmation_number

class User_Review(models.Model):
    id = models.AutoField(auto_created = True, primary_key=True)
    user = models.ForeignKey(User, on_delete=models.CASCADE, related_name='user_review')
    title = models.CharField(max_length=100, null=True, blank=True)
    body = models.TextField(null=True, blank=True)
    rating = models.CharField(max_length=100, choices = RATING_OPTIONS, blank=True)
    def __str__(self):
        return self.id

class Product_Review(models.Model):
    id = models.AutoField(auto_created = True, primary_key=True)
    product = models.ForeignKey(User, on_delete=models.CASCADE, related_name='product_review')
    title = models.CharField(max_length=100, null=True, blank=True)
    body = models.TextField(null=True, blank=True)
    rating = models.CharField(max_length=100, choices = RATING_OPTIONS, blank=True)
    def __str__(self):
        return self.id