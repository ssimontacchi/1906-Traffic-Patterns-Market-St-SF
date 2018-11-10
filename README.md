# 1906_Traffic_Patterns_Market_St_SF

Build a model to recognize objects in 1906 video of Market Street, SF, then use perspective transformation and time-series plot to analyze traffic patterns.

First, I used Facebook's Detectron (https://github.com/facebookresearch/Detectron), with the aid of matsui's script (https://gist.github.com/matsui528/6d223d17241842c84d5882a9afa0453a). See the results in the Detectron_results folder!

As was expected, since the COCO dataset did not have old cars and horses and carriages, it was not of much help.

Next, I will build my own object detector using Google Object Detection API, and inspired by: https://towardsdatascience.com/how-to-train-your-own-object-detector-with-tensorflows-object-detector-api-bec72ecfe1d9 https://github.com/datitran/raccoon_dataset
