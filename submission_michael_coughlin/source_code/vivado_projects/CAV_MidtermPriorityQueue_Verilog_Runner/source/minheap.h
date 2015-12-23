#include <vector>

class MinHeap
{
private:
    std::vector<int> _vector;
    void BubbleDown(int index);
    void BubbleUp(int index);
    void Heapify();

public:
    MinHeap(int* array, int length);
    MinHeap(const std::vector<int>& vector);
    MinHeap();

    void Insert(int newValue);
    int GetMin();
    void DeleteMin();
};
