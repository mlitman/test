//
//  ViewController.swift
//  ChartTest3
//
//  Created by Michael Litman on 6/18/15.
//  Copyright (c) 2015 Michael Litman. All rights reserved.
//

import UIKit
import Charts

class ViewController: UIViewController, ChartViewDelegate
{
    @IBOutlet var chartView: HorizontalBarChartView!

    override func viewDidLoad() {
        super.viewDidLoad()
        chartView.delegate = self
        
        
        chartView.drawBarShadowEnabled = false
        chartView.drawValueAboveBarEnabled = true
        
        chartView.maxVisibleValueCount = 60
        chartView.pinchZoomEnabled = false
        chartView.drawGridBackgroundEnabled = false
        
        var xAxis = chartView.xAxis
        xAxis.drawAxisLineEnabled = true
        xAxis.drawGridLinesEnabled = true
        xAxis.gridLineWidth = 0.3
        
        var leftAxis = chartView.leftAxis
        leftAxis.drawAxisLineEnabled = true
        leftAxis.drawGridLinesEnabled = true
        leftAxis.gridLineWidth = 0.3
        
        var rightAxis = chartView.rightAxis
        rightAxis.drawAxisLineEnabled = true
        rightAxis.drawGridLinesEnabled = false
        
        chartView.legend.formSize = 8.0
        chartView.legend.xEntrySpace = 4.0
        
        
        
        //put data in
        var xVals = [Int]()
        
        for (var i = 0; i < 10; i++)
        {
            xVals[i] = 5
        }
        
        var yVals = [BarChartDataEntry]()
        
        for (var i = 0; i < 10; i++)
        {
            yVals[i] = BarChartDataEntry(value: 3.14, xIndex: i)
        }
        
        var set1 = BarChartDataSet(yVals: yVals, label: "My Values")
        set1.barSpace = 0.35;
        
        var dataSets = [BarChartDataSet]()
        dataSets[0] = set1
        
        var data = BarChartData(xVals: xVals, dataSets: dataSets)
        chartView.data = data;

        
        chartView.animate(yAxisDuration: 2.5)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

