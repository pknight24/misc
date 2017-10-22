fn main()
{
    let mut v = vec![4, 5, 0, 3, 5, 2, 1, 6];
    sort_increasing(&mut v); 
    sort_decreasing(&mut v); 
    take_ownership_and_print(v);
}

fn sort_increasing(v: &mut Vec<i32>)
{
    let mut changes = 1;
    while changes > 0
    {    
        changes = 0;
        for i in 0..v.len()
        {
            if i < v.len() - 1
            {
                if v[i] > v[i+1]
                {
                    let temp = v[i+1];
                    v[i+1] = v[i];
                    v[i] = temp;
                    changes += 1;
                }
            }
        }
    }
}


fn sort_decreasing(v: &mut Vec<i32>)
{
    let mut changes = 1;
        while changes > 0
        {    
            changes = 0;
            for i in 0..v.len()
            {
                if i < v.len() - 1
                {
                    if v[i] < v[i+1]
                    {
                        let temp = v[i+1];
                        v[i+1] = v[i];
                        v[i] = temp;
                        changes += 1;
                    }
                }
            }
        }
}

fn take_ownership_and_print(vec: Vec<i32>)
{
    for i in 0..vec.len()
    {
        print!("{}", vec[i]);
    }
    println!();
}
