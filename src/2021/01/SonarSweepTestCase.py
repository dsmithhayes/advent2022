import unittest
from SonarSweeper import SonarSweeper


class SonarSweepTestCase(unittest.TestCase):
    def testSonarSweepIncrements(self):
        list_of_readings = [199, 200, 208, 210, 200,
                            207, 240, 269, 260, 263]
        sonar_sweeper = SonarSweeper()

        for reading in list_of_readings:
            sonar_sweeper.add_reading(reading)

        self.assertEqual(7, sonar_sweeper.get_total_increases())
