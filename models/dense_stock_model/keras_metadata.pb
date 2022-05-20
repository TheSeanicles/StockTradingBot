
�(root"_tf_keras_sequential*�({"name": "sequential_1997", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_1997", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 100, 10]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "lambda_1498_input"}}, {"class_name": "Lambda", "config": {"name": "lambda_1498", "trainable": true, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAAAAAAEAAAAFAAAAUwAAAPMaAAAAfABkAGQAhQJkAWQAhQJkAGQAhQJmAxkAUwCp\nAk7p/////6kAqQHaAXhyBAAAAHIEAAAA+jZDOi9Vc2Vycy9BZG1pbi9QeWNoYXJtUHJvamVjdHMv\nU3RvY2tUcmFkaW5nQm90L21haW4ucHnaCDxsYW1iZGE+UwEAAPMCAAAAGgA=\n", null, null]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}}, {"class_name": "Dense", "config": {"name": "dense_2496", "trainable": true, "dtype": "float32", "units": 2000, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_2497", "trainable": true, "dtype": "float32", "units": 1000, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "Zeros", "config": {}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Reshape", "config": {"name": "reshape_1997", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [100, 10]}}}]}, "shared_object_id": 9, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100, 10]}, "is_graph_network": true, "full_save_spec": {"class_name": "__tuple__", "items": [[{"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 100, 10]}, "float32", "lambda_1498_input"]}], {}]}, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 100, 10]}, "float32", "lambda_1498_input"]}, "keras_version": "2.8.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_1997", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 100, 10]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "lambda_1498_input"}, "shared_object_id": 0}, {"class_name": "Lambda", "config": {"name": "lambda_1498", "trainable": true, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAAAAAAEAAAAFAAAAUwAAAPMaAAAAfABkAGQAhQJkAWQAhQJkAGQAhQJmAxkAUwCp\nAk7p/////6kAqQHaAXhyBAAAAHIEAAAA+jZDOi9Vc2Vycy9BZG1pbi9QeWNoYXJtUHJvamVjdHMv\nU3RvY2tUcmFkaW5nQm90L21haW4ucHnaCDxsYW1iZGE+UwEAAPMCAAAAGgA=\n", null, null]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "shared_object_id": 1}, {"class_name": "Dense", "config": {"name": "dense_2496", "trainable": true, "dtype": "float32", "units": 2000, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 4}, {"class_name": "Dense", "config": {"name": "dense_2497", "trainable": true, "dtype": "float32", "units": 1000, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 7}, {"class_name": "Reshape", "config": {"name": "reshape_1997", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [100, 10]}}, "shared_object_id": 8}]}}, "training_config": {"loss": {"class_name": "MeanSquaredError", "config": {"reduction": "auto", "name": "mean_squared_error"}, "shared_object_id": 10}, "metrics": [[{"class_name": "MeanAbsoluteError", "config": {"name": "mean_absolute_error", "dtype": "float32"}, "shared_object_id": 11}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}2
�root.layer-0"_tf_keras_layer*�{"name": "lambda_1498", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Lambda", "config": {"name": "lambda_1498", "trainable": true, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAAAAAAEAAAAFAAAAUwAAAPMaAAAAfABkAGQAhQJkAWQAhQJkAGQAhQJmAxkAUwCp\nAk7p/////6kAqQHaAXhyBAAAAHIEAAAA+jZDOi9Vc2Vycy9BZG1pbi9QeWNoYXJtUHJvamVjdHMv\nU3RvY2tUcmFkaW5nQm90L21haW4ucHnaCDxsYW1iZGE+UwEAAPMCAAAAGgA=\n", null, null]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}, "shared_object_id": 1}2
�root.layer_with_weights-0"_tf_keras_layer*�{"name": "dense_2496", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_2496", "trainable": true, "dtype": "float32", "units": 2000, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 4, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 10}}, "shared_object_id": 12}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1, 10]}}2
�root.layer_with_weights-1"_tf_keras_layer*�{"name": "dense_2497", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_2497", "trainable": true, "dtype": "float32", "units": 1000, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 7, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 2000}}, "shared_object_id": 13}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1, 2000]}}2
�root.layer-3"_tf_keras_layer*�{"name": "reshape_1997", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Reshape", "config": {"name": "reshape_1997", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [100, 10]}}, "shared_object_id": 8}2
�Iroot.keras_api.metrics.0"_tf_keras_metric*�{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 14}2
�Jroot.keras_api.metrics.1"_tf_keras_metric*�{"class_name": "MeanAbsoluteError", "name": "mean_absolute_error", "dtype": "float32", "config": {"name": "mean_absolute_error", "dtype": "float32"}, "shared_object_id": 11}2