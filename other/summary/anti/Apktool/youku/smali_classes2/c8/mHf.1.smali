.class public Lc8/mHf;
.super Ljava/lang/Object;
.source "ImageStrategyConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/nHf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field bizId:I

.field bizIdStr:Ljava/lang/String;

.field bizName:Ljava/lang/String;

.field cutType:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;

.field enabledLevelModel:Ljava/lang/Boolean;

.field enabledMergeDomain:Ljava/lang/Boolean;

.field enabledQuality:Ljava/lang/Boolean;

.field enabledSharpen:Ljava/lang/Boolean;

.field enabledWebP:Ljava/lang/Boolean;

.field finalHeight:I

.field finalImageQuality:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

.field finalWidth:I

.field forcedWebPOn:Ljava/lang/Boolean;

.field sizeLimitType:Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;

.field skipped:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "bizName"    # Ljava/lang/String;
    .param p2, "bizId"    # I

    .prologue
    const/4 v0, -0x1

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput v0, p0, Lc8/mHf;->finalWidth:I

    .line 195
    iput v0, p0, Lc8/mHf;->finalHeight:I

    .line 207
    iput-object p1, p0, Lc8/mHf;->bizName:Ljava/lang/String;

    .line 208
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/mHf;->bizIdStr:Ljava/lang/String;

    .line 209
    iput p2, p0, Lc8/mHf;->bizId:I

    .line 210
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "bizName"    # Ljava/lang/String;
    .param p2, "bizIdStr"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput v0, p0, Lc8/mHf;->finalWidth:I

    .line 195
    iput v0, p0, Lc8/mHf;->finalHeight:I

    .line 213
    iput-object p1, p0, Lc8/mHf;->bizName:Ljava/lang/String;

    .line 214
    iput-object p2, p0, Lc8/mHf;->bizIdStr:Ljava/lang/String;

    .line 215
    const/4 v0, 0x0

    iput v0, p0, Lc8/mHf;->bizId:I

    .line 216
    return-void
.end method


# virtual methods
.method public build()Lc8/nHf;
    .locals 2

    .prologue
    .line 323
    new-instance v0, Lc8/nHf;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc8/nHf;-><init>(Lc8/mHf;Lc8/lHf;)V

    return-object v0
.end method

.method public enableLevelModel(Z)Lc8/mHf;
    .locals 1
    .param p1, "enabledLevelModel"    # Z

    .prologue
    .line 310
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lc8/mHf;->enabledLevelModel:Ljava/lang/Boolean;

    .line 311
    return-object p0
.end method

.method public enableMergeDomain(Z)Lc8/mHf;
    .locals 1
    .param p1, "enabledMergeDomain"    # Z

    .prologue
    .line 302
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lc8/mHf;->enabledMergeDomain:Ljava/lang/Boolean;

    .line 303
    return-object p0
.end method

.method public enableQuality(Z)Lc8/mHf;
    .locals 1
    .param p1, "enabledQuality"    # Z

    .prologue
    .line 284
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lc8/mHf;->enabledQuality:Ljava/lang/Boolean;

    .line 285
    return-object p0
.end method

.method public enableSharpen(Z)Lc8/mHf;
    .locals 1
    .param p1, "enabledSharpen"    # Z

    .prologue
    .line 293
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lc8/mHf;->enabledSharpen:Ljava/lang/Boolean;

    .line 294
    return-object p0
.end method

.method public enableWebP(Z)Lc8/mHf;
    .locals 1
    .param p1, "enabledWebP"    # Z

    .prologue
    .line 256
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lc8/mHf;->enabledWebP:Ljava/lang/Boolean;

    .line 257
    return-object p0
.end method

.method public forceWebPOn(Z)Lc8/mHf;
    .locals 1
    .param p1, "forced"    # Z

    .prologue
    .line 275
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lc8/mHf;->forcedWebPOn:Ljava/lang/Boolean;

    .line 276
    return-object p0
.end method

.method public setCutType(Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;)Lc8/mHf;
    .locals 0
    .param p1, "cutType"    # Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;

    .prologue
    .line 247
    iput-object p1, p0, Lc8/mHf;->cutType:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;

    .line 248
    return-object p0
.end method

.method public setFinalHeight(I)Lc8/mHf;
    .locals 0
    .param p1, "finalHeight"    # I

    .prologue
    .line 238
    iput p1, p0, Lc8/mHf;->finalHeight:I

    .line 239
    return-object p0
.end method

.method public setFinalImageQuality(Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;)Lc8/mHf;
    .locals 0
    .param p1, "imageQuality"    # Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    .prologue
    .line 318
    iput-object p1, p0, Lc8/mHf;->finalImageQuality:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    .line 319
    return-object p0
.end method

.method public setFinalWidth(I)Lc8/mHf;
    .locals 0
    .param p1, "finalWidth"    # I

    .prologue
    .line 230
    iput p1, p0, Lc8/mHf;->finalWidth:I

    .line 231
    return-object p0
.end method

.method public setSizeLimitType(Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;)Lc8/mHf;
    .locals 0
    .param p1, "limitType"    # Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;

    .prologue
    .line 266
    iput-object p1, p0, Lc8/mHf;->sizeLimitType:Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;

    .line 267
    return-object p0
.end method

.method public skip(Z)Lc8/mHf;
    .locals 0
    .param p1, "skipped"    # Z

    .prologue
    .line 222
    iput-boolean p1, p0, Lc8/mHf;->skipped:Z

    .line 223
    return-object p0
.end method
