use std::env;
fn main()
{
    let home = env::home_dir().unwrap();
    let home = home.to_str().unwrap();
    println!("{}", home);
    let x: String = home.to_owned();
    println!("{}", x);    

}
