.class public Lc8/ukk;
.super Ljava/lang/Object;
.source "DetailDataSource.java"

# interfaces
.implements Lc8/Jmh;


# static fields
.field public static CARD_TYPE_FEED_TITLE:Ljava/lang/String; = null

.field public static CARD_TYPE_RELATED_PART_TITLE:Ljava/lang/String; = null

.field public static CARD_TYPE_RELATED_VIDEO_TITLE:Ljava/lang/String; = null

.field public static CARD_TYPE_STILLS_TITLE:Ljava/lang/String; = null

.field public static final DETAIL_PLAYER_STATE_PAUSE:I = 0x9d9

.field public static final DETAIL_PLAYER_STATE_PLAYING:I = 0x9da

.field public static final GET_ACTIVITY_FAIL:I = 0x7ee

.field public static final GET_ACTIVITY_SUCCESS:I = 0x7ed

.field public static final GET_AD_FAIL:I = 0x7e4

.field public static final GET_AD_SUCCESS:I = 0x7e3

.field public static final GET_ALI_STAR_DATA_FAIL:I = 0x82b

.field public static final GET_ALI_STAR_DATA_SUCCESS:I = 0x82a

.field public static final GET_BANNER_FAIL:I = 0x7ea

.field public static final GET_BANNER_SUCCESS:I = 0x7e9

.field public static final GET_CONTIINUE_CARD_DATA_FAIL:I = 0x8a1

.field public static final GET_CONTIINUE_CARD_DATA_SUCCESS:I = 0x8a0

.field public static final GET_DETAIL_BASE_DATA_RESTRICTION:I = 0x9c6

.field public static final GET_DETAIL_FEED_FAIL:I = 0x9cc

.field public static final GET_DETAIL_FEED_INSERT_FAIL:I = 0x9ce

.field public static final GET_DETAIL_FEED_INSERT_SUCCESS:I = 0x9cd

.field public static final GET_DETAIL_FEED_SUCCESS:I = 0x9cb

.field public static final GET_DETAIL_GAME_CENTER_CARD_DATA_SUCCESS:I = 0x7e1

.field public static final GET_DETAIL_LIVE_SUBSCRIBE_FAIL:I = 0x9c8

.field public static final GET_DETAIL_LIVE_SUBSCRIBE_SUCCESS:I = 0x9c7

.field public static final GET_DETAIL_SUBSCRIBE_FAIL:I = 0x9ca

.field public static final GET_DETAIL_SUBSCRIBE_SUCCESS:I = 0x9c9

.field public static final GET_DETAIL_VIDEO_EXTRA_INFO_FAIL:I = 0x903

.field public static final GET_DETAIL_VIDEO_EXTRA_INFO_SUCCESS:I = 0x902

.field public static final GET_DETAIL_VIDEO_FOLLOW_FAIL:I = 0x964

.field public static final GET_DETAIL_VIDEO_FOLLOW_SUCCESS:I = 0x963

.field public static final GET_FUN_FAIL:I = 0x7ec

.field public static final GET_FUN_SUCCESS:I = 0x7eb

.field public static final GET_GUIDE_FAIL:I = 0x7e8

.field public static final GET_GUIDE_SUCCESS:I = 0x7e7

.field public static final GET_HIGHLIGHTS_CARD_DATA_FAIL:I = 0x7f3

.field public static final GET_HIGHLIGHTS_CARD_DATA_SUCCESS:I = 0x7f2

.field public static final GET_INTERACT_DATA_FAIL:I = 0x7e6

.field public static final GET_INTERACT_DATA_SUCCESS:I = 0x7e5

.field public static final GET_SCG_CARD_DATA_FAIL:I = 0x81f

.field public static final GET_SCG_CARD_DATA_SUCCESS:I = 0x81e

.field public static final GET_SERIESVIDEO_DATA_RESTRICTION:I = 0x9c5

.field public static final GET_SIDE_SLIP_FULL_CARD_DATA_FAIL:I = 0x83d

