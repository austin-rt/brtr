from django.db import models

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
    username = models.CharField(max_length=100)
    password = models.CharField(max_length=100)
    first_name = models.CharField(max_length=100)
    last_name = models.CharField(max_length=100)
    profile_photo = models.FileField(null=True)
    street_address = models.CharField(max_length=100)
    street_address_2 = models.CharField(max_length=100)
    city = models.CharField(max_length=100)
    state = models.CharField(max_length=100)
    zip = models.CharField(max_length=100)

    def __str__(self):
        return self.username

class Category(models.Model):
    name = models.CharField(max_length=100)

    def __str__(self):
        return self.username



class Product(models.Model):
    user_id = models.ForeignKey(User, on_delete=models.CASCADE, related_name='product')
    cateogry_id = models.ForeignKey(Category, default='MISC', on_delete = models.SET_DEFAULT, related_name='product')
    name = models.CharField(max_length=100)
    description = models.TextField(max_length=255)
    image = models.FileField(null=True)
    sale = models.BooleanField(null=False, default=True)
    trade = models.BooleanField(null=False, default=False)
    delivery_options = models.CharField(max_length=100, choices = DELIVERY_CHOICES)
    
    def __str__(self):
      return self.name


class Order(models.Model):
    id = models.AutoField(auto_created = True, primary_key=True)
    type = models.CharField(max_length=100, choices = ORDER_CHOICES)
    user_id = models.ForeignKey(User, related_name='user_order', default='Deleted User',on_delete=models.SET_DEFAULT)
    product_id = models.ForeignKey(User, related_name='product_order', default='Deleted Product',on_delete=models.SET_DEFAULT)
    delivery = models.CharField(max_length=100, choices = DELIVERY_CHOICES)
    
    #add validator to give choices based on product.sale and product.trade
    
    def __str__(self):
        return self.id

class User_Review(models.Model):
    id = models.AutoField(auto_created = True, primary_key=True)
    user_id = models.ForeignKey(User, on_delete=models.CASCADE, related_name='user_review')
    title = models.CharField(max_length=100)
    body = models.TextField()
    rating = models.CharField(max_length=100, choices = RATING_OPTIONS)
    def __str__(self):
        return self.id

class Product_Review(models.Model):
    id = models.AutoField(auto_created = True, primary_key=True)
    product_id = models.ForeignKey(User, on_delete=models.CASCADE, related_name='product_review')
    title = models.CharField(max_length=100)
    body = models.TextField()
    rating = models.CharField(max_length=100, choices = RATING_OPTIONS)
    def __str__(self):
        return self.id