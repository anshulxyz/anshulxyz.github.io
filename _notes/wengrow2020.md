---
title: "Solutions for Wengrow2020"
syntax: true
layout: note
---
### Chapter 8

#### 1
{% highlight rust %}
use std::collections::HashSet;

fn intersect(x: Vec<u8>, y: Vec<u8>) -> Vec<u8> {
    let mut res: Vec<u8> = Vec::new();

    let x_dict: HashSet<u8> = x.into_iter().collect();

    for i in y {
        match x_dict.get(&i) {
            Some(_) => res.push(i),
            None => continue,
        }
    }

    res
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn intersect_test() {
        assert_eq!(intersect(vec![1, 2, 3, 4, 5], vec![0, 2, 4, 6]), [2, 4]);
        assert_eq!(intersect(vec![1, 2, 3, 4, 5], vec![6, 7, 8, 9]), []);
    }
}
{% endhighlight %}

#### 2
{% highlight rust %}
use std::collections::HashSet;

fn get_first_duplicate(list: Vec<char>) -> Option<char> {
    let mut hash: HashSet<char> = HashSet::new();
    for i in list {
        if !hash.insert(i) {
            return Some(i);
        }
    }

    None
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn get_first_duplicate_test() {
        assert_eq!(
            get_first_duplicate(vec!['a', 'b', 'c', 'd', 'c']).unwrap(),
            'c'
        );
        assert_eq!(
            get_first_duplicate(vec!['a', 'b', 'c', 'd', 'b', 'c']).unwrap(),
            'b'
        );
        assert_eq!(get_first_duplicate(vec!['a', 'b', 'c', 'd',]), None);
    }

}
{% endhighlight %}
