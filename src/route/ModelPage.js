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
                  <p>Model(x)는 Strategy.gg에서 사용하는 모델들의 대표 이름입니다.</p>
                  <p>Model(x)에는 Feedback 분석에 사용되는 ST(x) 모델, PlayStyle 분석에 사용되는 PS(x) 모델 이렇게 2가지가 있습니다.</p>
                  <p>ST(x) 은 League of Legend의 게임 당 시간대별 데이터를 사용한 RNN 모델이고 PS(x)는 League of Legend의 게임당 집계 데이터를 사용한 Clustering 모델입니다.</p>
                  <p>자세한 설명은 아래를 참고해주시길 바랍니다. </p>
                </div>
              </div>
              <div className="explane">
                <div className='modelName'>ST(x)</div>
                <div className='contents'>
                  <p>ST(x)는 RNN을 사용한 전략 분석 및 추천 모델입니다.</p>
                  <p>티어에 따른 유저 분포도에 따라 최대 25만개의 해당 티어 경기 데이터의 시간대별 게임 진행 데이터를 분석했습니다. 시간대별 팀 간 골드 획득 차, 레벨 차, 킬 차부터 타워 파괴 수 차, 용 처치 수 차, 바론 처치 수 차 등 오브젝트에 대한 데이터까지 고려하여 인공지능 모델을 학습시켰습니다.</p>
                  <p>유저가 새로운 게임을 진행하고 종료하면 해당 경기에 대해서 시간대마다 기대 승률을 예측할 수 있고, 승률 변화량이 급격한 지점들을 찾아 원인이 무엇인지 알려줍니다. 또한 상위 티어의 인공지능 모델을 통해 똑같은 상황에서 상위 티어는 어떻게 행동하는 게 더 승률 상승량이 높았는지 전략으로서 추천해줍니다.</p>
                </div>
              </div>
              <div className='explane'>
                <div className='modelName'>PS(x)</div>
                <div className='contents'>
                <p>PS(x)는 Kmeans clustering을 사용한 플레이스타일 분류 모델입니다.</p>
                <p>각 티어, 라인별로 다른 모델이 생성되어있어서 사용자의 티어와 라인에 맞게 모델을 적용하여 플레이 스타일을 분석해 줍니다. 플레이 스타일은 라인별로 4개씩 구성이 되어있으며 feature간의 correlation을 구하여 모델에 사용을 하였습니다.
                </p>

                </div>
              </div>
              <div className='explane'>
                <div className='modelName'>DATA</div>
                <div className='contents'>
                <p>모델 생성에 사용할 feature는 도메인 지식을 활용하여 선택한 후 전처리를 진행하였습니다. </p>
                <p>리그오브레전드라는 게임에서 모델에 영향을 줄 수 있는 데이터는 크게 두가지로, 게임이 비정상적으로 빨리 끝난 경우와 게임이 너무 늦게 끝난 경우가 있습니다.</p>
                <p>먼저 게임이 비정상적으로 빨리 끝난 데이터는 게임 중 플레이어가 나가서 게임의 균형이 무너지거나 플레이어가 특정한 목적을 가지고 상대를 도와 줌으로써 균형이 무너지는 경우입니다. 이러한 이상치를 제거하기 위해 두가지 특징을 사용하였습니다.</p>
                <h4>-챔피언 레벨</h4>
                <p>플레이어가 도중에 게임을 나간 경우 챔피언의 레벨은 나간 시점을 계속 유지하고 있습니다. 게임이 길어지는 경우엔 레벨이 비정상적으로 높은 값을 가지고 있습니다. 평균적으로 11레벨에서 16레벨이 가장 이상적인 게임에 해당합니다.</p>
                <h4>-미니언 수</h4>
                <p>미니언을 일부러 처치하지 않거나 게임을 일찍 나가면 미니언의 수가 다른 플레이어들 보다 작게 됩니다. 따라서 티어에서 처치한 미니언 개수의 평균을 구해서 이상치를 제거하는데 사용하였습니다.</p>


                </div>
              </div>
            </section>
        </div>
      
    );
}

export default ModelPage;