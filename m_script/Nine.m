
function y=commutation_inverter(pos,Vs,ea,eb,ec,Ia,Ib,Ic)
if (pos>=0)&&(pos<60)&&(Ic<=0)&&(Ib<=0)
    y = [Vs,0.5*(-Vs+ea+eb-2*ec)];
elseif (pos>=0)&&(pos<60)&&(Ic>0)&&(Ib<=0)
    y = [Vs,0];
elseif (pos>=0)&&(pos<60)&&(Ic>=0)&&(Ib>0)
    y = [Vs,0.5*(-Vs+ea+eb-2*ec)];
elseif (pos>=0)&&(pos<60)&&(Ic<0)&&(Ib>0)
    y = [Vs,-Vs];
elseif(pos>=60)&&(pos<120)&&(Ib>=0)&&(Ia>=0)
    y=[0.5*(Vs+ea-2*eb+ec),0.5*(Vs-ea+2*eb-ec)];
elseif(pos>=60)&&(pos<120)&&(Ib<0)&&(Ia>=0)
    y=[0,Vs];
elseif(pos>=60)&&(pos<120)&&(Ib<=0)&&(Ia<0)
    y=[0.5*(Vs+ea-2*eb+ec),0.5*(Vs-ea+2*eb-ec)];
elseif(pos>=60)&&(pos<120)&&(Ib>0)&&(Ia<0)
    y=[Vs,0];
elseif(pos>=120)&&(pos<180)&&(Ia<=0)&&(Ic<=0)
    y=[0.5*(-Vs+2*ea-eb-ec),Vs];
elseif(pos>=120)&&(pos<180)&&(Ia>0)&&(Ic<=0)
    y=[-Vs,Vs];
elseif(pos>=120)&&(pos<180)&&(Ia>=0)&&(Ic>0)
    y=[0.5*(-Vs+2*ea-eb-ec),Vs];
elseif(pos>=120)&&(pos<180)&&(Ia<0)&&(Ic>0)
    y=[0,Vs];
elseif(pos>=180)&&(pos<240)&&(Ic>=0)&&(Ib>=0)
    y = [-Vs,0.5*(Vs+ea+eb-2*ec)]; 
elseif(pos>=180)&&(pos<240)&&(Ic<0)&&(Ib>=0)
    y = [-Vs,0];
elseif(pos>=180)&&(pos<240)&&(Ic<=0)&&(Ib<0)
    y = [-Vs,0.5*(Vs+ea+eb-2*ec)];
elseif(pos>=180)&&(pos<240)&&(Ic>0)&&(Ib<0)   
  y = [-Vs,Vs];
elseif(pos>=240)&&(pos<300)&&(Ib<=0)&&(Ia<=0)
    y=[0.5*(-Vs+ea-2*eb+ec),0.5*(-Vs-ea+2*eb-ec)];
elseif(pos>=240)&&(pos<300)&&(Ib>0)&&(Ia<=0)
    y=[0,-Vs];
elseif(pos>=240)&&(pos<300)&&(Ib>=0)&&(Ia>0)
    y=[0.5*(-Vs+ea-2*eb+ec),0.5*(-Vs-ea+2*eb-ec)];
elseif(pos>=240)&&(pos<300)&&(Ib<0)&&(Ia>0)
    y=[-Vs,0];
elseif(pos>=300)&&(pos<360)&&(Ia>=0)&&(Ic>=0)
    y=[0.5*(Vs+2*ea-eb-ec),-Vs];
elseif(pos>=300)&&(pos<360)&&(Ia<0)&&(Ic>=0)
    y=[Vs,-Vs];
elseif(pos>=300)&&(pos<360)&&(Ia<=0)&&(Ic<0)
    y=[0.5*(Vs+2*ea-eb-ec),-Vs];
elseif(pos>=300)&&(pos<360)&&(Ia>0)&&(Ic<0)
    y=[0,-Vs];
end   