import random

ACTIONS = ['gun', 'sidepump', 'hair', 'pointhigh', 'elbowkick', 'listen', 'dab', 'wipetable']

def ai_inference(matrices):
    return random.choice(ACTIONS)