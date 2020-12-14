# StatisticImageFilters

# Mean Filtering

This linear filter is implemented by a local averaging process where each pixel value is changed by average of local neighborhood. It is also named by sliding-window averaging filter. That why it takes average of pixels in window.
Minimum Filtering
The transformation replaces the central pixel with the darkest one in the running window. Consider, if you have text that is lightly printed, the minimum filter makes letters thicker.
Maximum Filtering
It is almost same with the minimum filter, instead of changing logic. Logic is same until inside the first couple iterating for loops. But here we are setting max value to smallest. It is enabling us to continue. Then another difference, condition logic is changing. Now we are comparing according to if it’s bigger then maximum value.