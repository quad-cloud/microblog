import unittest
import os
import json
from .context import app
import requests

class ApiTestCase(unittest.TestCase):
    def test_index_route(self):
        response = requests.get('http://localhost:5000')
        self.assertEqual(response.json(), "{'message': 'Hello World'}")


if __name__ == "__main__":
    unittest.main()
