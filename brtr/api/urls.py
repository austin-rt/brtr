#
from django.urls import path
from . import views

from .views import MyTokenObtainPairView

from rest_framework_simplejwt.views import (
    TokenObtainPairView,
    TokenRefreshView,
)

urlpatterns = [
  path('', views.get_routes),
  path('token/', MyTokenObtainPairView.as_view(), name='token_obtain_pair'),
  path('token/refresh/', TokenRefreshView.as_view(), name='token_refresh'),
  path('users/', views.UserList.as_view(), name='user_list'),
  path('users/<int:pk>', views.UserDetail.as_view(), name='user_detail'),
  path('products/', views.ProductList.as_view(), name='product_list'),
  path('products/<int:pk>', views.ProductDetail.as_view(), name='product_detail'),
  path('categories/', views.CategoryList.as_view(), name='categories_list'),
  path('categories/<int:pk>', views.CategoryDetail.as_view(), name='categories_detail'),
  path('orders/', views.OrderList.as_view(), name='order_list'),
  path('orders/<int:pk>', views.OrderDetail.as_view(), name='order_detail'),
  path('delivery/', views.DeliveryChoicesList.as_view(), name='delivery_list'),
  path('deliveries/<int:pk>', views.DeliveryChoicesDetail.as_view(), name='delivery_detail'),
  path('user_reviews/', views.UserReviewList.as_view(), name='user_review_list'),
  path('user_reviews/<int:pk>', views.UserReviewDetail.as_view(), name='user_review_detail'),
  path('product_reviews/', views.ProductReviewList.as_view(), name='product_review_list'),
  path('product_reviews/<int:pk>', views.ProductReviewDetail.as_view(), name='product_review_detail'),
  
]