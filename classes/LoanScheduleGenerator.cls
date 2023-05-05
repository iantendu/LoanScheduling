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

    public LoanSchedule() {}

    public Double getLoanAmount() {
        return loanAmount;
    }

    public void setLoanAmount(Double loanAmount) {
        this.loanAmount = loanAmount;
    }

    public Double getInterestRate() {
        return interestRate;
    }

    public void setInterestRate(Double interestRate) {
        this.interestRate = interestRate;
    }

    public Integer getNumberOfPeriods() {
        return numberOfPeriods;
    }

    public void setNumberOfPeriods(Integer numberOfPeriods) {
        this.numberOfPeriods = numberOfPeriods;
    }

    public Double getFeesPercentage() {
        return feesPercentage;
    }

    public void setFeesPercentage(Double feesPercentage) {
        this.feesPercentage = feesPercentage;
    }

    public Double getFeesFlat() {
        return feesFlat;
    }

    public void setFeesFlat(Double feesFlat) {
        this.feesFlat = feesFlat;
    }

    public Double[] getPayments() {
        return payments;
    }

    public void setPayments(Double[] payments) {
        this.payments = payments;
    }
     
    // calculate payment
// PMT - the payment on a loan or investment per period.
// FV - the future value of a loan or investment.
// NPER - the total number of payments or periods.
// PV - the amount borrowed or invested.
// RATE - the interest rate per period expressed as a decimal.
// TYPE - indicates whether payments are made at the beginning (1) or end (0) of each period.
    public Double pmt(Double rate, Integer nper, Double pv, Double fv, Integer type) {
        Double pmt = rate / (Math.pow(1 + rate, nper) - 1) * -(pv * Math.pow(1 + rate, nper) + fv);

        // account for payments at beginning of period versus end.
        if (type == 1) {
            pmt = pmt + (1 + rate);
        }
        
        return pmt;
    }

    // calculate loan schedule
    public void calculateLoanSchedule() {
        Double rate = interestRate / 12;
        Double pmt = pmt(rate, numberOfPeriods, loanAmount, 0.0, 0);

        payments = new Double[numberOfPeriods + 1];
        payments[0] = feesFlat;

        Double balance = loanAmount;
        for (int i = 1; i <= numberOfPeriods; i++) {
            Double interest = balance * rate;
            Double fees = balance * feesPercentage + feesFlat;
            Double principal = pmt - interest - fees;

            balance -= principal;
            payments[i] = pmt + fees;

            // last payment
            if (i == numberOfPeriods) {
                pmt = balance + interest + fees;
                payments[i] = pmt + feesFlat;
            }
        }
    }
}
