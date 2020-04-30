from django.http import HttpResponse


def home(request):
    raise ValueError()
    return HttpResponse('<html><body>Olá Django</body></html>', content_type='text/html')
