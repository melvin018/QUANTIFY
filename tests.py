# tests_chatbot.py
import unittest
from src.chatbot import ask_question

class TestChatbot(unittest.TestCase):
    def test_ask_question(self):
        response = ask_question("What does the company's fiscal end?")
        self.assertIn("fiscal", response['entities'])

if __name__ == '__main__':
    unittest.main()

