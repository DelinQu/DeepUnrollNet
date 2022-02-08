import os
import torch
import random
import argparse
import numpy as np
from skimage import io
import shutil

from package_core.generic_train_test import *
from dataloader import *
from model_unroll import *

##===================================================##
##********** Configure training settings ************##
##===================================================##
parser=argparse.ArgumentParser()
parser.add_argument('--batch_sz', type=int, default=1, help='batch size used for training')
parser.add_argument('--continue_train', type=bool, default=True, help='flags used to indicate if train model from previous trained weight')
parser.add_argument('--is_training', type=bool, default=False, help='flag used for selecting training mode or evaluation mode')
parser.add_argument('--n_chan', type=int, default=3, help='number of channels of input/output image')
parser.add_argument('--n_init_feat', type=int, default=32, help='number of channels of initial features')
parser.add_argument('--seq_len', type=int, default=2)
parser.add_argument('--shuffle_data', type=bool, default=False)

parser.add_argument('--model_label', type=str, required=True)
parser.add_argument('--log_dir', type=str, required=True)
parser.add_argument('--net_type', type=str, required=True)
parser.add_argument('--results_dir', type=str, required=True)
parser.add_argument('--data_dir', type=str, required=True)
 
opts=parser.parse_args()

##===================================================##
##****************** Create model *******************##
##===================================================##
model=ModelUnroll(opts)

##===================================================##
##**************** Train the network ****************##
##===================================================##
class Demo(Generic_train_test):
    def test(self):
        with torch.no_grad():
            # get the dirs
            rs_path = self.opts.data_dir
            dir_list = list(filter(lambda pth:os.path.isdir(os.path.join(rs_path,pth)), os.listdir(rs_path)))
#             dir_list.sort(key=lambda x:int(x[4:]))
         
            for d in dir_list:
#                 rs_img_list = list(filter(lambda x:('_rs.png' in x), os.listdir(os.path.join(rs_path,d))))
#                 rs_img_list.sort(key=lambda x:x[0:4])
                rs_img_list = list(filter(lambda x:('_rolling.png' in x), os.listdir(os.path.join(rs_path,d))))
                rs_img_list.sort(key=lambda x:x[0:3])
                
                os.mkdir(os.path.join(self.opts.results_dir, d))
                
                for i in range(len(rs_img_list)//2):
                    im_rs0_path = os.path.join(self.opts.data_dir, d, rs_img_list[2*i])
                    im_rs1_path = os.path.join(self.opts.data_dir, d, rs_img_list[2*i+1])

                    im_rs0 = torch.from_numpy(io.imread(im_rs0_path).transpose(2,0,1))[:3,:,:].unsqueeze(0).clone()
                    im_rs1 = torch.from_numpy(io.imread(im_rs1_path).transpose(2,0,1))[:3,:,:].unsqueeze(0).clone()

                    im_rs = torch.cat([im_rs0,im_rs1], dim=1).float()/255.

                    _input = [im_rs, None, None, 0]

                    self.model.set_input(_input)
                    pred_im, _, _=self.model.forward()

                    # save results
#                     io.imsave(os.path.join(self.opts.results_dir, d, rs_img_list[2*i][0:4]+'_rec.png'), (pred_im[0].clamp(0,1).cpu().numpy().transpose(0,2,3,1)[0]*255).astype(np.uint8))
                    io.imsave(os.path.join(self.opts.results_dir, d, rs_img_list[2*i][0:3]+'_rec.png'), (pred_im[0].clamp(0,1).cpu().numpy().transpose(0,2,3,1)[0]*255).astype(np.uint8))
                    print('saved', self.opts.results_dir, d, rs_img_list[2*i][0:3]+'_rec.png')
                    
Demo(model, opts, None, None).test()
