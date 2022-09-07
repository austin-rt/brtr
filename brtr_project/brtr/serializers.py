from rest_framework import serializers
from .models import User, Category, DeliveryChoices, Product, Order, UserReview, ProductReview

class UserSerializer(serializers.HyperlinkedModelSerializer):
    products = serializers.HyperlinkedRelatedField(
        view_name='product_detail',
        many=True,
        read_only=True
    )
    reviews_written = serializers.HyperlinkedRelatedField(
        view_name='user_review_detail',
        many=True,
        read_only=True
    )
    reviews_received = serializers.HyperlinkedRelatedField(
        view_name='user_review_detail',
        many=True,
        read_only=True
    )

    class Meta:
        model = User
        fields = ('id', 'username', 'password','products', 'reviews_written', 'reviews_received')

class CategorySerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Category
        fields = ('id', 'name')

class DeliveryChoicesSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = DeliveryChoices
        fields = ('id', 'name')

class ProductSerializer(serializers.HyperlinkedModelSerializer):
    user = serializers.HyperlinkedRelatedField(
        view_name='user_detail',
        read_only=True
    )
    category = serializers.HyperlinkedRelatedField(
        view_name='categories_detail',
        many=True,
        read_only=True
    )
    reviews = serializers.HyperlinkedRelatedField(
        view_name='product_review_detail',
        many=True,
        read_only=True
    )

    class Meta:
        model = Product
        fields = ('id', 'user', 'name', 'category', 'price', 'description', 'image', 'for_sale', 'for_trade', 'reviews')

class OrderSerializer(serializers.HyperlinkedModelSerializer):
    user = serializers.HyperlinkedRelatedField(
        view_name='user_detail',
        read_only=True
    )
    reviewee = serializers.HyperlinkedRelatedField(
        view_name='user_detail',
        read_only=True
    )
    product = serializers.HyperlinkedRelatedField(
        view_name='product_detail',
        read_only=True
    )

    class Meta:
        model = Order
        fields = ('id', 'confirmation_number', 'type', 'buyer', 'product')

class UserReviewSerializer(serializers.HyperlinkedModelSerializer):
    user = serializers.HyperlinkedRelatedField(
        view_name='user_detail',
        read_only=True
    )
    reviewee = serializers.HyperlinkedRelatedField(
        view_name='user_detail',
        read_only=True
    )
    class Meta:
        model = UserReview
        fields = ('id', 'user', 'reviewee', 'title', 'body', 'rating')

class ProductReviewSerializer(serializers.HyperlinkedModelSerializer):
    reviewer = serializers.HyperlinkedRelatedField(
        view_name='user_detail',
        read_only=True
    )
    product = serializers.HyperlinkedRelatedField(
      view_name='product_detail',
      read_only=True
    )

    class Meta:
        model = ProductReview
        fields = ('id', 'reviewer', 'product', 'title', 'body', 'rating')