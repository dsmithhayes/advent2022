import std.stdio, std.regex, std.array, 
    std.algorithm, std.conv, std.string;

int tallyCalories(int[] calories)
{
    int total = 0;

    for (size_t i = 0; i < calories.length; i++) {
        total += calories[i];
    }

    return total;
}

string[] parseLists(string list)
{
    return std.regex.split(list, regex("\n\n")).array;
}

int[][] convertList(string[] caloriesList) 
{
    int[][] buffer = [];
    for (size_t i = 0; i < caloriesList.length; i++) {
        string[] values = splitLines(caloriesList[i]);
        buffer ~= values.map!(to!int).array;
    }
    return buffer;
}

unittest {
    int[] calories = [ 1000, 2000, 3000 ];
    assert(6000 == tallyCalories(calories));

    string caloriesList = "
1000
2000
3000

4000

5000
6000
";

    string[] parsedCaloriesList = parseLists(caloriesList);
    // assert("1000\n2000\n3000" == parsedCaloriesList[0]);
    assert("4000" == parsedCaloriesList[1]);

    int[][] listsAsNumbers = convertList(parsedCaloriesList);
    assert(listsAsNumbers[0][0] == 1000);
}

void main()
{
    
}