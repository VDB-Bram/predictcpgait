% Return muscle indices as compared to muscles of MRI-based model

function musi = muscleIndices(muscleNames)
   
muscleNames_all = {'glut_max1_r','glut_max2_r','glut_max3_r','glut_med1_r',...
    'glut_med2_r','glut_med3_r','glut_min1_r','glut_min2_r',...
    'glut_min3_r','add_long_r','add_brev_r','add_mag1_r','add_mag2_r',...
    'add_mag3_r','pectineus_r','iliacus_r','psoas_r','quad_fem_r',...
    'gemellus_r','piri_r','TFL_r','gracilis_r','semimem_r','semiten_r',...
    'bi_fem_lh_r','bi_fem_sh_r','sartorius_r','rectus_fem_r',...
    'vas_med_r','vas_int_r','vas_lat_r','gas_med_r',...
    'gas_lat_r','soleus_r','tib_post_r','tib_ant_r','ext_dig_r',...
    'ext_hal_r','flex_dig_r','flex_hal_r','per_brev_r','per_long_r',...
    'per_tert_r'};
    
count = 1;
musi = zeros(1,length(muscleNames));
for i = 1:length(muscleNames)       
    if (find(strcmp(muscleNames_all,muscleNames{i})) ~= 0)        
        musi(count) = find(strcmp(muscleNames_all,muscleNames{i}));
        count = count + 1;
    end
end

end
