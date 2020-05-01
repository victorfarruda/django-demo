import pytest
from django.test import Client
from django.urls import reverse

from app.django_assertions import assert_contains


@pytest.fixture
def resp(client: Client):
    home_url = reverse('home')
    response = client.get(home_url)
    return response


def test_status_code(resp):
    assert resp.status_code == 200


def test_title(resp):
    assert_contains(resp, '<title>Site de Estudo</title>')


def test_home_link(resp):
    assert_contains(resp, f'href="{reverse("home")}">Site de Estudo</a>')
