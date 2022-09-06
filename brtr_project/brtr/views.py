from .serializers import UserSerializer, ProductSerializer, CategorySerializer, ProductSerializer, DeliveryChoicesSerializer, OrderSerializer, UserReviewSerializer, ProductReviewSerializer 
from .models import User, Product, Category, DeliveryChoices, Order, UserReview, ProductReview
from rest_framework import generics



class UserList(generics.ListCreateAPIView):
    queryset = User.objects.all()
    serializer_class = UserSerializer

class UserDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = User.objects.all()
    serializer_class = UserSerializer

class ProductList(generics.ListCreateAPIView):
    queryset = Product.objects.all()
    serializer_class = ProductSerializer

class ProductDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Product.objects.all()
    serializer_class = ProductSerializer

class CategoryList(generics.ListCreateAPIView):
    queryset = Category.objects.all()
    serializer_class = CategorySerializer

class CategoryDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Category.objects.all()
    serializer_class = CategorySerializer

class DeliveryChoicesList(generics.ListCreateAPIView):
    queryset = DeliveryChoices.objects.all()
    serializer_class = DeliveryChoicesSerializer

class DeliveryChoicesDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = DeliveryChoices.objects.all()
    serializer_class = DeliveryChoicesSerializer

class OrderList(generics.ListCreateAPIView):
    queryset = Order.objects.all()
    serializer_class = OrderSerializer

class OrderDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Order.objects.all()
    serializer_class = OrderSerializer

class UserReviewList(generics.ListCreateAPIView):
    queryset = UserReview.objects.all()
    serializer_class = UserReviewSerializer

class UserReviewDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = UserReview.objects.all()
    serializer_class = UserReviewSerializer

class ProductReviewList(generics.ListCreateAPIView):
    queryset = ProductReview.objects.all()
    serializer_class =ProductReviewSerializer

class ProductReviewDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = ProductReview.objects.all()
    serializer_class = ProductReviewSerializer