.field public static final GET_SIDE_SLIP_FULL_CARD_DATA_SUCCESS:I = 0x83c

.field public static final GET_SIDE_SLIP_SMALL_CARD_DATA_FAIL:I = 0x833

.field public static final GET_SIDE_SLIP_SMALL_CARD_DATA_SUCCESS:I = 0x832

.field public static final GET_STILLS_CARD_DATA_FAIL:I = 0x821

.field public static final GET_STILLS_CARD_DATA_NONE:I = 0x822

.field public static final GET_STILLS_CARD_DATA_SUCCESS:I = 0x820

.field public static final REQ_VIDEO_FAVORATE_FAILED:I = 0x7df

.field public static final REQ_VIDEO_FAVORATE_PREPARE:I = 0x7dd

.field public static final REQ_VIDEO_FAVORATE_SUCCESS:I = 0x7de

.field public static final SERIESVIDEO_TYPE_ALBUMS:Ljava/lang/String; = "3"

.field public static final SERIESVIDEO_TYPE_SHOW:Ljava/lang/String; = "1"

.field public static final SERIESVIDEO_TYPE_VARIETY:Ljava/lang/String; = "2"

.field public static adInfo:Lc8/mkk;

.field public static advSwitch:I

.field public static aliStarList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static bannerInfo:Lc8/okk;

.field public static bottomBarInfo:Lc8/pkk;

.field public static collectionVideoPalyingPosition:I

.field public static contentInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc8/rkk;",
            ">;"
        }
    .end annotation
.end field

.field public static continuePlayInfo:Lcom/youku/phone/detail/data/ContinuePlayInfo;

.field public static detailCardOrderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc8/tkk;",
            ">;"
        }
    .end annotation
.end field

.field public static detailVideoCheck:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static doubanInfo:Lc8/yVo;

.field public static funInfo:Lc8/ykk;

.field public static functionInfosMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/zkk;",
            ">;>;"
        }
    .end annotation
.end field

.field public static functionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc8/zkk;",
            ">;"
        }
    .end annotation
.end field

.field public static gameView:Landroid/view/View;

.field public static guideList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc8/Akk;",
            ">;"
        }
    .end annotation
.end field

.field public static highlightsInfo:Lcom/youku/phone/detail/data/HighlightsInfo;

.field public static homeSCGRecommendInfo:Lcom/youku/vo/HomeSCGRecommendInfo;

.field public static isFirstRequestFavorite:Z

.field public static isShowAllCollectionVideo:Z

.field public static isShowScg:Z

.field public static isSubscribed:Z

.field public static isVideoScg:Z

.field public static mBigWordsDataInfo:Lcom/youku/phone/detail/data/PlayRelatedVideoDataInfo;

.field public static mDetailVideoInfo:Lcom/youku/phone/detail/data/DetailVideoInfo;

.field public static mPlayRelatedVideoDataInfo:Lcom/youku/phone/detail/data/PlayRelatedVideoDataInfo;

.field public static final mSeriesVideoDataInfo:Lcom/youku/phone/detail/data/SeriesVideoDataInfo;

.field public static mStillsCardInfo:Lc8/Pkk;

.field public static newInfo:Lcom/youku/phone/detail/data/SeriesVideoDataInfo;

.field public static final newPlayRelatedParts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/phone/detail/data/PlayRelatedPart;",
            ">;"
        }
    .end annotation
.end field

.field public static final nowPlayingVideo:Lcom/youku/phone/detail/data/NowPlayingVideo;

.field public static playCardPalyingPosition:I

.field public static playCardWillPlay:Z

.field public static final playRelatedParts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/phone/detail/data/PlayRelatedPart;",
            ">;"
        }
    .end annotation
.end field

.field public static preloadInfo:Lc8/JVo;

.field public static sComponentMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final sFeedDataInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/xkk;",
            ">;>;"
        }
    .end annotation
.end field

.field public static sIsAsyncLoadFunction:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static sIsAsyncLoadFunctionComponentId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sIsAsyncLoadPlayRelateParts:Z

.field public static sIsAsyncLoadStar:Z

