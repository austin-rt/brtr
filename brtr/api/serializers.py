from rest_framework import serializers
from brtr.models import *

class UserSerializer(serializers.ModelSerializer):
    password = serializers.CharField(write_only=True)
    def create(self, validated_data):
        user = User.objects.create_user(
        username=validated_data["username"],
        password=validated_data["password"],
        )
        return user

    products = serializers.RelatedField(
        view_name='product_detail',
        many=True,
        read_only=True
    )
    reviews_written = serializers.RelatedField(
        view_name='user_review_detail',
        many=True,
        read_only=True
    )
    reviews_received = serializers.RelatedField(
        view_name='user_review_detail',
        many=True,
        read_only=True
    )

    class Meta:
        model = User
        fields = ('id', 'username', 'password', 'products', 'reviews_written', 'reviews_received')

class CategorySerializer(serializers.ModelSerializer):
    class Meta:
        model = Category
        fields = ('id', 'name')

class DeliveryChoicesSerializer(serializers.ModelSerializer):
    class Meta:
        model = DeliveryChoices
        fields = ('id', 'name')

class ProductSerializer(serializers.ModelSerializer):
    user = serializers.RelatedField(
        view_name='user_detail',
        read_only=True
    )
    category = serializers.RelatedField(
        view_name='categories_detail',
        many=True,
        read_only=True
    )
    reviews = serializers.RelatedField(
        view_name='product_review_detail',
        many=True,
        read_only=True
    )

    class Meta:
        model = Product
        fields = ('id', 'user', 'name', 'category', 'price', 'description', 'image', 'for_sale', 'for_trade', 'reviews')
        depth = 1

# class CartSerializer(serializers.ModelSerializer):
#     class Meta:
#         model = Cart
#         fields = ('products')


class OrderSerializer(serializers.ModelSerializer):
    buyer = serializers.RelatedField(
        view_name='user_detail',
        read_only=True
    )
    product = serializers.RelatedField(
        view_name='product_detail',
        read_only=True
    )

    class Meta:
        model = Order
        fields = ('id', 'confirmation_number', 'type', 'buyer', 'product')

class UserReviewSerializer(serializers.ModelSerializer):
    user = serializers.RelatedField(
        view_name='user_detail',
        read_only=True
    )
    reviewee = serializers.RelatedField(
        view_name='user_detail',
        read_only=True
    )
    class Meta:
        model = UserReview
        fields = ('id', 'user', 'reviewee', 'title', 'body', 'rating')

class ProductReviewSerializer(serializers.ModelSerializer):
    reviewer = serializers.RelatedField(
        view_name='user_detail',
        read_only=True
    )
    product = serializers.RelatedField(
        view_name='product_detail',
      read_only=True
    )

    class Meta:
        model = ProductReview
        fields = ('id', 'reviewer', 'product', 'title', 'body', 'rating')