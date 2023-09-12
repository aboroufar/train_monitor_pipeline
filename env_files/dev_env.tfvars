bucket_name         =       "mlop-bucket"
bucket_prefix       =       "pipeline_shared/batch-scoring"
bucket_train_prefix =       "training/data/raw"
bucket_inf_prefix   =       "batch-scoring/data/raw"
email_recipient     =       ["amir.boroufar@capgemini.com"]
user_id             =       "168472754465"

custom_notification_config = [
  {
    step_name           =   "ModelRegisterStep"
    step_status         =   "Succeeded"
    step_custom_message =   "This is the custom message for Succeeded \"ModelRegisterStep\" step."
  },
  {
    step_name           =   "TrainingEval"
    step_status         =   "Failed"
    step_custom_message =   "This is the custom message for Failed \"TrainingEval\" step."
  }
]

# Pipeline information. Will be used by the Python helper script.
accuracy_mse_threshold     =   "10.0"
kms_key                    =   "arn:aws:kms:us-west-2:168472754465:key/c263b818-5853-4e0f-8061-cbe9da1156d1"
#kms_key                    =   "None"
model_package_group_name =     "poc-mpg"
notification_function_name =   "pipeline-notification-lambda"
pipeline_inf               =   "InferencePipeline"
pipeline_train             =   "TrainingPipeline"
pipeline_trainwhpo         =   "TrainingWHPOPipeline"

recreate_pipelines         =   "true"
role_arn                   =    "arn:aws:iam::168472754465:role/service-role/AmazonSageMaker-ExecutionRole-20190125T115570"
sg_id                      =   "sg-0a12b3c45b67de8f9"
subnet_id                  =   "subnet-01a23bcdef45ghij6"
#sg_id                      =   "None"
#subnet_id                  =   "None"
upload_inference_data      =   "false"
upload_training_data       =   "true"