.field public static sIsAsyncLoadSubscribed:Z

.field public static sIsSideSlipContentShow:Z

.field public static sLanguageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/player/goplay/Language;",
            ">;"
        }
    .end annotation
.end field

.field public static sLiveSubScribeInfo:Lcom/youku/phone/detail/cms/dto/component/ComponentDTO;

.field public static sShowCircleInfo:Lc8/Gkk;

.field public static sTmallBannerInfo:Lc8/Rkk;

.field public static sVipBannerInfo:Lc8/Rkk;

.field public static scgCardInfo:Lc8/KVo;

.field public static scgType:Ljava/lang/String;

.field public static final seriesDescInfo:Lcom/youku/phone/detail/data/SeriesVideoDataInfo;

.field public static seriesVideoPalyingPosition:I

.field public static sideSlipSmallCardInfo:Lc8/NVo;

.field public static sideslipContentInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lc8/Jkk;",
            ">;"
        }
    .end annotation
.end field

.field public static starList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc8/Kkk;",
            ">;"
        }
    .end annotation
.end field

.field public static starTitle:Ljava/lang/String;

.field public static stillModuleDTO:Lcom/youku/phone/detail/cms/dto/ModuleDTO;

.field public static subscribeInfo:Lc8/Qkk;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 76
    sput-boolean v2, Lc8/ukk;->sIsAsyncLoadPlayRelateParts:Z

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lc8/ukk;->playRelatedParts:Ljava/util/ArrayList;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lc8/ukk;->newPlayRelatedParts:Ljava/util/ArrayList;

    .line 110
    new-instance v0, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;

    invoke-direct {v0}, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;-><init>()V

    sput-object v0, Lc8/ukk;->mSeriesVideoDataInfo:Lcom/youku/phone/detail/data/SeriesVideoDataInfo;

    .line 111
    new-instance v0, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;

    invoke-direct {v0}, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;-><init>()V

    sput-object v0, Lc8/ukk;->seriesDescInfo:Lcom/youku/phone/detail/data/SeriesVideoDataInfo;

    .line 112
    new-instance v0, Lcom/youku/phone/detail/data/NowPlayingVideo;

    invoke-direct {v0}, Lcom/youku/phone/detail/data/NowPlayingVideo;-><init>()V

    sput-object v0, Lc8/ukk;->nowPlayingVideo:Lcom/youku/phone/detail/data/NowPlayingVideo;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lc8/ukk;->sFeedDataInfoMap:Ljava/util/Map;

    .line 114
    sput-object v1, Lc8/ukk;->CARD_TYPE_RELATED_VIDEO_TITLE:Ljava/lang/String;

    .line 115
    sput-object v1, Lc8/ukk;->CARD_TYPE_RELATED_PART_TITLE:Ljava/lang/String;

    .line 116
    sput-object v1, Lc8/ukk;->CARD_TYPE_STILLS_TITLE:Ljava/lang/String;

    .line 117
    sput-object v1, Lc8/ukk;->CARD_TYPE_FEED_TITLE:Ljava/lang/String;

    .line 121
    sput-boolean v2, Lc8/ukk;->isShowAllCollectionVideo:Z

    .line 124
    sput-boolean v2, Lc8/ukk;->isShowScg:Z

    .line 125
    sput-boolean v2, Lc8/ukk;->isVideoScg:Z

    .line 126
    sput-boolean v2, Lc8/ukk;->sIsSideSlipContentShow:Z

    .line 127
    sput-object v1, Lc8/ukk;->mDetailVideoInfo:Lcom/youku/phone/detail/data/DetailVideoInfo;

    .line 128
    sput-object v1, Lc8/ukk;->sLanguageList:Ljava/util/ArrayList;

    .line 131
    sput-object v1, Lc8/ukk;->mPlayRelatedVideoDataInfo:Lcom/youku/phone/detail/data/PlayRelatedVideoDataInfo;

    .line 133
    sput-object v1, Lc8/ukk;->mBigWordsDataInfo:Lcom/youku/phone/detail/data/PlayRelatedVideoDataInfo;

    .line 134
    new-instance v0, Lc8/KVo;

    invoke-direct {v0}, Lc8/KVo;-><init>()V

    sput-object v0, Lc8/ukk;->scgCardInfo:Lc8/KVo;

    .line 135
    new-instance v0, Lc8/JVo;

    invoke-direct {v0}, Lc8/JVo;-><init>()V

    sput-object v0, Lc8/ukk;->preloadInfo:Lc8/JVo;

    .line 137
    sput-object v1, Lc8/ukk;->detailCardOrderList:Ljava/util/ArrayList;

    .line 139
    sput-object v1, Lc8/ukk;->detailVideoCheck:Ljava/util/Map;

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lc8/ukk;->sComponentMap:Ljava/util/Map;

    .line 151
    sput-object v1, Lc8/ukk;->stillModuleDTO:Lcom/youku/phone/detail/cms/dto/ModuleDTO;

    .line 157
    sput-object v1, Lc8/ukk;->mStillsCardInfo:Lc8/Pkk;

    .line 158
    new-instance v0, Lc8/NVo;

    invoke-direct {v0}, Lc8/NVo;-><init>()V

    sput-object v0, Lc8/ukk;->sideSlipSmallCardInfo:Lc8/NVo;

    .line 160
    new-instance v0, Lc8/yVo;

    invoke-direct {v0}, Lc8/yVo;-><init>()V

    sput-object v0, Lc8/ukk;->doubanInfo:Lc8/yVo;

    .line 163
    sput v2, Lc8/ukk;->advSwitch:I

    .line 170
    sput-object v1, Lc8/ukk;->guideList:Ljava/util/ArrayList;

    .line 173
    sput-boolean v2, Lc8/ukk;->sIsAsyncLoadStar:Z

    .line 179
    sput-object v1, Lc8/ukk;->starList:Ljava/util/ArrayList;

    .line 185
    sput-object v1, Lc8/ukk;->aliStarList:Ljava/util/ArrayList;

    .line 190
    new-instance v0, Lcom/youku/phone/detail/data/ContinuePlayInfo;

    invoke-direct {v0}, Lcom/youku/phone/detail/data/ContinuePlayInfo;-><init>()V

    sput-object v0, Lc8/ukk;->continuePlayInfo:Lcom/youku/phone/detail/data/ContinuePlayInfo;

    .line 195
    new-instance v0, Lcom/youku/phone/detail/data/HighlightsInfo;

    invoke-direct {v0}, Lcom/youku/phone/detail/data/HighlightsInfo;-><init>()V

    sput-object v0, Lc8/ukk;->highlightsInfo:Lcom/youku/phone/detail/data/HighlightsInfo;

    .line 200
    sput-object v1, Lc8/ukk;->functionList:Ljava/util/ArrayList;

    .line 205
    sput-object v1, Lc8/ukk;->contentInfos:Ljava/util/ArrayList;

    .line 210
    sput-object v1, Lc8/ukk;->sideslipContentInfoMap:Ljava/util/Map;

    .line 214
    sput-object v1, Lc8/ukk;->sIsAsyncLoadFunction:Ljava/util/Map;

    .line 217
    sput-object v1, Lc8/ukk;->sIsAsyncLoadFunctionComponentId:Ljava/util/Map;

    .line 221
    sput-object v1, Lc8/ukk;->functionInfosMap:Ljava/util/Map;

    .line 226
    sput v2, Lc8/ukk;->seriesVideoPalyingPosition:I

    .line 227
    sput-object v1, Lc8/ukk;->subscribeInfo:Lc8/Qkk;

    .line 232
    const/4 v0, -0x1

    sput v0, Lc8/ukk;->playCardPalyingPosition:I

    .line 236
    sput-boolean v2, Lc8/ukk;->playCardWillPlay:Z

    .line 240
    sput v2, Lc8/ukk;->collectionVideoPalyingPosition:I

    .line 244
    sput-object v1, Lc8/ukk;->adInfo:Lc8/mkk;

    .line 249
    sput-object v1, Lc8/ukk;->bannerInfo:Lc8/okk;

    .line 251
    sput-object v1, Lc8/ukk;->gameView:Landroid/view/View;

    .line 253
    sput-object v1, Lc8/ukk;->bottomBarInfo:Lc8/pkk;

    .line 254
    sput-object v1, Lc8/ukk;->funInfo:Lc8/ykk;

    .line 257
    sput-boolean v2, Lc8/ukk;->sIsAsyncLoadSubscribed:Z

    .line 264
    const/4 v0, 0x1

    sput-boolean v0, Lc8/ukk;->isSubscribed:Z

    .line 269
    sput-object v1, Lc8/ukk;->sVipBannerInfo:Lc8/Rkk;

    .line 274
    sput-object v1, Lc8/ukk;->sTmallBannerInfo:Lc8/Rkk;

    .line 279
    sput-object v1, Lc8/ukk;->sLiveSubScribeInfo:Lcom/youku/phone/detail/cms/dto/component/ComponentDTO;

    .line 284
    sput-object v1, Lc8/ukk;->sShowCircleInfo:Lc8/Gkk;

    .line 289
    new-instance v0, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;

    invoke-direct {v0}, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;-><init>()V

    sput-object v0, Lc8/ukk;->newInfo:Lcom/youku/phone/detail/data/SeriesVideoDataInfo;

    .line 294
    sput-boolean v2, Lc8/ukk;->isFirstRequestFavorite:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    return-void
