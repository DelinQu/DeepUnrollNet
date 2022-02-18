import os
from sys import path
import pandas as pd

from sklearn import metrics
from tqdm import tqdm
from lib.Sticher import Sticher
from lib.crop import crop

from lib.metrics import *

if __name__ == '__main__':
    stich = Sticher()
    name = 'Fastec_rs_test' 
    method = 'unrolling_net'
    # gs_path = '/media/qdl/KIOXIA/Dataset/RS_clean/{}/gs/'.format(name)
    gs_path = './dataset/RS_clean/{}/gs/'.format(name)

    rec_path = os.path.join('./data/rec/', name, method)
    metrics_path = os.path.join('./data/metrics/', name)

    # get the dirs
    dir_list = list(filter(lambda pth:os.path.isdir(os.path.join(gs_path, pth)), os.listdir(gs_path)))
    dir_list.sort()

    # metrics
    metrics_dic = {
        'Id': list(),
        'PSNR': list(),
        'SSIM': list()
    }

    id = 0
    for d in dir_list:
        gs_img_list = os.listdir(os.path.join(gs_path,d))
        gs_img_list.sort()
        rec_img_list = os.listdir(os.path.join(rec_path,d))
        rec_img_list.sort()

        for i in tqdm(range(len(rec_img_list))):
            print('metric between {} and {}'.format(gs_img_list[2*i+1], rec_img_list[i]))
            gs_img_pth, rec_img_pth = os.path.join(gs_path, d, gs_img_list[2*i+1]), os.path.join(rec_path, d, rec_img_list[i])
            
            # stich
            img_rec, img_gs = cv.imread(gs_img_pth), cv.imread(rec_img_pth)
            img_gs_st = stich.warp_gs2rec(img_rec, img_gs)
            
            # crop.
            img_rec_crop, img_gs_crop = crop(img_rec, scale=0.08), crop(img_gs_st, scale=0.08)
            tensor_rec, tensor_gs = convertFormat(img_rec_crop, img_gs_crop)
            
            # metrics
            psnr, ssim = PSNR(tensor_rec, tensor_gs), float(SSIM(tensor_rec, tensor_gs))
            metrics_dic['Id'].append(id)
            metrics_dic['PSNR'].append(psnr)
            metrics_dic['SSIM'].append(ssim)
            id += 1

            print('PSNR of corrected image : ', psnr)
            print('SSIM of corrected image : ', ssim)

    os.makedirs(metrics_path, exist_ok=True)
    print('Saving results to {}'.format(metrics_path))
    df = pd.DataFrame(metrics_dic)
    df.to_csv(os.path.join(metrics_path, method+'.csv'), index=False)

    print('PSNR mean: {}, SSIM mean: {}'.format(df['PSNR'].mean(), df['SSIM'].mean()))
    