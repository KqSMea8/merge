.class public Lc8/Oyo;
.super Ljava/lang/Object;
.source "IShareDetailDataSourceImple.java"

# interfaces
.implements Lc8/ein;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCollectionTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lc8/ukk;->mSeriesVideoDataInfo:Lcom/youku/phone/detail/data/SeriesVideoDataInfo;

    if-eqz v0, :cond_0

    sget-object v0, Lc8/ukk;->mSeriesVideoDataInfo:Lcom/youku/phone/detail/data/SeriesVideoDataInfo;

    iget-object v0, v0, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->collectionName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 118
    sget-object v0, Lc8/ukk;->mSeriesVideoDataInfo:Lcom/youku/phone/detail/data/SeriesVideoDataInfo;

    iget-object v0, v0, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->collectionName:Ljava/lang/String;

    .line 120
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getDetailVideoImg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lc8/ukk;->mDetailVideoInfo:Lcom/youku/phone/detail/data/DetailVideoInfo;

    if-nez v0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 29
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lc8/ukk;->mDetailVideoInfo:Lcom/youku/phone/detail/data/DetailVideoInfo;

    invoke-virtual {v0}, Lcom/youku/phone/detail/data/DetailVideoInfo;->getImageString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDetailVideoInfoBean()Lcom/youku/phone/detail/data/DetailVideoInfo;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lc8/ukk;->mDetailVideoInfo:Lcom/youku/phone/detail/data/DetailVideoInfo;

    return-object v0
.end method

.method public getHuatiNameStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getNeedRelpaceShareIntro()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    sget-object v0, Lc8/ukk;->mSeriesVideoDataInfo:Lcom/youku/phone/detail/data/SeriesVideoDataInfo;

    if-eqz v0, :cond_0

    sget-object v0, Lc8/ukk;->mSeriesVideoDataInfo:Lcom/youku/phone/detail/data/SeriesVideoDataInfo;

    invoke-virtual {v0}, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->getSeriesVideos()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lc8/ukk;->mSeriesVideoDataInfo:Lcom/youku/phone/detail/data/SeriesVideoDataInfo;

    .line 66
    invoke-virtual {v0}, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->getSeriesVideos()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lc8/ukk;->mSeriesVideoDataInfo:Lcom/youku/phone/detail/data/SeriesVideoDataInfo;

    invoke-virtual {v0}, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->getSeriesVideos()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v1, Lc8/ukk;->seriesVideoPalyingPosition:I

    if-le v0, v1, :cond_0

    .line 67
    sget-object v0, Lc8/ukk;->mSeriesVideoDataInfo:Lcom/youku/phone/detail/data/SeriesVideoDataInfo;

    invoke-virtual {v0}, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->getSeriesVideos()Ljava/util/ArrayList;

    move-result-object v0

    sget v1, Lc8/ukk;->seriesVideoPalyingPosition:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/phone/detail/data/SeriesVideo;

    iget-object v0, v0, Lcom/youku/phone/detail/data/SeriesVideo;->total_pv_fmt:Ljava/lang/String;

    .line 69
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getShareSeriesTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    sget-object v0, Lc8/ukk;->mSeriesVideoDataInfo:Lcom/youku/phone/detail/data/SeriesVideoDataInfo;

    invoke-virtual {v0}, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->getSeriesVideos()Ljava/util/ArrayList;

    move-result-object v0

    sget v1, Lc8/ukk;->seriesVideoPalyingPosition:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/phone/detail/data/SeriesVideo;

    invoke-virtual {v0}, Lcom/youku/phone/detail/data/SeriesVideo;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoInfoPlayListId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lc8/ukk;->mDetailVideoInfo:Lcom/youku/phone/detail/data/DetailVideoInfo;

    if-eqz v0, :cond_0

    .line 42
    sget-object v0, Lc8/ukk;->mDetailVideoInfo:Lcom/youku/phone/detail/data/DetailVideoInfo;

    iget-object v0, v0, Lcom/youku/phone/detail/data/DetailVideoInfo;->playlistId:Ljava/lang/String;

    .line 44
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getVideoInfoVideoId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lc8/ukk;->mDetailVideoInfo:Lcom/youku/phone/detail/data/DetailVideoInfo;

    if-nez v0, :cond_0

    .line 35
    const-string/jumbo v0, ""

    .line 36
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lc8/ukk;->mDetailVideoInfo:Lcom/youku/phone/detail/data/DetailVideoInfo;

    iget-object v0, v0, Lcom/youku/phone/detail/data/DetailVideoInfo;->videoId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getWeiboCheck()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    sget-object v1, Lc8/ukk;->detailVideoCheck:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 152
    const/4 v0, 0x0

    .line 155
    :goto_0
    return-object v0

    .line 154
    :cond_0
    sget-object v0, Lc8/ukk;->detailVideoCheck:Ljava/util/Map;

    .line 155
    .local v0, "videoCheck":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    goto :goto_0
