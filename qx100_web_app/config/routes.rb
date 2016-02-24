Rails.application.routes.draw do


   resource :cameras do
     collection do
       get 'zoom_in'
       get 'zoom_out'
       get 'take_pic'
       get 'get_exposure_mode'
       get 'e_intelligent'
       get 'e_superior'
       get 'e_program'
       get 'e_aperture'
       get 'e_shutter'
       get 'set_iso'
       get 'get_iso'
       get 'get_f'
       get 'set_f'
       get 'get_shutter'
       get 'set_shutter'
     end
   end
   root 'home#index'



end
