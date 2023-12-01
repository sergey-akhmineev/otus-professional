from django.urls import path
from . import views

app_name = 'askme'
urlpatterns = [
    path('', views.index, name='index'),
    path('ask/', views.ask, name='ask'),
    path('question/<slug:slug>/', views.question_detail, name='question'),
    path('tag/<str:tag_name>/', views.search_tag, name='search_tag'),
    path('search/', views.search, name='search'),
    path('api_common/question/voteup/<int:question_id>/', views.question_vote_up, name='question_vote_up'),
    path('api_common/question/votedown/<int:question_id>/', views.question_vote_down, name='question_vote_down'),
    path('api_common/answer/voteup/<int:answer_id>/', views.answer_vote_up, name='answer_vote_up'),
    path('api_common/answer/votedown/<int:answer_id>/', views.answer_vote_down, name='answer_vote_down'),
    path('api_common/answer/setcorrect/<int:answer_id>/', views.set_correct_answer, name='set_correct_answer'),
]