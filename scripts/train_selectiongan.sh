python train.py --dataroot ./datasets/dayton_a2g --name dayton_a2g_selectiongan --model selectiongan --which_model_netG unet_256 --which_direction AtoB --dataset_mode aligned --norm batch --gpu_ids 0 --batchSize 4 --loadSize 286 --fineSize 256 --no_flip --display_id 1 --lambda_L1 100 --lambda_L1_seg 1



