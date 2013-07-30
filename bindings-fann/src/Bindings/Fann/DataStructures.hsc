#include <bindings.dsl.h>
#include <fann.h>

-- | <http://leenissen.dk/fann/fann_1_2_0/x1595.html>

module Bindings.Fann.DataStructures where
#strict_import

#opaque_t struct fann
#opaque_t struct fann_train_data
#opaque_t struct fann_error
#opaque_t struct fann_neuron
#opaque_t struct fann_layer

