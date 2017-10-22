use std::io;

fn main()
{
    println!("Please enter a number: ");
    let mut line = String::new();
    io::stdin()
        .read_line(&mut line)
        .expect("wanted input");
    let mut num: i32 = line
        .trim()
        .parse()
        .expect("Wanted a number");
    while (num != 1)
    {
        if (num % 2 == 0)
        {
            num /= 2;
        }
        else
        {
            num = 3 * num + 1;
        }
        println!("{}", num);
    }
}
