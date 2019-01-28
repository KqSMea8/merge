.class public Lc8/nHf;
.super Ljava/lang/Object;
.source "ImageStrategyConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/mHf;,
        Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;
    }
.end annotation


# static fields
.field public static final BALA:Ljava/lang/String; = "bala"

.field public static final DEFAULT:Ljava/lang/String; = "default"

.field public static final DETAIL:Ljava/lang/String; = "detail"

.field public static final HOME:Ljava/lang/String; = "home"

.field public static final SEARCH:Ljava/lang/String; = "search"

.field public static final SHOP:Ljava/lang/String; = "shop"

.field public static final TBCHANNEL:Ljava/lang/String; = "tbchannel"

.field public static final WEAPP:Ljava/lang/String; = "weapp"

.field public static final WEAPPSHARPEN:Ljava/lang/String; = "weappsharpen"

.field public static final WEITAO:Ljava/lang/String; = "weitao"


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

.field forcedWebPOn:Z

.field sizeLimitType:Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;

.field skipped:Z


# direct methods
.method private constructor <init>(Lc8/mHf;)V
    .locals 4
    .param p1, "builder"    # Lc8/mHf;

    .prologue
    const/16 v3, 0x2710

    const/4 v2, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iget-object v0, p1, Lc8/mHf;->bizName:Ljava/lang/String;

    iput-object v0, p0, Lc8/nHf;->bizName:Ljava/lang/String;

    .line 59
    iget-object v0, p1, Lc8/mHf;->bizIdStr:Ljava/lang/String;

    iput-object v0, p0, Lc8/nHf;->bizIdStr:Ljava/lang/String;

    .line 60
    iget v0, p1, Lc8/mHf;->bizId:I

    iput v0, p0, Lc8/nHf;->bizId:I

    .line 61
    iget-boolean v0, p1, Lc8/mHf;->skipped:Z

    iput-boolean v0, p0, Lc8/nHf;->skipped:Z

    .line 62
    iget v0, p1, Lc8/mHf;->finalWidth:I

    iput v0, p0, Lc8/nHf;->finalWidth:I

    .line 63
    iget v0, p1, Lc8/mHf;->finalHeight:I

    iput v0, p0, Lc8/nHf;->finalHeight:I

    .line 64
    iget-object v0, p1, Lc8/mHf;->cutType:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;

    iput-object v0, p0, Lc8/nHf;->cutType:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;

    .line 65
    iget-object v0, p1, Lc8/mHf;->enabledWebP:Ljava/lang/Boolean;

    iput-object v0, p0, Lc8/nHf;->enabledWebP:Ljava/lang/Boolean;

    .line 66
    iget-object v0, p1, Lc8/mHf;->enabledQuality:Ljava/lang/Boolean;

    iput-object v0, p0, Lc8/nHf;->enabledQuality:Ljava/lang/Boolean;

    .line 67
    iget-object v0, p1, Lc8/mHf;->enabledSharpen:Ljava/lang/Boolean;

    iput-object v0, p0, Lc8/nHf;->enabledSharpen:Ljava/lang/Boolean;

    .line 68
    iget-object v0, p1, Lc8/mHf;->enabledMergeDomain:Ljava/lang/Boolean;

    iput-object v0, p0, Lc8/nHf;->enabledMergeDomain:Ljava/lang/Boolean;

    .line 69
    iget-object v0, p1, Lc8/mHf;->enabledLevelModel:Ljava/lang/Boolean;

    iput-object v0, p0, Lc8/nHf;->enabledLevelModel:Ljava/lang/Boolean;

    .line 70
    iget-object v0, p1, Lc8/mHf;->finalImageQuality:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    iput-object v0, p0, Lc8/nHf;->finalImageQuality:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    .line 71
    iget-object v0, p1, Lc8/mHf;->forcedWebPOn:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p1, Lc8/mHf;->forcedWebPOn:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lc8/nHf;->forcedWebPOn:Z

    .line 74
    :cond_0
    iget-object v0, p1, Lc8/mHf;->sizeLimitType:Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;

    iput-object v0, p0, Lc8/nHf;->sizeLimitType:Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;

    .line 75
    iget-object v0, p0, Lc8/nHf;->sizeLimitType:Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;

    if-nez v0, :cond_2

    .line 76
    sget-object v0, Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;->ALL_LIMIT:Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;

    iput-object v0, p0, Lc8/nHf;->sizeLimitType:Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;

    .line 84
    :cond_1
    :goto_0
    return-void

    .line 77
    :cond_2
    iget-object v0, p0, Lc8/nHf;->sizeLimitType:Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;

    sget-object v1, Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;->WIDTH_LIMIT:Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;

    if-ne v0, v1, :cond_3

    .line 78
    iput v3, p0, Lc8/nHf;->finalHeight:I

    .line 79
    iput v2, p0, Lc8/nHf;->finalWidth:I

    goto :goto_0

    .line 80
    :cond_3
    iget-object v0, p0, Lc8/nHf;->sizeLimitType:Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;

    sget-object v1, Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;->HEIGHT_LIMIT:Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;

    if-ne v0, v1, :cond_1

    .line 81
    iput v2, p0, Lc8/nHf;->finalHeight:I

    .line 82
    iput v3, p0, Lc8/nHf;->finalWidth:I

    goto :goto_0
