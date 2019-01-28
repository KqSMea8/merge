.class public Lcom/youku/vo/HomeSCGRecommendInfo$HomeSCGRecommendData$HomeSCGRecommendItem;
.super Lcom/youku/phone/detail/data/Video;
.source "HomeSCGRecommendInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/HomeSCGRecommendInfo$HomeSCGRecommendData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HomeSCGRecommendItem"
.end annotation


# instance fields
.field public algInfo:Ljava/lang/String;

.field public codeId:Ljava/lang/String;

.field public commentCount:Ljava/lang/String;

.field public dct:I

.field public dma:I

.field public id:Ljava/lang/String;

.field public picUrl:Ljava/lang/String;

.field public playAmount:J

.field public playLink:Ljava/lang/String;

.field public pos:Ljava/lang/String;

.field public recClickLogUrl:Ljava/lang/String;

.field public recClickLogUrlHJLJ:Ljava/lang/String;

.field public reputation:Ljava/lang/String;

.field public subTitle:Ljava/lang/String;

.field public summary:Ljava/lang/String;

.field final synthetic this$1:Lcom/youku/vo/HomeSCGRecommendInfo$HomeSCGRecommendData;

.field public title:Ljava/lang/String;

.field public totalTime:Ljava/lang/String;

.field public type:I

.field public vPicUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/youku/vo/HomeSCGRecommendInfo$HomeSCGRecommendData;)V
    .locals 0
    .param p1, "this$1"    # Lcom/youku/vo/HomeSCGRecommendInfo$HomeSCGRecommendData;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/youku/vo/HomeSCGRecommendInfo$HomeSCGRecommendData$HomeSCGRecommendItem;->this$1:Lcom/youku/vo/HomeSCGRecommendInfo$HomeSCGRecommendData;

    invoke-direct {p0}, Lcom/youku/phone/detail/data/Video;-><init>()V

    return-void
.end method
