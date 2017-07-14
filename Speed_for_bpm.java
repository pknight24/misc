

/*enter a bpm of a song and the length of your car from axle to axle and this will compute
how fast you have to drive in order to run over  one raised pavement marker (rpm)
at the same bpm as the song*/

import java.util.Scanner;

public class Speed_for_bpm {
  int bpm;
  int length_of_car; //in inches

  public Speed_for_bpm(int bpm, int length_of_car){
    this.bpm = bpm;
    this.length_of_car = length_of_car;


  }
  public double bpm_to_bps(){
    double bps = bpm/60.0;
    return bps;
  }

  public double get_mph(){
    double bp = this.bpm_to_bps();
    double lengths_per_sec = ((length_of_car/2) * bp);
    double miles_per_second = lengths_per_sec/63360;
    double mph = miles_per_second * 3600;
    return mph;

  }



  public static void main(String[] args){
    Scanner scan = new Scanner(System.in);
    System.out.println("Enter the bpm of your song: ");
    int beats_per_min = scan.nextInt();
    System.out.println("Enter the length of your car in inches: ");
    int car_len = scan.nextInt();
    Speed_for_bpm s = new Speed_for_bpm(beats_per_min, car_len);
    double beat_sec = s.bpm_to_bps();
    double miles_ph = s.get_mph();
    System.out.println("Calculating speed...");
    System.out.println("------------------------");
    System.out.println("Beats per second: " + beat_sec);
    System.out.println("You would need to travel " + miles_ph + " mph to stay on beat with the song.");
    System.out.println("------------------------");

  }



}
