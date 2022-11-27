class SonarSweeper:
    def __init__(self):
        self.readings = []
        self.total_increases = 0

    def add_reading(self, reading):
        if reading > self.readings[-1]:
            self.total_increases += 1
        self.readings.append(reading)

    def get_total_increases(self):
        return self.total_increases