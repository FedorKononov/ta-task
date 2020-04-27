## Before you begin

I've decided to go more visual about exploring the dataset and presenting findings. To reproduce the results I prepared Docker environment ready to run with a single command. Sorry but I didn't optimize the image so it's quite heavy. The image is based on Tensorflow with Jupyter.

The following commands will build an image then start a container (with --rm and 8888 port) and open a notebook in a browser.

```
make build
make run
```

# Know your Data

First, let's get familiar with the problem and the data. The data is good if it accomplishes its intended task. There are many characteristics we should monitor for in features (missing values, distributions, leaking labels, ranges, skew, outliers). Here for inspection and visual appearance, I'm using `Facets` tool. 

It is a quite imballanced data set with `3.8%` of labels being positive (event_type='book'). Some features has a few missing values.

#### num_adults

Has a few zero values that can be easyly set to `1`. Has not a long tail that probably can be clipped to a maximum of `6`.

#### num_children

Mostly consist of `0`. When building a simple model could be simplfied to a boolean feature.

#### ts

Monotonal increasing and linear graph for cumulative distribution shows in general even data distribution along the time. Time period `2017-04-18 04:41:09 - 2017-05-02 04:06:34` `2 weeks`.

#### event_type

This is the column to derive the target label. Where a user books or not. `book` to `search` proportio is 1/25.

#### user_id

A bit less linear than `ts` showing signs of a fraction of more active users.

#### date_from

Cumulative distribution is curved showing more popular popular dates queried within provided period.

#### date_to

Less cirved than `date_from`

#### origin

Cumulative distribution suggests some popular origins and a tail of less popular ones. `20` airports cover `~92%` of the dataset.

#### destination

Destinations are more diverse with `120` aiports covering `~93%` of the data.

