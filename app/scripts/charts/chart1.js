var chart = c3.generate({
    data: {
        columns: [
            ['sample', 30, 200, 100, 400, 150, 250],
            ['sample2', 130, 300, 200, 500, 250, 350]
        ],
        axes: {
            sample2: 'y2'
        },
        types: {
            sample2: 'spline'
        }
    },
    axis: {
        x: {
            label: 'X Label'
        },
        y: {
            label: 'Y Label'
        },
        y2: {
            show: true,
            label: 'Y2 Label',
            max: 1000
        }
    }
});
