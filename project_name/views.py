from django.shortcuts import render


def home(request):
    """Homepage"""

    return render(request, 'home.html')
