.class public Lcom/youku/phone/detail/data/PlayRelatedVideo;
.super Lcom/youku/phone/detail/data/Video;
.source "PlayRelatedVideo.java"


# static fields
.field private static final serialVersionUID:J = 0x13f335d2770ae70cL


# instance fields
.field private algInfo:Ljava/lang/String;

.field public clickLogUrl:Ljava/lang/String;

.field public cp:Ljava/lang/String;

.field public cpsId:Ljava/lang/String;

.field private dct:Ljava/lang/String;

.field private dma:Ljava/lang/String;

.field public duration_fmt:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public image:Ljava/lang/String;

.field public img:Ljava/lang/String;

.field public is_showUT:Z

.field public is_uc:I

.field public markBgImg:Ljava/lang/String;

.field public markStyle:Ljava/lang/String;

.field public markText:Ljava/lang/String;

.field public markType:Ljava/lang/String;

.field public onlineAmount:Ljava/lang/String;

.field public operation_corner_mark:Ljava/lang/String;

.field private pos:I

.field public reason:Ljava/lang/String;

.field public recClickLogUrl:Ljava/lang/String;

.field public recext:Ljava/lang/String;

.field public roomId:Ljava/lang/String;

.field public scm:Ljava/lang/String;

.field public show_vthumburl_hd:Ljava/lang/String;

.field public source:Ljava/lang/String;

.field public spm:Ljava/lang/String;

.field private stripe_bottom:Ljava/lang/String;

.field public subTitle:Ljava/lang/String;

.field public summary:Ljava/lang/String;

.field public total_vv:J

.field public total_vv_fmt:Ljava/lang/String;

.field public traceInfo:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public uc_url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8
    invoke-direct {p0}, Lcom/youku/phone/detail/data/Video;-><init>()V

    .line 12
    iput v1, p0, Lcom/youku/phone/detail/data/PlayRelatedVideo;->pos:I

    .line 14
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/phone/detail/data/PlayRelatedVideo;->stripe_bottom:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/phone/detail/data/PlayRelatedVideo;->dma:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/phone/detail/data/PlayRelatedVideo;->dct:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/phone/detail/data/PlayRelatedVideo;->algInfo:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/phone/detail/data/PlayRelatedVideo;->img:Ljava/lang/String;

    .line 103
    iput-boolean v1, p0, Lcom/youku/phone/detail/data/PlayRelatedVideo;->is_showUT:Z

    .line 127
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/phone/detail/data/PlayRelatedVideo;->spm:Ljava/lang/String;

    .line 129
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/phone/detail/data/PlayRelatedVideo;->traceInfo:Ljava/lang/String;

    .line 131
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/phone/detail/data/PlayRelatedVideo;->markType:Ljava/lang/String;

    .line 132
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/phone/detail/data/PlayRelatedVideo;->markStyle:Ljava/lang/String;

    .line 133
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/phone/detail/data/PlayRelatedVideo;->markText:Ljava/lang/String;

    .line 134
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/phone/detail/data/PlayRelatedVideo;->markBgImg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAlgInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/youku/phone/detail/data/PlayRelatedVideo;->algInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getDct()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/youku/phone/detail/data/PlayRelatedVideo;->dct:Ljava/lang/String;

    return-object v0
.end method

.method public getDma()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/youku/phone/detail/data/PlayRelatedVideo;->dma:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/youku/phone/detail/data/PlayRelatedVideo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/youku/phone/detail/data/PlayRelatedVideo;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getPos()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/youku/phone/detail/data/PlayRelatedVideo;->pos:I

    return v0
.end method

.method public getSpm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/youku/phone/detail/data/PlayRelatedVideo;->spm:Ljava/lang/String;

    return-object v0
.end method

.method public getStripe_bottom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/youku/phone/detail/data/PlayRelatedVideo;->stripe_bottom:Ljava/lang/String;

    return-object v0
.end method

.method public getTraceInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/youku/phone/detail/data/PlayRelatedVideo;->traceInfo:Ljava/lang/String;

    return-object v0
.end method

.method public setAlgInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "algInfo"    # Ljava/lang/String;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/youku/phone/detail/data/PlayRelatedVideo;->algInfo:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public setDct(Ljava/lang/String;)V
    .locals 0
    .param p1, "dct"    # Ljava/lang/String;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/youku/phone/detail/data/PlayRelatedVideo;->dct:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setDma(Ljava/lang/String;)V
    .locals 0
    .param p1, "dma"    # Ljava/lang/String;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/youku/phone/detail/data/PlayRelatedVideo;->dma:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/youku/phone/detail/data/PlayRelatedVideo;->id:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public setImg(Ljava/lang/String;)V
    .locals 0
    .param p1, "img"    # Ljava/lang/String;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/youku/phone/detail/data/PlayRelatedVideo;->img:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setPos(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 173
    iput p1, p0, Lcom/youku/phone/detail/data/PlayRelatedVideo;->pos:I

    .line 174
    return-void
.end method

.method public setSpm(Ljava/lang/String;)V
    .locals 0
    .param p1, "spm"    # Ljava/lang/String;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/youku/phone/detail/data/PlayRelatedVideo;->spm:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public setStripe_bottom(Ljava/lang/String;)V
    .locals 0
    .param p1, "stripe_bottom"    # Ljava/lang/String;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/youku/phone/detail/data/PlayRelatedVideo;->stripe_bottom:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setTraceInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "traceInfo"    # Ljava/lang/String;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/youku/phone/detail/data/PlayRelatedVideo;->traceInfo:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PlayRelatedVideo [pos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/youku/phone/detail/data/PlayRelatedVideo;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", stripe_bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/phone/detail/data/PlayRelatedVideo;->stripe_bottom:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", showid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/phone/detail/data/PlayRelatedVideo;->showId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", img="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/phone/detail/data/PlayRelatedVideo;->img:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", dma="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/phone/detail/data/PlayRelatedVideo;->dma:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", dct="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/phone/detail/data/PlayRelatedVideo;->dct:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", algInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/phone/detail/data/PlayRelatedVideo;->algInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
