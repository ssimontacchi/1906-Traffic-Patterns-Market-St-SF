# From tensorflow/models/research
gcloud ml-engine jobs submit training object_detection_`date +%s` \
    --job-dir=gs://market_st_1906/train \
    --packages dist/object_detection-0.1.tar.gz,slim/dist/slim-0.1.tar.gz,cocoapi/pycocotools-2.0.tar.gz \
    --module-name object_detection.train \
    --region us-east1 \
    --config /Users/Scott/galvanize/1906_Traffic_Patterns_Market_St_SF/cloud.yaml \
    -- \
    --train_dir=gs://market_st_1906/train \
    --pipeline_config_path=gs://market_st_1906/data/faster_rcnn_inception_v2_coco.config

gcloud ml-engine jobs submit training object_detection_eval_`date +%s` \
    --job-dir=gs://market_st_1906/train \
    --packages dist/object_detection-0.1.tar.gz,slim/dist/slim-0.1.tar.gz,cocoapi/pycocotools-2.0.tar.gz \
    --module-name object_detection.eval \
    --region us-east1 \
    -- \
    --checkpoint_dir=gs://market_st_1906/train \
    --eval_dir=gs://market_st_1906/eval \
    --pipeline_config_path=gs://market_st_1906/data/faster_rcnn_inception_v2_coco.config

# better!:
gcloud ml-engine jobs submit training object_detection_`date +%s` \
    --job-dir=gs://market_st_1906/train \
    --packages dist/object_detection-0.1.tar.gz,slim/dist/slim-0.1.tar.gz,cocoapi/pycocotools-2.0.tar.gz \
    --module-name object_detection.train \
    --region us-east1 \
    --config /Users/Scott/models/research/object_detection/samples/cloud/cloud.yml \
    -- \
    --train_dir=gs://market_st_1906/train \
    --pipeline_config_path=gs://market_st_1906/data/faster_rcnn_inception_v2_coco.config
