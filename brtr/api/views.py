from rest_framework import generics
from rest_framework.response import Response
from rest_framework.decorators import api_view, permission_classes
from rest_framework.permissions import *
from rest_framework_simplejwt.serializers import TokenObtainPairSerializer
from rest_framework_simplejwt.views import TokenObtainPairView
from .serializers import *
from brtr.models import *

@permission_classes([IsAuthenticated])
class UserList(generics.ListCreateAPIView):
    queryset = User.objects.all()
    serializer_class = UserSerializer

@permission_classes([IsAuthenticated])
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

# class CartDetail(generics.RetrieveUpdateDestroyAPIView):
#     queryset = Cart.objects.all()
#     serializer_class = CartSerializer

@permission_classes([IsAuthenticated])
class OrderList(generics.ListCreateAPIView):
    queryset = Order.objects.all()
    serializer_class = OrderSerializer

@permission_classes([IsAuthenticated])
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

class MyTokenObtainPairSerializer(TokenObtainPairSerializer):
    @classmethod
    def get_token(cls, user):
        token = super().get_token(user)

        token['username'] = user.username

        return token

class MyTokenObtainPairView(TokenObtainPairView):
    serializer_class = MyTokenObtainPairSerializer

@api_view(['GET'])
def get_routes(request):
    routes = [
      '/api/token',
      '/api/token/refresh',
    ]

    return Response(routes)