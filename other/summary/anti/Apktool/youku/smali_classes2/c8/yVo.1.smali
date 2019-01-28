.class public Lc8/yVo;
.super Ljava/lang/Object;
.source "DoubanInfo.java"


# instance fields
.field public doubanCommentObj:Lc8/xVo;

.field public doubanReviewObj:Lc8/AVo;

.field public status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Lc8/AVo;

    invoke-direct {v0}, Lc8/AVo;-><init>()V

    iput-object v0, p0, Lc8/yVo;->doubanReviewObj:Lc8/AVo;

    .line 10
    new-instance v0, Lc8/xVo;

    invoke-direct {v0}, Lc8/xVo;-><init>()V

    iput-object v0, p0, Lc8/yVo;->doubanCommentObj:Lc8/xVo;

    return-void
.end method
