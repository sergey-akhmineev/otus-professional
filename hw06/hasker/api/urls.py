from django.urls import path, re_path

from . import views

from rest_framework_simplejwt.views import (
       TokenObtainPairView,
       TokenRefreshView,
       TokenVerifyView
   )
app_name = 'api'

urlpatterns = [
    path('', views.api_root),
    path('questions/', views.QuestionList.as_view(), name='question-list'),
    path('questions/<int:pk>', views.QuestionDetail.as_view(), name='question-detail'),
    path('questions/<int:pk>/answers/', views.AnswerList.as_view(), name='answer-list'),
    path('trending/', views.TopQuestionList.as_view(), name='trending-list'),
    path('search/', views.SearchList.as_view(), name='search-list'),
    path('api/token/', TokenObtainPairView.as_view(), name='token_obtain_pair'),
    path('api/token/refresh/', TokenRefreshView.as_view(), name='token_refresh'),
    path('api/token/verify/', TokenVerifyView.as_view(), name='token_verify'),
]