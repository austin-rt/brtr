from rest_framework import serializers
from brtr.models import *

class ProductReviewSerializer(serializers.ModelSerializer):
    class Meta:
        model = ProductReview
        fields = ('id', 'reviewer', 'product', 'title', 'body', 'rating')
        depth = 1

class UserReviewSerializer(serializers.ModelSerializer):
    class Meta:
        model = UserReview
        fields = ('id', 'user', 'reviewee', 'title', 'body', 'rating')
        depth = 1

class OrderSerializer(serializers.ModelSerializer):
    class Meta:
        model = Order
        fields = ('id', 'confirmation_number', 'type', 'buyer', 'product')
        depth = 1

# class CartSerializer(serializers.ModelSerializer):
#     class Meta:
#         model = Cart
#         fields = ('products')

class CategorySerializer(serializers.ModelSerializer):
    class Meta:
        model = Category
        fields = ('id', 'name')

class DeliveryChoicesSerializer(serializers.ModelSerializer):
    class Meta:
        model = DeliveryChoices
        fields = ('id', 'name')

class ProductSerializer(serializers.ModelSerializer):
    class Meta:
        model = Product
        fields = ('id', 'user', 'name', 'category', 'price', 'description', 'image', 'for_sale', 'for_trade', 'reviews')
        depth = 2

class UserSerializer(serializers.ModelSerializer):
    password = serializers.CharField(write_only=True)
    def create(self, validated_data):
        user = User.objects.create_user(
        username=validated_data["username"],
        password=validated_data["password"],
        )
        return user

    products = ProductSerializer(read_only=True, many=True)

    reviews_written = UserReviewSerializer(
        many=True,
        read_only=True
    )
    reviews_received = UserReviewSerializer(
        many=True,
        read_only=True
    )

    class Meta:
        model = User
        fields = ('id', 'username', 'password', 'products', 'reviews_written', 'reviews_received')