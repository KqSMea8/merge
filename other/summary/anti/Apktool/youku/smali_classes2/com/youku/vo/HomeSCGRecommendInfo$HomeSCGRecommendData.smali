.class public Lcom/youku/vo/HomeSCGRecommendInfo$HomeSCGRecommendData;
.super Ljava/lang/Object;
.source "HomeSCGRecommendInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/HomeSCGRecommendInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HomeSCGRecommendData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/vo/HomeSCGRecommendInfo$HomeSCGRecommendData$HomeSCGRecommendItem;,
        Lcom/youku/vo/HomeSCGRecommendInfo$HomeSCGRecommendData$BoxType;,
        Lcom/youku/vo/HomeSCGRecommendInfo$HomeSCGRecommendData$FBReason;
    }
.end annotation


# instance fields
.field public algInfo:Ljava/lang/String;

.field public box_type:Lcom/youku/vo/HomeSCGRecommendInfo$HomeSCGRecommendData$BoxType;

.field public dct:I

.field public dma:I

.field public drawerName:Ljava/lang/String;

.field public drawerPos:Ljava/lang/String;

.field public fbReason:Lcom/youku/vo/HomeSCGRecommendInfo$HomeSCGRecommendData$FBReason;

.field public hasPlayPage:Ljava/lang/String;

.field public hasSubPage:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public layout:Ljava/lang/String;

.field public recReason:Ljava/lang/String;

.field final synthetic this$0:Lcom/youku/vo/HomeSCGRecommendInfo;

.field public type:I

.field public videos:[Lcom/youku/vo/HomeSCGRecommendInfo$HomeSCGRecommendData$HomeSCGRecommendItem;


# direct methods
.method public constructor <init>(Lcom/youku/vo/HomeSCGRecommendInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/vo/HomeSCGRecommendInfo;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/youku/vo/HomeSCGRecommendInfo$HomeSCGRecommendData;->this$0:Lcom/youku/vo/HomeSCGRecommendInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method
