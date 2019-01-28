.class public Lcom/youku/vo/ScrollerInfoVo$ScrollerInfo;
.super Ljava/lang/Object;
.source "ScrollerInfoVo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/ScrollerInfoVo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScrollerInfo"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3L


# instance fields
.field public app_url:[Ljava/lang/String;

.field public gameCenterVideoInfo:Lcom/youku/vo/GameCenterVideoInfo;

.field public openUrl:[Ljava/lang/String;

.field public paidVideo:I

.field public playlist_id:Ljava/lang/String;

.field final synthetic this$0:Lcom/youku/vo/ScrollerInfoVo;

.field public tidVideo:[Ljava/lang/String;

.field public typeVideo:I

.field public videoImage:[Ljava/lang/String;

.field public videoRemark:[Ljava/lang/String;

.field public videoTitle:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/youku/vo/ScrollerInfoVo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/vo/ScrollerInfoVo;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/youku/vo/ScrollerInfoVo$ScrollerInfo;->this$0:Lcom/youku/vo/ScrollerInfoVo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/youku/vo/ScrollerInfoVo$ScrollerInfo;->app_url:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/vo/ScrollerInfoVo$ScrollerInfo;->app_url:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/youku/vo/ScrollerInfoVo$ScrollerInfo;->videoImage:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/vo/ScrollerInfoVo$ScrollerInfo;->videoImage:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getTypeVideo()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/youku/vo/ScrollerInfoVo$ScrollerInfo;->typeVideo:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/youku/vo/ScrollerInfoVo$ScrollerInfo;->typeVideo:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVideoOpenUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/youku/vo/ScrollerInfoVo$ScrollerInfo;->openUrl:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/vo/ScrollerInfoVo$ScrollerInfo;->openUrl:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getVideoPlayListId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/youku/vo/ScrollerInfoVo$ScrollerInfo;->playlist_id:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/vo/ScrollerInfoVo$ScrollerInfo;->playlist_id:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getVideoRemark()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/youku/vo/ScrollerInfoVo$ScrollerInfo;->videoRemark:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/vo/ScrollerInfoVo$ScrollerInfo;->videoRemark:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getVideoTid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/youku/vo/ScrollerInfoVo$ScrollerInfo;->tidVideo:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/vo/ScrollerInfoVo$ScrollerInfo;->tidVideo:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getVideoTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/youku/vo/ScrollerInfoVo$ScrollerInfo;->videoTitle:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/vo/ScrollerInfoVo$ScrollerInfo;->videoTitle:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public isPay()Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public setApp_url([Ljava/lang/String;)V
    .locals 0
    .param p1, "app_url"    # [Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/youku/vo/ScrollerInfoVo$ScrollerInfo;->app_url:[Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setGameCenterVideoInfo(Lcom/youku/vo/GameCenterVideoInfo;)V
    .locals 0
    .param p1, "gameCenterVideoInfo"    # Lcom/youku/vo/GameCenterVideoInfo;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/youku/vo/ScrollerInfoVo$ScrollerInfo;->gameCenterVideoInfo:Lcom/youku/vo/GameCenterVideoInfo;

    .line 103
    return-void
.end method

.method public setOpenUrl([Ljava/lang/String;)V
    .locals 0
    .param p1, "openUrl"    # [Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/youku/vo/ScrollerInfoVo$ScrollerInfo;->openUrl:[Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setPaidVideo(I)V
    .locals 0
    .param p1, "paidVideo"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/youku/vo/ScrollerInfoVo$ScrollerInfo;->paidVideo:I

    .line 83
    return-void
.end method

.method public setPlaylist_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "playlist_id"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/youku/vo/ScrollerInfoVo$ScrollerInfo;->playlist_id:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setTidVideo([Ljava/lang/String;)V
    .locals 0
    .param p1, "tidVideo"    # [Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/youku/vo/ScrollerInfoVo$ScrollerInfo;->tidVideo:[Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setTypeVideo(I)V
    .locals 0
    .param p1, "typeVideo"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/youku/vo/ScrollerInfoVo$ScrollerInfo;->typeVideo:I

    .line 79
    return-void
.end method

.method public setVideoImage([Ljava/lang/String;)V
    .locals 0
    .param p1, "videoImage"    # [Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/youku/vo/ScrollerInfoVo$ScrollerInfo;->videoImage:[Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setVideoRemark([Ljava/lang/String;)V
    .locals 0
    .param p1, "videoRemark"    # [Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/youku/vo/ScrollerInfoVo$ScrollerInfo;->videoRemark:[Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setVideoTitle([Ljava/lang/String;)V
    .locals 0
    .param p1, "videoTitle"    # [Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/youku/vo/ScrollerInfoVo$ScrollerInfo;->videoTitle:[Ljava/lang/String;

    .line 67
    return-void
.end method
