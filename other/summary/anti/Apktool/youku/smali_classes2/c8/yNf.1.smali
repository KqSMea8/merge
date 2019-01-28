.class public Lc8/yNf;
.super Ljava/lang/Object;
.source "OssImageUrlStrategy.java"


# static fields
.field private static final DEFAULT_FUZZY_EXCLUDES:[Ljava/lang/String;

.field private static final DEFAULT_OSS_DOMAINS:[Ljava/lang/String;

.field public static final FIRST_LEVEL_CONCAT:C = '@'

.field private static final GIF_EXTEND:Ljava/lang/String; = ".gif"

.field private static final JPEG_EXTEND:Ljava/lang/String; = ".jpg"

.field private static final SECOND_LEVEL_CONCAT:Ljava/lang/String; = "_"

.field private static final SHARPEN_IMAGE:Ljava/lang/String; = "1sh"

.field private static final SMALL_THAN_ORIGIN:Ljava/lang/String; = "1l"

.field private static final WEBP_EXTEND:Ljava/lang/String; = ".webp"

.field private static final WHITE_FILL:Ljava/lang/String; = "1wh"

.field private static sInstance:Lc8/yNf;


# instance fields
.field private mCdnRuleRegex:Ljava/util/regex/Pattern;

.field private mFuzzyExcludePath:[Ljava/lang/String;

.field private mOssDomains:[Ljava/lang/String;

.field private final mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "ossgw.alicdn.com"

    aput-object v1, v0, v2

    sput-object v0, Lc8/yNf;->DEFAULT_OSS_DOMAINS:[Ljava/lang/String;

    .line 35
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "getAvatar"

    aput-object v1, v0, v2

    const-string/jumbo v1, "@watermark"

    aput-object v1, v0, v3

    sput-object v0, Lc8/yNf;->DEFAULT_FUZZY_EXCLUDES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    sget-object v0, Lc8/yNf;->DEFAULT_OSS_DOMAINS:[Ljava/lang/String;

    iput-object v0, p0, Lc8/yNf;->mOssDomains:[Ljava/lang/String;

    .line 48
    sget-object v0, Lc8/yNf;->DEFAULT_FUZZY_EXCLUDES:[Ljava/lang/String;

    iput-object v0, p0, Lc8/yNf;->mFuzzyExcludePath:[Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lc8/yNf;->mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-void
.end method

.method private static decideCut(Lc8/vNf;Lc8/nHf;)Z
    .locals 2
    .param p0, "urlInfo"    # Lc8/vNf;
    .param p1, "sConfig"    # Lc8/nHf;

    .prologue
    .line 213
    invoke-virtual {p1}, Lc8/nHf;->getCutType()Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lc8/nHf;->getCutType()Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;

    move-result-object v0

    sget-object v1, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;->non:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;

    if-ne v0, v1, :cond_1

    .line 214
    :cond_0
    const/4 v0, 0x0

    .line 217
    :goto_0
    return v0

    .line 216
    :cond_1
    invoke-virtual {p1}, Lc8/nHf;->getCutType()Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;->getOssCut()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/vNf;->cj:Ljava/lang/String;

    .line 217
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private decideExtend(Lc8/vNf;Lc8/nHf;)V
    .locals 2
    .param p1, "urlInfo"    # Lc8/vNf;
    .param p2, "sConfig"    # Lc8/nHf;

    .prologue
    .line 222
    const-string/jumbo v0, ".gif"

    iget-object v1, p1, Lc8/vNf;->ext:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    invoke-virtual {p2}, Lc8/nHf;->isForcedWebPOn()Z

    move-result v0

    if-nez v0, :cond_2

    .line 227
    invoke-virtual {p2}, Lc8/nHf;->isEnabledWebP()Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/yNf;->isConfigDisabled(Ljava/lang/Boolean;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lc8/HNf;->getInstance()Lc8/HNf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/HNf;->isSupportWebP()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lc8/vNf;->suffix:Ljava/lang/String;

    const-string/jumbo v1, "imgwebptag=0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 228
    :cond_2
    const-string/jumbo v0, ".webp"

    iput-object v0, p1, Lc8/vNf;->ext:Ljava/lang/String;

    goto :goto_0

    .line 229
    :cond_3
    const-string/jumbo v0, ".webp"

    iget-object v1, p1, Lc8/vNf;->ext:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    const/4 v0, 0x0

    iput-object v0, p1, Lc8/vNf;->ext:Ljava/lang/String;

    goto :goto_0
.end method

.method private decideQuality(Lc8/vNf;Lc8/nHf;)Z
    .locals 2
    .param p1, "urlInfo"    # Lc8/vNf;
    .param p2, "sConfig"    # Lc8/nHf;

    .prologue
    .line 188
    invoke-virtual {p2}, Lc8/nHf;->isEnabledQuality()Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/yNf;->isConfigDisabled(Ljava/lang/Boolean;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lc8/nHf;->getFinalImageQuality()Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    move-result-object v0

    sget-object v1, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->non:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    if-ne v0, v1, :cond_1

    .line 189
    :cond_0
    const/4 v0, 0x0

    .line 200
    :goto_0
    return v0

    .line 192
    :cond_1
    invoke-virtual {p2}, Lc8/nHf;->getFinalImageQuality()Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 193
    invoke-virtual {p2}, Lc8/nHf;->getFinalImageQuality()Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->getOssQuality()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lc8/vNf;->quality:Ljava/lang/String;

    .line 200
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 194
    :cond_2
    invoke-static {}, Lc8/HNf;->getInstance()Lc8/HNf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/HNf;->isNetworkSlow()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 195
    sget-object v0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->q75:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    invoke-virtual {v0}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->getOssQuality()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lc8/vNf;->quality:Ljava/lang/String;

    goto :goto_1

    .line 197
    :cond_3
    sget-object v0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->q90:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    invoke-virtual {v0}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->getOssQuality()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lc8/vNf;->quality:Ljava/lang/String;

    goto :goto_1
.end method

.method private decideSharpen(Lc8/vNf;Lc8/nHf;)Z
    .locals 1
    .param p1, "urlInfo"    # Lc8/vNf;
    .param p2, "sConfig"    # Lc8/nHf;

    .prologue
    .line 205
    invoke-virtual {p2}, Lc8/nHf;->isEnabledSharpen()Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/yNf;->isConfigDisabled(Ljava/lang/Boolean;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lc8/HNf;->getInstance()Lc8/HNf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/HNf;->isNetworkSlow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 206
    :cond_0
    const/4 v0, 0x0

    .line 209
    :goto_0
    return v0

    .line 208
    :cond_1
    const-string/jumbo v0, "1sh"

    iput-object v0, p1, Lc8/vNf;->sharpen:Ljava/lang/String;

    .line 209
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private decideWH(Lc8/vNf;Lc8/nHf;I)V
    .locals 10
    .param p1, "urlInfo"    # Lc8/vNf;
    .param p2, "sConfig"    # Lc8/nHf;
    .param p3, "uiSize"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 159
    invoke-static {}, Lc8/HNf;->getInstance()Lc8/HNf;

    move-result-object v1

    .line 160
    .local v1, "tbStrategy":Lc8/HNf;
    invoke-virtual {v1}, Lc8/HNf;->isNetworkSlow()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 161
    int-to-float v2, p3

    invoke-virtual {v1}, Lc8/HNf;->getDip()F

    move-result v5

    mul-float/2addr v2, v5

    float-to-double v6, v2

    const-wide v8, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v6, v8

    double-to-int p3, v6

    .line 166
    :goto_0
    invoke-virtual {p2}, Lc8/nHf;->getFinalWidth()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {p2}, Lc8/nHf;->getFinalHeight()I

    move-result v2

    if-lez v2, :cond_2

    .line 167
    invoke-virtual {p2}, Lc8/nHf;->getFinalWidth()I

    move-result v2

    iput v2, p1, Lc8/vNf;->width:I

    .line 168
    invoke-virtual {p2}, Lc8/nHf;->getFinalHeight()I

    move-result v2

    iput v2, p1, Lc8/vNf;->height:I

    .line 185
    :cond_0
    :goto_1
    return-void

    .line 163
    :cond_1
    int-to-float v2, p3

    invoke-virtual {v1}, Lc8/HNf;->getDip()F

    move-result v5

    mul-float/2addr v2, v5

    float-to-int p3, v2

    goto :goto_0

    .line 169
    :cond_2
    invoke-virtual {p2}, Lc8/nHf;->getSizeLimitType()Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;

    move-result-object v2

    sget-object v5, Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;->ALL_LIMIT:Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;

    if-ne v2, v5, :cond_3

    iget v2, p1, Lc8/vNf;->width:I

    if-lez v2, :cond_3

    iget v2, p1, Lc8/vNf;->height:I

    if-gtz v2, :cond_0

    :cond_3
    if-ltz p3, :cond_0

    .line 170
    invoke-virtual {p2}, Lc8/nHf;->isEnabledLevelModel()Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v2}, Lc8/yNf;->isConfigDisabled(Ljava/lang/Boolean;)Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_2
    invoke-virtual {v1, p3, v3, v2}, Lc8/HNf;->taobaoCDNPatten(IZZ)I

    move-result v0

    .line 171
    .local v0, "levelSize":I
    sget-object v2, Lc8/xNf;->$SwitchMap$com$taobao$tao$image$ImageStrategyConfig$SizeLimitType:[I

    invoke-virtual {p2}, Lc8/nHf;->getSizeLimitType()Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 173
    :pswitch_0
    iput v0, p1, Lc8/vNf;->width:I

    .line 174
    iput v4, p1, Lc8/vNf;->height:I

    goto :goto_1

    .end local v0    # "levelSize":I
    :cond_4
    move v2, v4

    .line 170
    goto :goto_2

    .line 177
    .restart local v0    # "levelSize":I
    :pswitch_1
    iput v4, p1, Lc8/vNf;->width:I

    .line 178
    iput v0, p1, Lc8/vNf;->height:I

    goto :goto_1

    .line 181
    :pswitch_2
    iput v0, p1, Lc8/vNf;->height:I

    iput v0, p1, Lc8/vNf;->width:I

    goto :goto_1

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static declared-synchronized getInstance()Lc8/yNf;
    .locals 2

    .prologue
    .line 40
    const-class v1, Lc8/yNf;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/yNf;->sInstance:Lc8/yNf;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lc8/yNf;

    invoke-direct {v0}, Lc8/yNf;-><init>()V

    sput-object v0, Lc8/yNf;->sInstance:Lc8/yNf;

    .line 43
    :cond_0
    sget-object v0, Lc8/yNf;->sInstance:Lc8/yNf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isConfigDisabled(Ljava/lang/Boolean;)Z
    .locals 1
    .param p1, "enabled"    # Ljava/lang/Boolean;

    .prologue
    .line 235
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseOssRule(Ljava/lang/String;)Lc8/vNf;
    .locals 14
    .param p1, "orgUrl"    # Ljava/lang/String;

    .prologue
    .line 239
    invoke-static {p1}, Lc8/wNf;->getBaseUrlInfo(Ljava/lang/String;)Lc8/vNf;

    move-result-object v7

    .line 240
    .local v7, "urlInfo":Lc8/vNf;
    iget-object v6, v7, Lc8/vNf;->base:Ljava/lang/String;

    .line 241
    .local v6, "url":Ljava/lang/String;
    const/16 v9, 0x40

    invoke-virtual {v6, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 242
    .local v2, "keyIndex":I
    if-gez v2, :cond_1

    .line 278
    :cond_0
    :goto_0
    return-object v7

    .line 245
    :cond_1
    iget-object v9, p0, Lc8/yNf;->mCdnRuleRegex:Ljava/util/regex/Pattern;

    if-nez v9, :cond_2

    .line 246
    const-string/jumbo v9, "%s(?:(?:%s?(\\d+)w[%s\\.])|(?:%s?(\\d+)w$)|(?:%s?(\\d+)h)|(?:%s?(\\d+[Qq]))|(?:%s?[^%s.]+))+"

    const/16 v10, 0x8

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/16 v12, 0x40

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string/jumbo v12, "_"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string/jumbo v12, "_"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-string/jumbo v12, "_"

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string/jumbo v12, "_"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    const-string/jumbo v12, "_"

    aput-object v12, v10, v11

    const/4 v11, 0x6

    const-string/jumbo v12, "_"

    aput-object v12, v10, v11

    const/4 v11, 0x7

    const-string/jumbo v12, "_"

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    iput-object v9, p0, Lc8/yNf;->mCdnRuleRegex:Ljava/util/regex/Pattern;

    .line 248
    :cond_2
    iget-object v9, p0, Lc8/yNf;->mCdnRuleRegex:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 249
    .local v3, "matcher":Ljava/util/regex/Matcher;
    const/4 v9, 0x0

    invoke-virtual {v6, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lc8/vNf;->base:Ljava/lang/String;

    .line 250
    invoke-virtual {v3, v2}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 253
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v0

    .line 254
    .local v0, "groupCount":I
    const/4 v9, 0x4

    if-lt v0, v9, :cond_0

    .line 259
    const/4 v9, 0x1

    :try_start_0
    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 260
    .local v8, "widthStr":Ljava/lang/String;
    if-nez v8, :cond_3

    .line 261
    const/4 v9, 0x2

    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 263
    :cond_3
    const/4 v9, 0x3

    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 264
    .local v1, "heightStr":Ljava/lang/String;
    const/4 v9, 0x4

    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 265
    .local v5, "quality":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 266
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v7, Lc8/vNf;->width:I

    .line 268
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 269
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v7, Lc8/vNf;->height:I

    .line 271
    :cond_5
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 272
    iput-object v5, v7, Lc8/vNf;->quality:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 274
    .end local v1    # "heightStr":Ljava/lang/String;
    .end local v5    # "quality":Ljava/lang/String;
    .end local v8    # "widthStr":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 275
    .local v4, "ne":Ljava/lang/NumberFormatException;
    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 276
    const-string/jumbo v9, "STRATEGY.ALL"

    const-string/jumbo v10, "ImageStrategyExtra parseImageUrl convert number error:%s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Lc8/oHf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public decideUrl(Ljava/lang/String;ILc8/nHf;)Ljava/lang/String;
    .locals 9
    .param p1, "orgUrl"    # Ljava/lang/String;
    .param p2, "uiSize"    # I
    .param p3, "sConfig"    # Lc8/nHf;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 104
    invoke-virtual {p0, p1}, Lc8/yNf;->isFuzzyExclude(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 105
    const-string/jumbo v4, "STRATEGY.ALL"

    const-string/jumbo v5, "[OSS] fuzzy exclude, url=%s"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object p1, v6, v7

    invoke-static {v4, v5, v6}, Lc8/oHf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    .end local p1    # "orgUrl":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 109
    .restart local p1    # "orgUrl":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, ""

    .line 110
    .local v2, "secondLevelChar":Ljava/lang/String;
    invoke-direct {p0, p1}, Lc8/yNf;->parseOssRule(Ljava/lang/String;)Lc8/vNf;

    move-result-object v3

    .line 113
    .local v3, "urlInfo":Lc8/vNf;
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v4, v3, Lc8/vNf;->base:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1a

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 114
    .local v1, "ret":Ljava/lang/StringBuilder;
    iget-object v4, v3, Lc8/vNf;->base:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    const/16 v4, 0x40

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    invoke-direct {p0, v3, p3, p2}, Lc8/yNf;->decideWH(Lc8/vNf;Lc8/nHf;I)V

    .line 118
    iget v4, v3, Lc8/vNf;->width:I

    if-lez v4, :cond_1

    .line 119
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lc8/vNf;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "w"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    const-string/jumbo v2, "_"

    .line 122
    :cond_1
    iget v4, v3, Lc8/vNf;->height:I

    if-lez v4, :cond_2

    .line 123
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lc8/vNf;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "h"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const-string/jumbo v2, "_"

    .line 127
    :cond_2
    invoke-direct {p0, v3, p3}, Lc8/yNf;->decideQuality(Lc8/vNf;Lc8/nHf;)Z

    .line 128
    iget-object v4, v3, Lc8/vNf;->quality:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 129
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lc8/vNf;->quality:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    const-string/jumbo v2, "_"

    .line 133
    :cond_3
    invoke-direct {p0, v3, p3}, Lc8/yNf;->decideSharpen(Lc8/vNf;Lc8/nHf;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 134
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lc8/vNf;->sharpen:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    const-string/jumbo v2, "_"

    .line 138
    :cond_4
    invoke-static {v3, p3}, Lc8/yNf;->decideCut(Lc8/vNf;Lc8/nHf;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 139
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lc8/vNf;->cj:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    const-string/jumbo v2, "_"

    .line 143
    :cond_5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "1l"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-direct {p0, v3, p3}, Lc8/yNf;->decideExtend(Lc8/vNf;Lc8/nHf;)V

    .line 147
    iget-object v4, v3, Lc8/vNf;->ext:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 148
    const-string/jumbo v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "1wh"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    :goto_1
    iget-object v4, v3, Lc8/vNf;->suffix:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "decideUrl":Ljava/lang/String;
    const-string/jumbo v4, "STRATEGY.ALL"

    const-string/jumbo v5, "[OSS] origin url=%s\ndecide url=%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v7

    aput-object v0, v6, v8

    invoke-static {v4, v5, v6}, Lc8/oHf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object p1, v0

    .line 155
    goto/16 :goto_0

    .line 150
    .end local v0    # "decideUrl":Ljava/lang/String;
    :cond_6
    iget-object v4, v3, Lc8/vNf;->ext:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public isFuzzyExclude(Ljava/lang/String;)Z
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 87
    iget-object v2, p0, Lc8/yNf;->mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 89
    :try_start_0
    iget-object v2, p0, Lc8/yNf;->mFuzzyExcludePath:[Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 90
    iget-object v2, p0, Lc8/yNf;->mFuzzyExcludePath:[Ljava/lang/String;

    array-length v0, v2

    .line 91
    .local v0, "arrayLength":I
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 92
    iget-object v2, p0, Lc8/yNf;->mFuzzyExcludePath:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-ltz v2, :cond_0

    .line 93
    const/4 v2, 0x1

    .line 99
    iget-object v3, p0, Lc8/yNf;->mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .end local v0    # "arrayLength":I
    .end local v1    # "n":I
    :goto_1
    return v2

    .line 91
    .restart local v0    # "arrayLength":I
    .restart local v1    # "n":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    .end local v0    # "arrayLength":I
    .end local v1    # "n":I
    :cond_1
    const/4 v2, 0x0

    .line 99
    iget-object v3, p0, Lc8/yNf;->mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lc8/yNf;->mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v2
.end method

.method public isOssDomain(Ljava/lang/String;)Z
    .locals 4
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 66
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 81
    :goto_0
    return v2

    .line 69
    :cond_0
    iget-object v3, p0, Lc8/yNf;->mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 71
    :try_start_0
    iget-object v3, p0, Lc8/yNf;->mOssDomains:[Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 72
    iget-object v3, p0, Lc8/yNf;->mOssDomains:[Ljava/lang/String;

    array-length v0, v3

    .line 73
    .local v0, "arrayLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 74
    iget-object v3, p0, Lc8/yNf;->mOssDomains:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-ltz v3, :cond_1

    .line 75
    const/4 v2, 0x1

    .line 81
    iget-object v3, p0, Lc8/yNf;->mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0

    .line 73
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 81
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    :cond_2
    iget-object v3, p0, Lc8/yNf;->mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lc8/yNf;->mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v2
.end method

.method public setupConfigs([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "ossDomains"    # [Ljava/lang/String;
    .param p2, "fuzzyExcludePath"    # [Ljava/lang/String;

    .prologue
    .line 52
    iget-object v0, p0, Lc8/yNf;->mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 54
    if-eqz p1, :cond_0

    :try_start_0
    array-length v0, p1

    if-lez v0, :cond_0

    .line 55
    iput-object p1, p0, Lc8/yNf;->mOssDomains:[Ljava/lang/String;

    .line 57
    :cond_0
    if-eqz p2, :cond_1

    array-length v0, p2

    if-lez v0, :cond_1

    .line 58
    iput-object p2, p0, Lc8/yNf;->mFuzzyExcludePath:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :cond_1
    iget-object v0, p0, Lc8/yNf;->mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 62
    return-void

    .line 61
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lc8/yNf;->mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method
