fn main()
{
    std::process::Command::new("pwd")
        .status()
        .expect("Pwd didn't work!");

}
