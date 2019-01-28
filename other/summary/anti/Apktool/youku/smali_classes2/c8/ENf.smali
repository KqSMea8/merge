.class public Lc8/ENf;
.super Ljava/lang/Object;
.source "TaobaoImageUrlStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/HNf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceImageSwitch"
.end annotation


# instance fields
.field private areaName:Ljava/lang/String;

.field private highNetQ:Ljava/lang/String;

.field private highNetScale:D

.field private highNetSharpen:Ljava/lang/String;

.field private lowNetQ:Ljava/lang/String;

.field private lowNetScale:D

.field private lowNetSharpen:Ljava/lang/String;

.field private suffix:Ljava/lang/String;

.field private useCdnSizes:Z

.field private useWebp:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 1197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/ENf;->useWebp:Z

    .line 1177
    sget-object v0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->q75:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    invoke-virtual {v0}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->getImageQuality()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/ENf;->lowNetQ:Ljava/lang/String;

    .line 1178
    sget-object v0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->q90:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    invoke-virtual {v0}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->getImageQuality()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/ENf;->highNetQ:Ljava/lang/String;

    .line 1181
    sget-object v0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageSharpen;->non:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageSharpen;

    invoke-virtual {v0}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageSharpen;->getImageSharpen()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/ENf;->lowNetSharpen:Ljava/lang/String;

    .line 1182
    sget-object v0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageSharpen;->non:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageSharpen;

    invoke-virtual {v0}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageSharpen;->getImageSharpen()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/ENf;->highNetSharpen:Ljava/lang/String;

    .line 1185
    iput-wide v2, p0, Lc8/ENf;->lowNetScale:D

    .line 1186
    iput-wide v2, p0, Lc8/ENf;->highNetScale:D

    .line 1188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/ENf;->useCdnSizes:Z

    .line 1198
    return-void
.end method


# virtual methods
.method public getAreaName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1201
    iget-object v0, p0, Lc8/ENf;->areaName:Ljava/lang/String;

    return-object v0
.end method

.method public getHighNetQ()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1242
    iget-object v0, p0, Lc8/ENf;->highNetQ:Ljava/lang/String;

    return-object v0
.end method

.method public getHighNetScale()D
    .locals 2

    .prologue
    .line 1274
    iget-wide v0, p0, Lc8/ENf;->highNetScale:D

    return-wide v0
.end method

.method public getHighNetSharpen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1258
    iget-object v0, p0, Lc8/ENf;->highNetSharpen:Ljava/lang/String;

    return-object v0
.end method

.method public getLowNetQ()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1234
    iget-object v0, p0, Lc8/ENf;->lowNetQ:Ljava/lang/String;

    return-object v0
.end method

.method public getLowNetScale()D
    .locals 2

    .prologue
    .line 1266
    iget-wide v0, p0, Lc8/ENf;->lowNetScale:D

    return-wide v0
.end method

.method public getLowNetSharpen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1250
    iget-object v0, p0, Lc8/ENf;->lowNetSharpen:Ljava/lang/String;

    return-object v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1226
    iget-object v0, p0, Lc8/ENf;->suffix:Ljava/lang/String;

    return-object v0
.end method

.method public isUseCdnSizes()Z
    .locals 1

    .prologue
    .line 1218
    iget-boolean v0, p0, Lc8/ENf;->useCdnSizes:Z

    return v0
.end method

.method public isUseWebp()Z
    .locals 1

    .prologue
    .line 1209
    iget-boolean v0, p0, Lc8/ENf;->useWebp:Z

    return v0
.end method

.method public setAreaName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1205
    iput-object p1, p0, Lc8/ENf;->areaName:Ljava/lang/String;

    .line 1206
    return-void
.end method

.method public setHighNetQ(Ljava/lang/String;)V
    .locals 1
    .param p1, "netQ"    # Ljava/lang/String;

    .prologue
    .line 1246
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .end local p1    # "netQ":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lc8/ENf;->highNetQ:Ljava/lang/String;

    .line 1247
    return-void

    .line 1246
    .restart local p1    # "netQ":Ljava/lang/String;
    :cond_0
    sget-object v0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->q90:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    invoke-virtual {v0}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->getImageQuality()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public setHighNetScale(D)V
    .locals 3
    .param p1, "netScale"    # D

    .prologue
    .line 1278
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    .end local p1    # "netScale":D
    :goto_0
    iput-wide p1, p0, Lc8/ENf;->highNetScale:D

    .line 1279
    return-void

    .line 1278
    .restart local p1    # "netScale":D
    :cond_0
    iget-wide p1, p0, Lc8/ENf;->highNetScale:D

    goto :goto_0
.end method

.method public setHighNetSharpen(Ljava/lang/String;)V
    .locals 1
    .param p1, "netSharpen"    # Ljava/lang/String;

    .prologue
    .line 1262
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lc8/ENf;->highNetSharpen:Ljava/lang/String;

    .end local p1    # "netSharpen":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lc8/ENf;->highNetSharpen:Ljava/lang/String;

    .line 1263
    return-void
.end method

.method public setLowNetQ(Ljava/lang/String;)V
    .locals 1
    .param p1, "netQ"    # Ljava/lang/String;

    .prologue
    .line 1238
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .end local p1    # "netQ":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lc8/ENf;->lowNetQ:Ljava/lang/String;

    .line 1239
    return-void

    .line 1238
    .restart local p1    # "netQ":Ljava/lang/String;
    :cond_0
    sget-object v0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->q75:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    invoke-virtual {v0}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->getImageQuality()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public setLowNetScale(D)V
    .locals 3
    .param p1, "netScale"    # D

    .prologue
    .line 1270
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    .end local p1    # "netScale":D
    :goto_0
    iput-wide p1, p0, Lc8/ENf;->lowNetScale:D

    .line 1271
    return-void

    .line 1270
    .restart local p1    # "netScale":D
    :cond_0
    iget-wide p1, p0, Lc8/ENf;->lowNetScale:D

    goto :goto_0
.end method

.method public setLowNetSharpen(Ljava/lang/String;)V
    .locals 1
    .param p1, "netSharpen"    # Ljava/lang/String;

    .prologue
    .line 1254
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lc8/ENf;->lowNetSharpen:Ljava/lang/String;

    .end local p1    # "netSharpen":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lc8/ENf;->lowNetSharpen:Ljava/lang/String;

    .line 1255
    return-void
.end method

.method public setSuffix(Ljava/lang/String;)V
    .locals 0
    .param p1, "suf"    # Ljava/lang/String;

    .prologue
    .line 1230
    iput-object p1, p0, Lc8/ENf;->suffix:Ljava/lang/String;

    .line 1231
    return-void
.end method

.method public setUseWebp(Z)V
    .locals 0
    .param p1, "used"    # Z

    .prologue
    .line 1213
    iput-boolean p1, p0, Lc8/ENf;->useWebp:Z

    .line 1214
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "areaName ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/ENf;->areaName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " useWebp ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lc8/ENf;->useWebp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " lowNetQ ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/ENf;->lowNetQ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " highNetQ ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/ENf;->highNetQ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " lowNetSharpen ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/ENf;->lowNetSharpen:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " highNetSharpen ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/ENf;->highNetSharpen:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " lowNetScale ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lc8/ENf;->lowNetScale:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " highNetScale ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lc8/ENf;->highNetScale:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " useCdnSizes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lc8/ENf;->useCdnSizes:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public useCdnSizes(Z)V
    .locals 0
    .param p1, "used"    # Z

    .prologue
    .line 1222
    iput-boolean p1, p0, Lc8/ENf;->useCdnSizes:Z

    .line 1223
    return-void
.end method
