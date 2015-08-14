var chart = c3.generate({
    animationEnabled: true,
    data: {
        columns: [
            ['แนะนำเซต', 20, 27, 28, 30, 25, 20, 15, 30, 25, 20, 20, 25, 30, 27,10],
            ['วิธีการเขียนเซต', 5, 6, 7, 3, 4, 5, 4, 6, 7, 5, 2, 4, 5, 6, 6],
            ['เอกภพสัมพัทธ์', 7, 8, 13, 12, 11, 12, 13, 12, 15, 16, 17, 12, 13, 14, 15],
            ['เซตจำกัดและเซตอนัน', 6, 6, 7, 4, 5, 6, 7, 6, 7, 5, 6, 7, 8, 9, 5],
            ['การเท่ากันของเซต', 4, 5, 6, 7, 5, 4, 5, 4, 5, 6, 7, 4, 5, 6, 4],
            ['แบบทดสอบ', 80, 70, 75, 70, 60, 50, 98, 53, 42, 42, 54, 65, 42, 88, 77]
        ],
        axes: {
            แบบทดสอบ: 'y2'
        },
        type:'bar',
        groups: [
            ['แนะนำเซต', 'วิธีการเขียนเซต', 'เอกภพสัมพัทธ์', 'เซตจำกัดและเซตอนัน', 'การเท่ากันของเซต','แบบทดสอบ']
        ],
        types: {
            แบบทดสอบ: 'spline'
        }
    },

    axis: {
        x: {
            label: 'รหัสนิสิต',
            type: 'category',
            categories: [50011,50029,50037,50053,50088,50096,50100,50126,50134,50142,50169,50657,50681,50690,50720],
            tick: {
                rotate: 0
            }
        },
        y: {
            label: 'เวลา (นาที)',
            position: 'outer-middle',
        },
        y2: {
            show: true,
            label: 'คะแนนสอบ (คะแนน)'
        }
    },
    tooltip: {
      format: {
       
        title: function (x,y,num) { return 'ชื่อ ' + x + ' นามสกุล '+y+' รหัสนิสิต ' +num; }
    }
    }

});