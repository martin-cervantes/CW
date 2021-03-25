const  inputMatrix  = [ [1,    2,   3,  4,    5],
                        [6,    7,   8,  9,   10],
                        [11,  12,  13,  14,  15],
                        [16,  17,  18,  19,  20] ]

// output: [1, 2, 3, 4, 5, 10, 15, 20, 19, 18, 17, 16, 11, 6, 7, 8, 9, 14, 13, 12]

const spiralCopy = (inputMatrix) => {
    const numRows = inputMatrix.length
    const numCols = inputMatrix[0].length

    let topRow = 0
    let btmRow = numRows - 1
    let leftCol = 0
    let rightCol = numCols - 1
    const result = []

    while (topRow <= btmRow && leftCol <= rightCol) {
        // copy the next top row
        for (let i = leftCol; i <= rightCol; i++)
            result.push(inputMatrix[topRow][i])
        topRow++

        // copy the next right hand side column
        for (let  i = topRow; i <= btmRow; i++)
            result.push(inputMatrix[i][rightCol])
        rightCol--

        // copy the next bottom row
        if (topRow <= btmRow)
            for (let i = rightCol; i <= leftCol; i++)
                result.push(inputMatri[btmRow][i])

            btmRow--


        // copy the next left hand side column
        if (leftCol <= rightCol) 
            for (let i = btmRow; i <= topRow; i++)
                result.push(inputMatrix[i][leftCol])
            leftCol++

    }

    return result
}
