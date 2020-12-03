import pandas as pd

class PlayStyle:
    def __init__(self):
        self.ps_db_features = [
            'kills','deaths', 'assists','killingSprees',
            'longestTimeSpentLiving','totalDamageDealt', 
            'visionScore', 'timeCCingOthers','totalHeal',
            'totalDamageTaken','goldEarned',
            'totalMinionsKilled', 'champLevel'
        ]

        self.ps_features = [
            'stats.kills','stats.deaths', 'stats.assists','stats.killingSprees',
            'stats.longestTimeSpentLiving','stats.totalDamageDealt', 
            'stats.visionScore', 'stats.timeCCingOthers','stats.totalHeal',
            'stats.totalDamageTaken','stats.goldEarned',
            'stats.totalMinionsKilled', 'stats.champLevel'
        ]

        self.DIAMONDTOPPS0 = {
            "playstyle":'무난형',
            'stats': {'공격':2, '시야':2,'군중제어':2, '성장':3},
            'explain':['상대에가 준 피해량이 보통입니다',
            '받은 피해량이 적은 것으로 보아 상대방과의 딜교환에서 많은 이득을 보았습니다',
                ],
            'todo': ['피해량을 올리기 위해 공격적으로 플레이 해보세요',
                '와드를 좀 더 많이 설치해 갱킹에 당하지 않도록 조심하세요'],
            'champion':{'id':[106, 240, 133]},
            'counter': {'id':[74, 85,54]}
            }

        self.DIAMONDTOPPS1= {"playstyle":'무리형',
            'stats': {'공격':3, '시야':3,'군중제어':4, '성장':3},
            'explain':['상대에게 많은 피해량을 주었습니다',
                '그러나 너무 많이 죽거나 무리해서 플레이 했습니다',
                    '상대방에게 군중 제어를 건 시간이 깁니다.'
                ],
            'todo': ['좀 더 안정적으로 플레이 해보세요',
                'cs를 좀 더 잘 먹어보세요'],
            'champion':{'id':[106, 57, 516]},
            'counter': {'id':[74, 240, 98]}
            }

        self.DIAMONDTOPPS2  ={"playstyle":"공격 안정형",
            "stats": {'공격': 4, '시야': 4, '군중제어': 3, '성장': 4},
            "explain"  :['상대에게 준 피해량이 가장 높습니다.',
                '상대에게 군중제어를 건 시간이 깁니다',
                '높은 cs 처치로 성장을 잘했으며 시야 장악을 잘했습니다'],
            'todo':['이렇게 플레이 한다면 티어를 올릴 수 있을 겁니다'],
            'champion': {'id':[54,98,164]},
            'counter': {'id':[14, 10, 74]}
            }
            
        self.DIAMONDTOPPS3 = {"playstyle":'부족형',
            'stats': {'공격':1, '시야':1,'군중제어':1, '성장':1},
            'explain':['상대에가 준 피해량이 가장 적습니다',
                '성장도 가장 못했습니다',
                    '킬이나 어시스트보다 데스가 많습니다'
                ],
            'todo': ['많은 와드 설치를 통해 갱킹에 대비하세요',
                'cs를 좀 더 잘 먹을 필요가 있습니다',
                '상대에게 많은 군중제어를 걸어서 팀에게 도움이 되세요',
                '상대에게 더 많은 피해를 줄 필요가 있습니다'],
            'champion':{'id':[54, 98, 516]},
            'counter': {'id':[14,10,98]}
            }

        self.DIAMONDJUNGLEPS0  ={"playstyle":"공격형",
        "stats": {'공격': 4, '시야': 3, '군중제어': 2, '성장': 3},
        "explain"  :['성장이 잘 되었습니다.',
                    '상대방에게 가장 많은 피해를 주었습니다.',
                    '와드도 많이 설치하였습니다',
        ],
        'todo':['상대방에게 군중제어를 좀 더 줄 수 있는 챔피언을 해보세요'],
        'champion': {'id':[141, 104, 121]},
        'counter': {'id':[11,78,20]}
        }
        self.DIAMONDJUNGLEPS1  ={"playstyle":"부족형",
        "stats": {'공격': 1, '시야': 2, '군중제어': 1, '성장': 2},
        "explain"  :['가장 아쉬운 플레이 스타일입니다.',
                    '상대에게 준 피해량이 부족하지 않지만 아쉽습니다',
                    '군중제어를 건 횟 수도 적습니다'],
        'todo':['군중제어를 많이 걸 수 있는 챔피언을 해보세요',
                '상대방에게 좀 더 피해를 줘보세요',
                '갱킹을 좀 더 많이 다니세요'],
        'champion': {'id':[32, 33, 2]},
        'counter': {'id':[141, 427, 36]}
        }
        self.DIAMONDJUNGLEPS2  ={"playstyle":"와드갱킹형",
        "stats": {'공격': 3, '시야': 4, '군중제어': 4, '성장': 3},
        "explain"  :['시야 점수와 군중 제어 점수가 가장 좋습니다.',
                    '공격과 성장도 잘했습니다',
                    '보통보다 좀 더 잘한 플레이 입니다.'],
        'todo':['좀 더 갱킹을 다녀 아군을 도우세요'],
        'champion': {'id':[20, 32, 60]},
        'counter': {'id':[141, 36,9]}
        }
        self.DIAMONDJUNGLEPS3  ={"playstyle":"성장형",
        "stats": {'공격': 2, '시야': 1, '군중제어': 3, '성장': 4},
        "explain"  :['가장 보통인 플레이입니다',
                    '시야점수가 좋지 않습니다',
                    '성장을 잘 했습니다'],
        'todo':['와드를 심어 팀원들이 정글을 점령해 보세요',
                '팀원의 cs를 조금만 뺏어 먹으세요'],
        'champion': {'id':[104, 20, 28]},
        'counter': {'id':[20, 141, 33]}
        }

        self.DIAMONDMIDPS0  ={"playstyle":"쓰레기형",
        "stats": {'공격': 1, '시야': 1, '군중제어':1 , '성장':1 },
        "explain"  :['미드에서 가장 하기 힘든 플레이 입니다',
                    '모든 지표가 좋지 않습니다.'],
        'todo':['와드를 많이 심어 갱킹에 대비하세요',
                'cs를 좀더 잘 챙기세요',
                '로밍을 다니면서 아군을 도와주세요'],
        'champion': {'id':[238, 3, 112]},
        'counter': {'id':[54, 50, 20]}
        }
        self.DIAMONDMIDPS1  ={"playstyle":"무난형",
        "stats": {'공격': 3, '시야': 2, '군중제어':2 , '성장':2 },
        "explain"  :['평범한 플레이입니다.'
                    '상대방에게 적절한 피해를 주었습니다.',
                    ],
        'todo':['와드를 잘 설치했지만 좀 만더 신경을 쓰면 좋을 것 같습니다',
                'cs를 좀 더 잘 챙기세요',
                '상대방에게 군중 제어를 많이 걸어 아군을 도와주세요'],
        'champion': {'id':[238, 3,105]},
        'counter': {'id':[54,50,10]}
        }
        self.DIAMONDMIDPS2  ={"playstyle":"페이커형",
        "stats": {'공격': 4, '시야': 4, '군중제어': 3, '성장':4 },
        "explain"  :['매우 잘한 플레이 입니다.',
                    '시야 점수 또한 매우 좋습니다.',
                    '성장도 잘했습니다.',
                    '상대방에게 많은 피해량을 주었습니다'],
        'todo':['많이 죽은 경우가 있으므로 조그만 조심해 주세요'],
        'champion': {'id':[142,7 ,69]},
        'counter': {'id':[10, 90, 84]}
        }
        self.DIAMONDMIDPS3  ={"playstyle":"스턴형",
        "stats": {'공격': 2, '시야': 3, '군중제어': 4, '성장':3 },
        "explain"  :['가장 군중제어를 가장 잘 걸었습니다.',
                    '상대방에게 넣은 딜이 보통입니다.',],
        'todo':['좀 더 상대방에게 공격적으로 플레이 해보세요'],
        'champion': {'id':[238, 112,105]},
        'counter': {'id':[54,20,10]}
        }

        self.DIAMONDBOTTOMPS0 ={"playstyle":"골고루형",
        "stats": {'공격': 3, '시야': 3, '군중제어': 4, '성장': 3},
        "explain"  :['플레이가 평균입니다',
                    '원딜인데도 군중제어를 잘 걸었습니다',
                    '공격과 시야, 성장 또한 무난합니다'],
        'todo':['잘 하고 있지만 좀 더 공격적으로 해보세요'],
        'champion': {'id':[360,202,67]},
        'counter': {'id':[50,21,18]}
        }
        self.DIAMONDBOTTOMPS1 ={"playstyle":"공격형",
        "stats": {'공격': 3, '시야': 2, '군중제어': 1, '성장': 3},
        "explain"  :['군중제어 점수가 좀 낮습니다',
                    '와드를 좀 더 설치하세요',
                    ],
        'todo':['군중 제어를 잘 걸 수 있는 챔피언으로 선택하세요'],
        'champion': {'id':[202, 81,22]},
        'counter': {'id':[50, 18, 81]}
        }
        self.DIAMONDBOTTOMPS2 ={"playstyle":"세체원형",
        "stats": {'공격': 4, '시야': 4, '군중제어': 3, '성장': 4},
        "explain"  :['가장 잘한 플레이 입니다',
                    '말할 게 없습니다'],
        'todo':['이렇게만 하면 티어를 올릴 수 있습니다'],
        'champion': {'id':[360, 67,236]},
        'counter': {'id':[50,21,18]}
        }
        self.DIAMONDBOTTOMPS3 ={"playstyle":"벌레형",
        "stats": {'공격': 1, '시야': 1, '군중제어': 1, '성장': 1},
        "explain"  :['가장 못한 플레이 입니다.',
                    '많은 부분에서 보완이 필요합니다'],
        'todo':['공격적으로 플레이 하세요',
                '시야를 좀 더 잡아주세요',
                '성장을 위해 cs를 잘 먹어보세요',
                '군중제어를 걸 수 있는 챔피언을 선택하여 아군을 도와주세요'],
        'champion': {'id':[22, 236, 110]},
        'counter': {'id':[18, 202, 157]}
        }
        self.DIAMONDSUPPORTERPS0 = {"playstyle":"완벽형",
        "stats": {'공격': 4, '시야': 4, '군중제어': 3, '성장': 3},
        "explain"  :['굉장히 잘한 플레이 입니다',
                    '적절한 군중제어와 성장을 하였습니다',
                    '공격적이었습니다'],
        'todo':['서포터로써 매우 완벽합니다'],
        'champion': {'id':[89,412,53]},
        'counter': {'id':[35,57,161]}
        }
        self.DIAMONDSUPPORTERPS1 = {"playstyle":"보디가드형",
        "stats": {'공격': 3, '시야': 4, '군중제어': 4, '성장': 3},
        "explain"  :['좀 많이 죽을 수는 있고 다른 부분은 매우 잘했습니다',
                    '시야 점수가 매우 좋습니다'],
        'todo':['좀 덜 죽어보세요',
                '생존기가 있는 서폿형 챔피언을 선택하세요'],
        'champion': {'id':[89,412,201]},
        'counter': {'id':[35, 180, 350]}
        }
        self.DIAMONDSUPPORTERPS2 = {"playstyle":"시야형",
        "stats": {'공격': 2, '시야':3 , '군중제어': 2, '성장': 3},
        "explain"  :['시야 점수가 보통입니다',
                    '군중제어가 좀 약합니다'],
        'todo':['군중제어를 걸 수 있는 챔피언을 선택해 보세요',
                '시야를 좀더 많이 점령해보세요'],
        'champion': {'id':[89, 201, 555]},
        'counter': {'id':[35, 412, 53]}
        }
        self.DIAMONDSUPPORTERPS3 = {"playstyle":"캐리형",
        "stats": {'공격': 1, '시야': 1, '군중제어': 1, '성장': 4},
        "explain"  :['성장 점수가 높지만 서폿으로써는 좋지 않습니다',
                    '시야점수가 좋지 않습니다'],
        'todo':['성장을 추구하는 플레이도 좋지만 좀 더 팀원을 지켜야합니다',
                '와드를 좀더 설치해야 합니다'],
        'champion': {'id':[80, 101, 35]},
        'counter': {'id':[154, 40, 89]}
        }