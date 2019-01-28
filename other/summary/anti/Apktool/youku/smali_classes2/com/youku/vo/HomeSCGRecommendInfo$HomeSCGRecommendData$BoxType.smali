.class public Lcom/youku/vo/HomeSCGRecommendInfo$HomeSCGRecommendData$BoxType;
.super Ljava/lang/Object;
.source "HomeSCGRecommendInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/HomeSCGRecommendInfo$HomeSCGRecommendData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BoxType"
.end annotation


# instance fields
.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field final synthetic this$1:Lcom/youku/vo/HomeSCGRecommendInfo$HomeSCGRecommendData;


# direct methods
.method public constructor <init>(Lcom/youku/vo/HomeSCGRecommendInfo$HomeSCGRecommendData;)V
    .locals 0
    .param p1, "this$1"    # Lcom/youku/vo/HomeSCGRecommendInfo$HomeSCGRecommendData;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/youku/vo/HomeSCGRecommendInfo$HomeSCGRecommendData$BoxType;->this$1:Lcom/youku/vo/HomeSCGRecommendInfo$HomeSCGRecommendData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
