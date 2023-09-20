from falcon import testing
from app import create
from datetime import datetime
from time import time


class TestCase(testing.TestCase):
    def setUp(self):
        super(TestCase, self).setUp()
        self.app = create()


class Test(TestCase):
    def test_get_moscow_time(self):
        res = self.simulate_get('/')
        res_datetime = datetime.strptime(res.text, '%a %d %b %Y, %I:%M:%S %p')
        self.assertLessEqual(abs(time() - res_datetime.timestamp()), 1)

