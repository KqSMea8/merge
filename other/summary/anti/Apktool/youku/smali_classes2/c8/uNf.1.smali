.class public Lc8/uNf;
.super Ljava/lang/Object;
.source "ImageStrategyDecider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decideUrl(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .param p0, "originUrl"    # Ljava/lang/String;
    .param p1, "width"    # Ljava/lang/Integer;
    .param p2, "height"    # Ljava/lang/Integer;
    .param p3, "info"    # Ljava/lang/Object;

    .prologue
    .line 21
    instance-of v2, p3, Lc8/nHf;

    if-eqz v2, :cond_2

    move-object v0, p3

    .line 22
    check-cast v0, Lc8/nHf;

    .line 27
    .local v0, "sConfig":Lc8/nHf;
    :goto_0
    invoke-virtual {v0}, Lc8/nHf;->getSizeLimitType()Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;

    move-result-object v2

    sget-object v3, Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;->WIDTH_LIMIT:Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;

    if-ne v2, v3, :cond_3

    .line 28
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 34
    .local v1, "uiSize":I
    :goto_1
    if-lez v1, :cond_0

    .line 35
    int-to-float v2, v1

    invoke-static {}, Lc8/HNf;->getInstance()Lc8/HNf;

    move-result-object v3

    invoke-virtual {v3}, Lc8/HNf;->getDip()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v1, v2

    .line 37
    :cond_0
    const/16 v2, 0x44

    invoke-static {v2}, Lc8/oHf;->isLoggable(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 38
    const-string/jumbo v2, "STRATEGY.ALL"

    const-string/jumbo v3, "ImageStrategyDecider decideUrl, url=%s, width=%d, height=%d, info=%s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    const/4 v5, 0x3

    invoke-virtual {v0}, Lc8/nHf;->report()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lc8/oHf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    :cond_1
    invoke-static {}, Lc8/HNf;->getInstance()Lc8/HNf;

    move-result-object v2

    invoke-virtual {v2, p0, v1, v0}, Lc8/HNf;->decideUrl(Ljava/lang/String;ILc8/nHf;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 24
    .end local v0    # "sConfig":Lc8/nHf;
    .end local v1    # "uiSize":I
    :cond_2
    const-string/jumbo v2, "default"

    invoke-static {v2}, Lc8/nHf;->newBuilderWithName(Ljava/lang/String;)Lc8/mHf;

    move-result-object v2

    invoke-virtual {v2}, Lc8/mHf;->build()Lc8/nHf;

    move-result-object v0

    .restart local v0    # "sConfig":Lc8/nHf;
    goto :goto_0

    .line 29
    :cond_3
    invoke-virtual {v0}, Lc8/nHf;->getSizeLimitType()Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;

    move-result-object v2

    sget-object v3, Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;->HEIGHT_LIMIT:Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;

    if-ne v2, v3, :cond_4

    .line 30
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .restart local v1    # "uiSize":I
    goto :goto_1

    .line 32
    .end local v1    # "uiSize":I
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .restart local v1    # "uiSize":I
    goto :goto_1
.end method

.method private static doStrictConvergeAndWebP(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "originUrl"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 55
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 78
    .end local p0    # "originUrl":Ljava/lang/String;
    .local v1, "cdnInfo":Lc8/GNf;
    :cond_0
    :goto_0
    return-object p0

    .line 59
    .end local v1    # "cdnInfo":Lc8/GNf;
    .restart local p0    # "originUrl":Ljava/lang/String;
    :cond_1
    new-instance v1, Lc8/GNf;

    invoke-direct {v1, p0}, Lc8/GNf;-><init>(Ljava/lang/String;)V

    .line 60
    .restart local v1    # "cdnInfo":Lc8/GNf;
    invoke-static {}, Lc8/yNf;->getInstance()Lc8/yNf;

    move-result-object v3

    iget-object v4, v1, Lc8/GNf;->host:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lc8/yNf;->isOssDomain(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 61
    invoke-static {}, Lc8/yNf;->getInstance()Lc8/yNf;

    move-result-object v3

    invoke-virtual {v3, p0}, Lc8/yNf;->isFuzzyExclude(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 62
    invoke-static {p0}, Lc8/wNf;->getBaseUrlInfo(Ljava/lang/String;)Lc8/vNf;

    move-result-object v2

    .line 63
    .local v2, "urlInfo":Lc8/vNf;
    iget-object v0, v2, Lc8/vNf;->base:Ljava/lang/String;

    .line 64
    .local v0, "baseUrl":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x40

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_0

    const-string/jumbo v3, ".jpg"

    iget-object v4, v2, Lc8/vNf;->ext:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, ".png"

    iget-object v4, v2, Lc8/vNf;->ext:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 65
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".webp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lc8/vNf;->suffix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 68
    .end local v0    # "baseUrl":Ljava/lang/String;
    .end local v2    # "urlInfo":Lc8/vNf;
    :cond_3
    invoke-static {}, Lc8/HNf;->getInstance()Lc8/HNf;

    move-result-object v3

    invoke-virtual {v3, v1}, Lc8/HNf;->isStrictCdnImage(Lc8/GNf;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 69
    invoke-static {}, Lc8/HNf;->getInstance()Lc8/HNf;

    move-result-object v3

    invoke-virtual {v3}, Lc8/HNf;->isDomainSwitch()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 70
    invoke-static {}, Lc8/HNf;->getInstance()Lc8/HNf;

    move-result-object v3

    invoke-virtual {v3, v1, v5}, Lc8/HNf;->strictConvergenceUrl(Lc8/GNf;Z)Ljava/lang/String;

    move-result-object p0

    .line 72
    :cond_4
    invoke-static {p0}, Lc8/wNf;->getBaseUrlInfo(Ljava/lang/String;)Lc8/vNf;

    move-result-object v2

    .line 73
    .restart local v2    # "urlInfo":Lc8/vNf;
    iget-object v0, v2, Lc8/vNf;->base:Ljava/lang/String;

    .line 74
    .restart local v0    # "baseUrl":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "_.webp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_.webp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lc8/vNf;->suffix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method

.method public static justConvergeAndWebP(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "originUrl"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-static {p0}, Lc8/uNf;->doStrictConvergeAndWebP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "ret":Ljava/lang/String;
    const-string/jumbo v1, "STRATEGY.ALL"

    const-string/jumbo v2, "ImageStrategyDecider justConvergeAndWebP, raw=%s, ret=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lc8/oHf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    return-object v0
.end method
