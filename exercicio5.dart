bool duplicados(List<int> nums) {
  for (int i = 0; i < nums.length; i++) {
    for (int j = i + 1; j < nums.length; j++) {
      if (nums[i] == nums[j]) {
        return true;
      }
    }
  }
  return false;
}

  void main() {
  print(duplicados([1, 2, 3, 1]));                     
  print(duplicados([1, 2, 3, 4]));                     
  print(duplicados([1, 1, 1, 3, 3, 4, 3, 2, 4, 2]));   
}

