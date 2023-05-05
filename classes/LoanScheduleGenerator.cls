/**
 * @last modified on  : 05-05-2023
 * @last modified by  : iantendu
**/

public class LoanSchedule {
    private Double loanAmount;
    private Double interestRate;
    private Integer numberOfPeriods;
    private Double feesPercentage;
    private Double feesFlat;
    private List<Double> payments;

   

   
    // calculate payment
// PMT - the payment on a loan or investment per period.
// FV - the future value of a loan or investment.
// NPER - the total number of payments or periods.
// PV - the amount borrowed or invested.
// RATE - the interest rate per period expressed as a decimal.
// TYPE - indicates whether payments are made at the beginning (1) or end (0) of each period.
    public static Double pmt(Double rate, Integer nper, Double pv, Double fv, Integer type) {
        Double pmt = rate / (Math.pow(1 + rate, nper) - 1) * -(pv * Math.pow(1 + rate, nper) + fv);

        // account for payments at beginning of period versus end.
        if (type == 1) {
            pmt = pmt + (1 + rate);
        }
        
        return pmt;
    }

    // calculate loan schedule
    public List<LoanScheduleWrapper> calculateLoanSchedule(Double interestRate, Integer numberOfPeriods, Double loanAmount, Double feesFlat, Double feesPercentage) {
        Double rate = interestRate / 12;
        Double pmt = this.pmt(rate, numberOfPeriods, loanAmount, 0.0, 0);
    
        List<LoanScheduleWrapper> schedules = new List<LoanScheduleWrapper>();
        Double balance = loanAmount;
        for (integer i = 1; i <= numberOfPeriods; i++) {
            Double interest = balance * rate;
            Double fees = balance * feesPercentage + feesFlat;
            Double principal = pmt - interest - fees;
    
            balance -= principal;
            Double paymentAmount = pmt + fees;
    
            // last payment
            if (i == numberOfPeriods) {
                pmt = balance + interest + fees;
                paymentAmount = pmt + feesFlat;
            }
    
            LoanScheduleWrapper schedule = new LoanScheduleWrapper();
            schedule.interest=interest;
            schedule.fees=fees;
            schedule.principal=principal;
            schedule.balance=balance;
            schedule.paymentAmount=paymentAmount;
            schedule.period=i;
    
            schedules.add(schedule);
        }
    
        return schedules;
    }
    
    public  class LoanScheduleWrapper {
    private Double interest;
    private Double fees;
    private Double principal;
    private Double balance;
    private Double paymentAmount;
    private Integer period;

    public LoanScheduleWrapper(Double interest, Double fees, Double principal, Double balance, Double paymentAmount, Integer period) {
        this.interest = interest;
        this.fees = fees;
        this.principal = principal;
        this.balance = balance;
        this.paymentAmount = paymentAmount;
        this.period = period;
    }
        
    }
    
    
}

