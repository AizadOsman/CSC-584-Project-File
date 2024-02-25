/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author ASUS
 */
public class Booking {
    private int bookingId;
    private String packageName;
    private String startDate;
    private String endDate;
    private String status;

    public Booking(int bookingId, String packageName, String startDate, String endDate, String status) {
        this.bookingId = bookingId;
        this.packageName = packageName;
        this.startDate = startDate;
        this.endDate = endDate;
        this.status = status;
    }

    public int getBookingId() {
        return bookingId;
    }

    public String getPackageName() {
        return packageName;
    }

    public String getStartDate() {
        return startDate;
    }

    public String getEndDate() {
        return endDate;
    }

    public String getStatus() {
        return status;
    }
}
