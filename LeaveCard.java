/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package leavecard;

import java.text.DecimalFormat;
import java.util.Scanner;
public class LeaveCard {
    public static void main(String[]args){
        int x = 0;
        DecimalFormat df = new DecimalFormat("0.000"); 
        Scanner kbd = new Scanner(System.in);
        double [] equiv = new double [60];
        equiv[0] = 0.002;
        double now = 7.23;
        double current = 0.0;
        double monthly = 1.25;
        double absence = 0;
        for(int i=1; i <equiv.length;i++){
            if(i != 6 && i != 18 && i != 30 && i != 42 && i != 54){
            equiv[i] = equiv[i-1] + 0.002;
            }else{
            equiv[i] = equiv[i-1] + 0.003;
            }
        }
        while(x <4){
        System.out.println("Enter number of minutes late: ");
        int late = kbd.nextInt();
        current += equiv[late-1];
        
        System.out.println(df.format(current));
        x++;
        }
        System.out.println(df.format(now+(monthly-current)));

    }
    
    
}

