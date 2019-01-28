.class public Lc8/Lkk;
.super Ljava/lang/Object;
.source "State.java"


# static fields
.field public static detailAliStarDataState:I

.field public static detailAutoCacheDataState:I

.field public static detailBigwordListDataState:I

.field public static detailCollectionDataState:I

.field public static detailCommentDataState:I

.field public static detailContinueDataState:I

.field public static detailHighlightsDataState:I

.field public static detailNewRelatedPartDataState:I

.field public static detailRelatedPartDataState:I

.field public static detailRelatedVideoDataState:I

.field public static detailScgDataState:I

.field public static detailSeriesDataState:I

.field public static detailSeriesVideoDescDataState:I

.field public static detailSideSlipDataState:I

.field public static detailStillsDataState:I

.field public static detailSubscribeNeedRefresh:Z

.field public static detaildoubanDataState:I

.field public static isFirstLoadRelatedVideoData:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8
    sput-boolean v0, Lc8/Lkk;->detailSubscribeNeedRefresh:Z

    .line 10
    sput v0, Lc8/Lkk;->detailRelatedPartDataState:I

    .line 12
    sput v0, Lc8/Lkk;->detailNewRelatedPartDataState:I

    .line 14
    sput v0, Lc8/Lkk;->detailSeriesDataState:I

    .line 16
    sput v0, Lc8/Lkk;->detailSeriesVideoDescDataState:I

    .line 18
    sput v0, Lc8/Lkk;->detailRelatedVideoDataState:I

    .line 20
    sput v0, Lc8/Lkk;->detailBigwordListDataState:I

    .line 22
    sput v0, Lc8/Lkk;->detailCommentDataState:I

    .line 24
    sput v0, Lc8/Lkk;->detailCollectionDataState:I

    .line 26
    sput v0, Lc8/Lkk;->detailHighlightsDataState:I

    .line 28
    sput v0, Lc8/Lkk;->detailScgDataState:I

    .line 30
    sput v0, Lc8/Lkk;->detailStillsDataState:I

    .line 32
    sput v0, Lc8/Lkk;->detailAliStarDataState:I

    .line 33
    sput v0, Lc8/Lkk;->detailSideSlipDataState:I

    .line 35
    sput v0, Lc8/Lkk;->detaildoubanDataState:I

    .line 37
    sput v0, Lc8/Lkk;->detailAutoCacheDataState:I

    .line 39
    sput v0, Lc8/Lkk;->detailContinueDataState:I

    .line 41
    const/4 v0, 0x1

    sput-boolean v0, Lc8/Lkk;->isFirstLoadRelatedVideoData:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final clean()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    sput-boolean v0, Lc8/Lkk;->detailSubscribeNeedRefresh:Z

    .line 47
    sput v0, Lc8/Lkk;->detailRelatedPartDataState:I

    .line 49
    sput v0, Lc8/Lkk;->detailNewRelatedPartDataState:I

    .line 51
    sput v0, Lc8/Lkk;->detailSeriesDataState:I

    .line 53
    sput v0, Lc8/Lkk;->detailSeriesVideoDescDataState:I

    .line 55
    sput v0, Lc8/Lkk;->detailRelatedVideoDataState:I

    .line 57
    sput v0, Lc8/Lkk;->detailBigwordListDataState:I

    .line 59
    sput v0, Lc8/Lkk;->detailCommentDataState:I

    .line 61
    sput v0, Lc8/Lkk;->detailCollectionDataState:I

    .line 63
    sput v0, Lc8/Lkk;->detailHighlightsDataState:I

    .line 65
    sput v0, Lc8/Lkk;->detailScgDataState:I

    .line 67
    sput v0, Lc8/Lkk;->detailStillsDataState:I

    .line 69
    sput v0, Lc8/Lkk;->detailAliStarDataState:I

    .line 71
    sput v0, Lc8/Lkk;->detailSideSlipDataState:I

    .line 73
    sput v0, Lc8/Lkk;->detaildoubanDataState:I

    .line 75
    sput v0, Lc8/Lkk;->detailAutoCacheDataState:I

    .line 77
    sput v0, Lc8/Lkk;->detailContinueDataState:I

    .line 79
    const/4 v0, 0x1

    sput-boolean v0, Lc8/Lkk;->isFirstLoadRelatedVideoData:Z

    .line 80
    return-void
.end method
