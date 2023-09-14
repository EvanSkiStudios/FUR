/// @desc Swaps two locations in an array
/// @param {array} Array Array to have data swaped
/// @param {real} index_one Index in the array of place one
/// @param {real} index_two Index in the array of place two
function array_swap(arr, a, b){
    var temp = arr[a];
    arr[a] = arr[b];
    arr[b] = temp;   
}


/// @desc Extension of QuickSort
/// @param {array} Array Array to sort
/// @param {real} start Index in the array to start at
/// @param {real} iend Index in the array to end at
function QuickSortExt(arr, start, _end){
    if (start >= _end){ return; }
    var partition = function(arr, start, _end){
        var pivotIndex = start;
        var pivotValue = arr[_end];
        for (var i = start; i < _end; ++i){
            if (arr[i] < pivotValue){
                array_swap(arr, i, pivotIndex);
                ++pivotIndex;
            }
        }
        array_swap(arr, pivotIndex, _end);
        return pivotIndex;
    }
    var index = partition(arr, start, _end);
    QuickSortExt(arr, start, index-1);
    QuickSortExt(arr, index +1, _end);
}


/// @desc Modifies an exsisting array to sort it using Quicksort, adapted to gml from The Coding Train
/// @param {array} Array Array to sort
function QuickSort(arr){
	QuickSortExt(arr, 0, (array_length(arr) - 1) );	
}