.end method

.method public getWeiboVideoId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 142
    sget-object v1, Lc8/ukk;->mDetailVideoInfo:Lcom/youku/phone/detail/data/DetailVideoInfo;

    if-eqz v1, :cond_0

    sget-object v1, Lc8/ukk;->detailVideoCheck:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 143
    :cond_0
    const/4 v0, 0x0

    .line 146
    :goto_0
    return-object v0

    .line 145
    :cond_1
    sget-object v1, Lc8/ukk;->mDetailVideoInfo:Lcom/youku/phone/detail/data/DetailVideoInfo;

    iget-object v0, v1, Lcom/youku/phone/detail/data/DetailVideoInfo;->videoId:Ljava/lang/String;

    .line 146
    .local v0, "detailVid":Ljava/lang/String;
    goto :goto_0
.end method

.method public getWeiboVideoTopic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return-object v0
.end method

.method public isCollectionType()Z
    .locals 4

    .prologue
    .line 105
    sget-object v1, Lc8/ukk;->detailCardOrderList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 106
    sget-object v1, Lc8/ukk;->detailCardOrderList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/tkk;

    .line 107
    .local v0, "dco":Lc8/tkk;
    iget v2, v0, Lc8/tkk;->cardType:I

    const/16 v3, 0xf

    if-ne v2, v3, :cond_0

    .line 108
    const/4 v1, 0x1

    .line 112
    .end local v0    # "dco":Lc8/tkk;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEmptyShareType()Z
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lc8/ukk;->mDetailVideoInfo:Lcom/youku/phone/detail/data/DetailVideoInfo;

    iget-object v0, v0, Lcom/youku/phone/detail/data/DetailVideoInfo;->tag_type:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowDetailSourceShareIntro()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 54
    sget-object v0, Lc8/ukk;->mSeriesVideoDataInfo:Lcom/youku/phone/detail/data/SeriesVideoDataInfo;

    if-nez v0, :cond_0

    move v0, v1

    .line 60
    :goto_0
    return v0

    .line 57
    :cond_0
    sget-object v0, Lc8/ukk;->mSeriesVideoDataInfo:Lcom/youku/phone/detail/data/SeriesVideoDataInfo;

    invoke-virtual {v0}, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->getSeriesVideos()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    sget v0, Lc8/ukk;->seriesVideoPalyingPosition:I

    sget-object v2, Lc8/ukk;->mSeriesVideoDataInfo:Lcom/youku/phone/detail/data/SeriesVideoDataInfo;

    invoke-virtual {v2}, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->getSeriesVideos()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    sget-object v0, Lc8/ukk;->mSeriesVideoDataInfo:Lcom/youku/phone/detail/data/SeriesVideoDataInfo;

    invoke-virtual {v0}, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->getSeriesVideos()Ljava/util/ArrayList;

    move-result-object v0

    sget v2, Lc8/ukk;->seriesVideoPalyingPosition:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/phone/detail/data/SeriesVideo;

    iget-object v0, v0, Lcom/youku/phone/detail/data/SeriesVideo;->total_pv_fmt:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 58
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 60
    goto :goto_0
.end method

.method public isUgcShareType()Z
    .locals 2

    .prologue
    .line 79
    sget-object v0, Lc8/ukk;->mDetailVideoInfo:Lcom/youku/phone/detail/data/DetailVideoInfo;

    if-nez v0, :cond_0

    const-string/jumbo v0, "ugc"

    sget-object v1, Lc8/ukk;->mDetailVideoInfo:Lcom/youku/phone/detail/data/DetailVideoInfo;

    iget-object v1, v1, Lcom/youku/phone/detail/data/DetailVideoInfo;->tag_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVartetyMany()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 160
    sget-object v1, Lc8/ukk;->mDetailVideoInfo:Lcom/youku/phone/detail/data/DetailVideoInfo;

    if-eqz v1, :cond_0

    .line 161
    sget-object v1, Lc8/ukk;->mDetailVideoInfo:Lcom/youku/phone/detail/data/DetailVideoInfo;

    iget v1, v1, Lcom/youku/phone/detail/data/DetailVideoInfo;->cats_id:I

    const/16 v2, 0x55

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 163
    :cond_0
    return v0
.end method
