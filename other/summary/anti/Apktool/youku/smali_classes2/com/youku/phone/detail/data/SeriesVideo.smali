.class public Lcom/youku/phone/detail/data/SeriesVideo;
.super Lcom/youku/phone/detail/data/BaseSeriesVideo;
.source "SeriesVideo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Fkk;,
        Lc8/Ekk;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6c7badbd6d247b43L


# instance fields
.field public actionType:Ljava/lang/String;

.field public actionValue:Ljava/lang/String;

.field public arg1:Ljava/lang/String;

.field private cache_state:I

.field public desc:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public fullScreenUrl:Ljava/lang/String;

.field public halfScreenUrl:Ljava/lang/String;

.field public img:Ljava/lang/String;

.field public isFrature:Z

.field public isKidEdu:Z

.field public isPaid:Z

.field public isVipTrailer:Z

.field public is_new:Z

.field public is_trailer:Z

.field public limit:I

.field public newLimit:Ljava/lang/String;

.field public passwordDownloadFlag:Ljava/lang/String;

.field public pay_state:I

.field public privateDownloadFlag:Ljava/lang/String;

.field public publicType:I

.field public scm:Ljava/lang/String;

.field public show_videoseq:I

.field public show_videostage:Ljava/lang/String;

.field public size:Ljava/lang/String;

.field public spm:Ljava/lang/String;

.field public stage_seq:Ljava/lang/String;

.field public subScribeDownloadFlag:Ljava/lang/String;

.field public subtitle:Ljava/lang/String;

.field public subtitleType:Ljava/lang/String;

.field public thumbnail:Ljava/lang/String;

.field public total_pv:J

.field public total_pv_fmt:Ljava/lang/String;

.field public trackInfo:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public ugc_title:Ljava/lang/String;

.field public vid:Ljava/lang/String;

.field public videoSize:J

.field public videoSize1080P:J

.field public videoSizeHD:J

.field public videoSizeHD2:J

.field public vipDownloadFlag:Ljava/lang/String;

.field public vipMark:Ljava/lang/String;

.field public vip_down_flag:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8
    invoke-direct {p0}, Lcom/youku/phone/detail/data/BaseSeriesVideo;-><init>()V

    .line 12
    iput v1, p0, Lcom/youku/phone/detail/data/SeriesVideo;->show_videoseq:I

    .line 14
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/phone/detail/data/SeriesVideo;->show_videostage:Ljava/lang/String;

    .line 16
    const/4 v0, 0x1

    iput v0, p0, Lcom/youku/phone/detail/data/SeriesVideo;->limit:I

    .line 19
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/phone/detail/data/SeriesVideo;->desc:Ljava/lang/String;

    .line 21
    iput-boolean v1, p0, Lcom/youku/phone/detail/data/SeriesVideo;->is_new:Z

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/phone/detail/data/SeriesVideo;->img:Ljava/lang/String;

    .line 33
    iput-boolean v1, p0, Lcom/youku/phone/detail/data/SeriesVideo;->is_trailer:Z

    .line 52
    iput v1, p0, Lcom/youku/phone/detail/data/SeriesVideo;->publicType:I

    .line 57
    iput v1, p0, Lcom/youku/phone/detail/data/SeriesVideo;->pay_state:I

    .line 59
    iput v1, p0, Lcom/youku/phone/detail/data/SeriesVideo;->cache_state:I

    .line 216
    return-void
.end method


# virtual methods
.method public getCache_state()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/youku/phone/detail/data/SeriesVideo;->cache_state:I

    return v0
.end method

.method public getImg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/youku/phone/detail/data/SeriesVideo;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getShow_videostage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/youku/phone/detail/data/SeriesVideo;->show_videostage:Ljava/lang/String;

    return-object v0
.end method

.method public isIs_trailer()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/youku/phone/detail/data/SeriesVideo;->is_trailer:Z

    return v0
.end method

.method public isLimitDownload()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 134
    iget v1, p0, Lcom/youku/phone/detail/data/SeriesVideo;->limit:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNewLimitDownload()Z
    .locals 2

    .prologue
    .line 163
    const-string/jumbo v0, "1"

    iget-object v1, p0, Lcom/youku/phone/detail/data/SeriesVideo;->newLimit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isNewSubscribedPlay()Z
    .locals 2

    .prologue
    .line 167
    const-string/jumbo v0, "3"

    iget-object v1, p0, Lcom/youku/phone/detail/data/SeriesVideo;->subScribeDownloadFlag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPay()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 146
    iget v1, p0, Lcom/youku/phone/detail/data/SeriesVideo;->pay_state:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowVipMark()Z
    .locals 2

    .prologue
    .line 170
    const-string/jumbo v0, "1"

    iget-object v1, p0, Lcom/youku/phone/detail/data/SeriesVideo;->vipMark:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSubscribedPlay()Z
    .locals 2

    .prologue
    .line 150
    iget v0, p0, Lcom/youku/phone/detail/data/SeriesVideo;->publicType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCache_state(I)V
    .locals 0
    .param p1, "cache_state"    # I

    .prologue
    .line 127
    iput p1, p0, Lcom/youku/phone/detail/data/SeriesVideo;->cache_state:I

    .line 128
    return-void
.end method

.method public setImg(Ljava/lang/String;)V
    .locals 0
    .param p1, "img"    # Ljava/lang/String;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/youku/phone/detail/data/SeriesVideo;->img:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x27

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SeriesVideo{show_videoseq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/youku/phone/detail/data/SeriesVideo;->show_videoseq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", show_videostage=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/phone/detail/data/SeriesVideo;->show_videostage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/youku/phone/detail/data/SeriesVideo;->limit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", vip_down_flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/youku/phone/detail/data/SeriesVideo;->vip_down_flag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", desc=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/phone/detail/data/SeriesVideo;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", is_new="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/youku/phone/detail/data/SeriesVideo;->is_new:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", thumbnail=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/phone/detail/data/SeriesVideo;->thumbnail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", img=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/phone/detail/data/SeriesVideo;->img:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", is_trailer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/youku/phone/detail/data/SeriesVideo;->is_trailer:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", total_pv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/youku/phone/detail/data/SeriesVideo;->total_pv:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", total_pv_fmt=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/phone/detail/data/SeriesVideo;->total_pv_fmt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", ugc_title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/phone/detail/data/SeriesVideo;->ugc_title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", publicType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/youku/phone/detail/data/SeriesVideo;->publicType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", pay_state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/youku/phone/detail/data/SeriesVideo;->pay_state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", cache_state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/youku/phone/detail/data/SeriesVideo;->cache_state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", stage_seq=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/phone/detail/data/SeriesVideo;->stage_seq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", actionValue=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/phone/detail/data/SeriesVideo;->actionValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", actionType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/phone/detail/data/SeriesVideo;->actionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", type=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/phone/detail/data/SeriesVideo;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", subtitle=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/phone/detail/data/SeriesVideo;->subtitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", subtitleType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/phone/detail/data/SeriesVideo;->subtitleType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
