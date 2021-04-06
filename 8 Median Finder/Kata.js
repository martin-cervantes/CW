class MedianFinder {
  constructor() {
    this.arr = [];
  }

  addNum(num) {
    this.arr.push(num)
  }

  findMedian() {
    let m = this.arr.length;

    if (m % 2 === 0) {
      let sum = 0;

      for (let i = 0; i < m; i++)  sum += this.arr[i];

      return sum /= 2;
    } else {
      return Math.floor(m / 2) + 1;
    }
  }
}
