/**
 * @last modified on  : 05-04-2023
 * @last modified by  : iantendu
**/
import { LightningElement, track } from 'lwc';

export default class LoanSchedule extends LightningElement {
    loanData = [     
        {id: 1, period: 'Period 1', date: '4/15/2021', interest: '-', fees: '-', principal: '-', totalAmount: '-'},
        {id: 2, period: 'Period 2', date: '5/17/2021', interest: '-', fees: '-', principal: '-', totalAmount: '-'},
        {id: 3, period: 'Period 3', date: '6/15/2021', interest: '2,997.50', fees: '665.00', principal: '8,119.84', totalAmount: '11,782.34'},
        {id: 4, period: 'Period 4', date: '7/15/2021', interest: '834.58', fees: '665.00', principal: '10,282.76', totalAmount: '11,782.34'},
        {id: 5, period: 'Period 5', date: '8/16/2021', interest: '790.59', fees: '665.00', principal: '10,326.75', totalAmount: '11,782.34'},
        {id: 6, period: 'Period 6', date: '9/15/2021', interest: '647.38', fees: '665.00', principal: '10,469.96', totalAmount: '11,782.34'},
        {id: 7, period: 'Period 7', date: '10/15/2021', interest: '552.27', fees: '665.00', principal: '10,565.07', totalAmount: '11,782.34'},
        {id: 8, period: 'Period 8', date: '11/15/2021', interest: '-', fees: '-', principal: '-', totalAmount: '-'},
        {id: 9, period: 'Period 9', date: '12/15/2021', interest: '-', fees: '-', principal: '-', totalAmount: '-'},
        {id: 10, period: 'Period 10', date: '1/17/2022', interest: '-', fees: '-', principal: '-', totalAmount: '-'},
        {id: 11, period: 'Period 11', date: '2/15/2022', interest:'-', fees: '-', principal: '-', totalAmount: '-'},
        {id: 12, period: 'Period 12', date: '3/15/2022', interest: '-', fees: '-', principal: '-', totalAmount: '-'},
        {id: 13, period: 'Period 13', date: '4/15/2022', interest: '-', fees: '-', principal: '-', totalAmount: '-'},
        {id: 14, period: 'Period 14', date: '5/16/2022', interest: '-', fees: '-', principal: '-', totalAmount: '-'},
        {id: 15, period: 'Period 15', date: '6/15/2022', interest: '3,696.09', fees: '665.00', principal: '7,421.25', totalAmount: '11,782.34'},
        {id: 16, period: 'Period 16', date: '7/15/2022', interest: '388.90', fees: '665.00', principal: '10,728.44', totalAmount: '11,782.34'},
        {id: 17, period: 'Period 17', date: '8/15/2022', interest: '301.16', fees: '665.00', principal: '10,816.18', totalAmount: '11,782.34'},
        {id: 18, period: 'Period 18', date: '9/15/2022', interest: '199.64', fees: '665.00', principal: '10,917.70', totalAmount: '11,782.34'},
        {id: 19, period: 'Period 19', date: '10/17/2022', interest: '100.30', fees: '665.00', principal: '10,352.04', totalAmount: '11,117.34'},
        {id: 20, period: 'Total', date: '', interest: '10,508.40', fees: '6,650.00', principal: '100,000.00', totalAmount: '119,158.40'}
        	

        ];
}