.end method

.method public static clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 300
    sget-object v0, Lc8/ukk;->mDetailVideoInfo:Lcom/youku/phone/detail/data/DetailVideoInfo;

    if-eqz v0, :cond_0

    .line 301
    sput-object v1, Lc8/ukk;->mDetailVideoInfo:Lcom/youku/phone/detail/data/DetailVideoInfo;

    .line 303
    :cond_0
    sget-object v0, Lc8/ukk;->sLanguageList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 304
    sput-object v1, Lc8/ukk;->sLanguageList:Ljava/util/ArrayList;

    .line 307
    :cond_1
    sget-object v0, Lc8/ukk;->playRelatedParts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 308
    sget-object v0, Lc8/ukk;->newPlayRelatedParts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 309
    sget-object v0, Lc8/ukk;->mPlayRelatedVideoDataInfo:Lcom/youku/phone/detail/data/PlayRelatedVideoDataInfo;

    if-eqz v0, :cond_2

    .line 310
    sget-object v0, Lc8/ukk;->mPlayRelatedVideoDataInfo:Lcom/youku/phone/detail/data/PlayRelatedVideoDataInfo;

    invoke-virtual {v0}, Lcom/youku/phone/detail/data/PlayRelatedVideoDataInfo;->clear()V

    .line 311
    sput-object v1, Lc8/ukk;->mPlayRelatedVideoDataInfo:Lcom/youku/phone/detail/data/PlayRelatedVideoDataInfo;

    .line 314
    :cond_2
    sget-object v0, Lc8/ukk;->mSeriesVideoDataInfo:Lcom/youku/phone/detail/data/SeriesVideoDataInfo;

    invoke-virtual {v0}, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->clear()V

    .line 315
    sget-object v0, Lc8/ukk;->seriesDescInfo:Lcom/youku/phone/detail/data/SeriesVideoDataInfo;

    invoke-virtual {v0}, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->clear()V

    .line 317
    sget-object v0, Lc8/ukk;->subscribeInfo:Lc8/Qkk;

    if-eqz v0, :cond_3

    .line 318
    sput-object v1, Lc8/ukk;->subscribeInfo:Lc8/Qkk;

    .line 321
    :cond_3
    sget-object v0, Lc8/ukk;->bottomBarInfo:Lc8/pkk;

    if-eqz v0, :cond_4

    .line 322
    sget-object v0, Lc8/ukk;->bottomBarInfo:Lc8/pkk;

    iput-object v1, v0, Lc8/pkk;->activityInfo:Lc8/nkk;

    .line 323
    sput-object v1, Lc8/ukk;->bottomBarInfo:Lc8/pkk;

    .line 326
    :cond_4
    sget-object v0, Lc8/ukk;->funInfo:Lc8/ykk;

    if-eqz v0, :cond_5

    .line 327
    sput-object v1, Lc8/ukk;->funInfo:Lc8/ykk;

    .line 330
    :cond_5
    sget-object v0, Lc8/ukk;->adInfo:Lc8/mkk;

    if-eqz v0, :cond_6

    .line 331
    sput-object v1, Lc8/ukk;->adInfo:Lc8/mkk;

    .line 334
    :cond_6
    sget-object v0, Lc8/ukk;->bannerInfo:Lc8/okk;

    if-eqz v0, :cond_7

    .line 335
    sput-object v1, Lc8/ukk;->bannerInfo:Lc8/okk;

    .line 338
    :cond_7
    sget-object v0, Lc8/ukk;->gameView:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 339
    sput-object v1, Lc8/ukk;->gameView:Landroid/view/View;

    .line 342
    :cond_8
    sget-object v0, Lc8/ukk;->starList:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 343
    sput-object v1, Lc8/ukk;->starList:Ljava/util/ArrayList;

    .line 346
    :cond_9
    sget-object v0, Lc8/ukk;->continuePlayInfo:Lcom/youku/phone/detail/data/ContinuePlayInfo;

    if-eqz v0, :cond_a

    .line 347
    sput-object v1, Lc8/ukk;->continuePlayInfo:Lcom/youku/phone/detail/data/ContinuePlayInfo;

    .line 350
    :cond_a
    sget-object v0, Lc8/ukk;->mStillsCardInfo:Lc8/Pkk;

    if-eqz v0, :cond_b

    .line 351
    sput-object v1, Lc8/ukk;->mStillsCardInfo:Lc8/Pkk;

    .line 354
    :cond_b
    sput-boolean v2, Lc8/ukk;->playCardWillPlay:Z

    .line 355
    sput-object v1, Lc8/ukk;->guideList:Ljava/util/ArrayList;

    .line 356
    invoke-static {}, Lc8/Wnk;->clean()V

    .line 357
    sget-object v0, Lc8/ukk;->nowPlayingVideo:Lcom/youku/phone/detail/data/NowPlayingVideo;

    invoke-virtual {v0}, Lcom/youku/phone/detail/data/NowPlayingVideo;->clear()V

    .line 359
    const/4 v0, 0x1

    sput-boolean v0, Lc8/ukk;->isSubscribed:Z

    .line 361
    sget-object v0, Lc8/ukk;->sideSlipSmallCardInfo:Lc8/NVo;

    if-eqz v0, :cond_c

    .line 362
    sget-object v0, Lc8/ukk;->sideSlipSmallCardInfo:Lc8/NVo;

    iget-object v0, v0, Lc8/NVo;->sideSlipInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 365
    :cond_c
    sget-object v0, Lc8/ukk;->doubanInfo:Lc8/yVo;

    if-eqz v0, :cond_d

    .line 366
    sget-object v0, Lc8/ukk;->doubanInfo:Lc8/yVo;

    iget-object v0, v0, Lc8/yVo;->doubanReviewObj:Lc8/AVo;

    iget-object v0, v0, Lc8/AVo;->doubanReviewInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 367
    sget-object v0, Lc8/ukk;->doubanInfo:Lc8/yVo;

    iget-object v0, v0, Lc8/yVo;->doubanCommentObj:Lc8/xVo;

    iget-object v0, v0, Lc8/xVo;->doubanCommentInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 369
    :cond_d
    sput v2, Lc8/Wnk;->detailSideSlipDataState:I

    .line 370
    sput v2, Lc8/Wnk;->detaildoubanDataState:I

    .line 371
    sget-object v0, Lc8/ukk;->sComponentMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 373
    sput-boolean v2, Lc8/ukk;->isFirstRequestFavorite:Z

    .line 374
    return-void
.end method
