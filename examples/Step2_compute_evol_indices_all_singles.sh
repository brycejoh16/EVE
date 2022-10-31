export MSA_data_folder='./data/MSA'
export MSA_list='./data/mappings/example_mapping.csv'
export MSA_weights_location='./data/weights'
export VAE_checkpoint_location='./results/VAE_parameters'

export model_parameters_location='./EVE/default_model_params.json'
export training_logs_location='./logs/'
export mutations_location='./data/mutations/'
export computation_mode='mutations_location'
export output_evol_indices_location='./results/evol_indices'
export num_samples_compute_evol_indices=2
export batch_size=2048

# change these
export model_name_suffix='protein_gym'
export protein_index=1
export output_evol_indices_filename_suffix='Olson_2014_protein_gym'

python compute_evol_indices.py \
    --MSA_data_folder ${MSA_data_folder} \
    --MSA_list ${MSA_list} \
    --protein_index ${protein_index} \
    --MSA_weights_location ${MSA_weights_location} \
    --VAE_checkpoint_location ${VAE_checkpoint_location} \
    --model_name_suffix ${model_name_suffix} \
    --model_parameters_location ${model_parameters_location} \
    --computation_mode ${computation_mode} \
    --mutations_location ${mutations_location}  \
    --output_evol_indices_location ${output_evol_indices_location} \
    --num_samples_compute_evol_indices ${num_samples_compute_evol_indices} \
    --batch_size ${batch_size}