.end method

.method synthetic constructor <init>(Lc8/mHf;Lc8/lHf;)V
    .locals 0
    .param p1, "x0"    # Lc8/mHf;
    .param p2, "x1"    # Lc8/lHf;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lc8/nHf;-><init>(Lc8/mHf;)V

    return-void
.end method

.method public static newBuilderWithName(Ljava/lang/String;)Lc8/mHf;
    .locals 2
    .param p0, "bizName"    # Ljava/lang/String;

    .prologue
    .line 34
    new-instance v0, Lc8/mHf;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc8/mHf;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static newBuilderWithName(Ljava/lang/String;I)Lc8/mHf;
    .locals 1
    .param p0, "bizName"    # Ljava/lang/String;
    .param p1, "bizId"    # I

    .prologue
    .line 30
    new-instance v0, Lc8/mHf;

    invoke-direct {v0, p0, p1}, Lc8/mHf;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static newBuilderWithName(Ljava/lang/String;Ljava/lang/String;)Lc8/mHf;
    .locals 1
    .param p0, "bizName"    # Ljava/lang/String;
    .param p1, "bizIdStr"    # Ljava/lang/String;

    .prologue
    .line 38
    new-instance v0, Lc8/mHf;

    invoke-direct {v0, p0, p1}, Lc8/mHf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getBizId()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lc8/nHf;->bizId:I

    return v0
.end method

.method public getBizIdStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lc8/nHf;->bizIdStr:Ljava/lang/String;

    return-object v0
.end method

.method public getCutType()Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lc8/nHf;->cutType:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;

    return-object v0
.end method

.method public getFinalHeight()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lc8/nHf;->finalHeight:I

    return v0
.end method

.method public getFinalImageQuality()Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lc8/nHf;->finalImageQuality:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    return-object v0
.end method

.method public getFinalWidth()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lc8/nHf;->finalWidth:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lc8/nHf;->bizName:Ljava/lang/String;

    return-object v0
.end method

.method public getSizeLimitType()Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lc8/nHf;->sizeLimitType:Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;

    return-object v0
.end method

.method public isEnabledLevelModel()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lc8/nHf;->enabledLevelModel:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isEnabledMergeDomain()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lc8/nHf;->enabledMergeDomain:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isEnabledQuality()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lc8/nHf;->enabledQuality:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isEnabledSharpen()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lc8/nHf;->enabledSharpen:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isEnabledWebP()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lc8/nHf;->enabledWebP:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isForcedWebPOn()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lc8/nHf;->forcedWebPOn:Z

    return v0
.end method

.method public isSkipped()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lc8/nHf;->skipped:Z

    return v0
.end method

.method public report()Ljava/lang/String;
    .locals 3

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x12c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 101
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "ImageStrategyConfig@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 102
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "bizName:"

    .line 103
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/nHf;->bizName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "bizId:"

    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lc8/nHf;->bizId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "skipped:"

    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lc8/nHf;->skipped:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "finalWidth:"

    .line 106
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lc8/nHf;->finalWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "finalHeight:"

    .line 107
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lc8/nHf;->finalHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "cutType:"

    .line 108
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/nHf;->cutType:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "enabledWebP:"

    .line 109
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/nHf;->enabledWebP:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "enabledQuality:"

    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/nHf;->enabledQuality:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "enabledSharpen:"

    .line 111
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/nHf;->enabledSharpen:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "enabledMergeDomain:"

    .line 112
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/nHf;->enabledMergeDomain:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "enabledLevelModel:"

    .line 113
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/nHf;->enabledLevelModel:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "finalImageQuality:"

    .line 114
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/nHf;->finalImageQuality:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "forcedWebPOn:"

    .line 115
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lc8/nHf;->forcedWebPOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "sizeLimitType:"

    .line 116
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/nHf;->sizeLimitType:Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 117
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lc8/nHf;->bizId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
