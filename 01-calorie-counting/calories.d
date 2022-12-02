import std.stdio;

int tallCalories(int[] calories)
{
    int total = 0;
    for (size_t i = 0; i < calories.length; i++) {
        total += calories[i];
    }

    return total;
}

unittest {
    int[] calories = [ 1000, 2000, 3000 ];
    assert(6000 == tallCalories(calories));
}

void main()
{
    
}