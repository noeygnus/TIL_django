from django import forms
from .models import Article


# class ArticleForm(forms.Form):
#     title = forms.CharField(max_length=10)
#     content = forms.CharField(widget=forms.Textarea)


class ArticleForm(forms.ModelForm):
    # Python의 Inner class라는 문법과 무관.
    class Meta:
        model = Article
        # field = ['title','content'] #사용자의 입력으로 받을 필드를 설정
        fields = '__all__' # 전체 필드를 입력으로 받을 때 사용하는 설정
        # exclude = ('title')