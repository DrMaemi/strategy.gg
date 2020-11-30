import React from 'react';
import OtherGnb from './../components/OtherGnb.js'

import './ModelPage.css';
const ModelPage = () => {
    return(
        <div className="ModelPageContainer" >
            <OtherGnb />
            <section className='main'>
              <div className='explane'>
                <div className='modelName'>Model(x)</div>
                <div className='contents'>
                  Mode(x)는 ~~~~~이러한 모델입니다.
                </div>
              </div>
              <div className="explane">
                <div className='modelName'>ST(x)</div>
                <div className='contents'>
                  ST(x)는 ~~~~~한 모델입니다. 
                </div>
              </div>
              <div className='explane'>
                <div className='modelName'>PS(x)</div>
                <div className='contents'>
                  PS (X)는 ~~~~한 모델입니다.
                </div>
              </div>
              <div className='explane'>
                <div className='modelName'>DATA</div>
                <div className='contents'>
                  저희 데이터는 ~~~한 방법으로 수집하였습니다. 
                </div>
              </div>
            </section>
        </div>
      
    );
}

export default ModelPage;