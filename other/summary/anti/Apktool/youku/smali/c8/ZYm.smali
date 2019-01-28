.class public Lc8/ZYm;
.super Lc8/jXb;
.source "PopLayerImageView.java"


# annotations
.annotation runtime Lc8/fXb;
    type = "image"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/jXb",
        "<",
        "Lc8/DOf;",
        "Lc8/lYb;",
        ">;"
    }
.end annotation


# instance fields
.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lc8/jXb;-><init>(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method static synthetic access$000(Lc8/ZYm;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/ZYm;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lc8/ZYm;->getAttachInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getScaleType(Ljava/lang/String;)Landroid/widget/ImageView$ScaleType;
    .locals 1
    .param p0, "scaleTypeAlias"    # Ljava/lang/String;

    .prologue
    .line 143
    const-string/jumbo v0, "ScaleAspectFit"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 152
    :goto_0
    return-object v0

    .line 145
    :cond_0
    const-string/jumbo v0, "ScaleAspectFill"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    goto :goto_0

    .line 147
    :cond_1
    const-string/jumbo v0, "ScaleToFill"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    goto :goto_0

    .line 149
    :cond_2
    const-string/jumbo v0, "SameSizeCentered"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 150
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    goto :goto_0

    .line 152
    :cond_3
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    goto :goto_0
.end method


# virtual methods
.method public destroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 135
    invoke-super {p0}, Lc8/jXb;->destroyView()V

    .line 136
    iget-object v0, p0, Lc8/ZYm;->mInnerView:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lc8/ZYm;->mInnerView:Ljava/lang/Object;

    check-cast v0, Lc8/DOf;

    invoke-virtual {v0, v1}, Lc8/DOf;->setImageUrl(Ljava/lang/String;)V

    .line 138
    iput-object v1, p0, Lc8/ZYm;->mInnerView:Ljava/lang/Object;

    .line 140
    :cond_0
    return-void
.end method

.method public getInfo()Landroid/text/SpannableStringBuilder;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 159
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 161
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    :try_start_0
    invoke-virtual {p0}, Lc8/ZYm;->getPopRequest()Lc8/yXb;

    move-result-object v2

    check-cast v2, Lc8/lYb;

    invoke-virtual {v2}, Lc8/lYb;->getConfigItem()Lcom/alibaba/poplayer/trigger/BaseConfigItem;

    move-result-object v1

    .line 162
    .local v1, "configItem":Lcom/alibaba/poplayer/trigger/BaseConfigItem;
    const-string/jumbo v2, "UUID"

    iget-object v3, v1, Lcom/alibaba/poplayer/trigger/BaseConfigItem;->uuid:Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Lc8/YYm;

    invoke-direct {v5, p0, v1}, Lc8/YYm;-><init>(Lc8/ZYm;Lcom/alibaba/poplayer/trigger/BaseConfigItem;)V

    invoke-static {v0, v2, v3, v4, v5}, Lc8/kXb;->addInfo(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 172
    const-string/jumbo v2, "PopTimes"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/alibaba/poplayer/trigger/BaseConfigItem;->uuid:Ljava/lang/String;

    const/4 v5, -0x1

    invoke-static {v4, v5}, Lcom/alibaba/poplayer/utils/PopLayerSharedPrererence;->getPopCountsFor(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v2, v3, v4, v5}, Lc8/kXb;->addInfo(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 174
    const-string/jumbo v2, "ImageUrl"

    iget-object v3, p0, Lc8/ZYm;->url:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v2, v3, v4, v5}, Lc8/kXb;->addInfo(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 175
    const-string/jumbo v2, "ModalThreshold"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "%.2f"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lc8/ZYm;->getPenetrateAlpha()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x437f0000    # 255.0f

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 176
    invoke-virtual {p0}, Lc8/ZYm;->getPenetrateAlpha()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 175
    invoke-static {v0, v2, v3, v4, v5}, Lc8/kXb;->addInfo(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .end local v1    # "configItem":Lcom/alibaba/poplayer/trigger/BaseConfigItem;
    :goto_0
    return-object v0

    .line 178
    :catch_0
    move-exception v2

    const-string/jumbo v2, "Error"

    const-string/jumbo v3, "getInfo Error"

    invoke-static {v0, v2, v3, v9, v9}, Lc8/kXb;->addInfo(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Lc8/lYb;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "popRequest"    # Lc8/lYb;

    .prologue
    const/4 v10, -0x1

    .line 42
    const/4 v6, 0x0

    .line 44
    .local v6, "params":Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {p2}, Lc8/lYb;->getConfigItem()Lcom/alibaba/poplayer/trigger/BaseConfigItem;

    move-result-object v8

    iget-object v7, v8, Lcom/alibaba/poplayer/trigger/BaseConfigItem;->params:Ljava/lang/String;

    .line 45
    .local v7, "paramsStr":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 46
    const/4 v6, 0x0

    .line 52
    :goto_0
    if-nez v6, :cond_2

    .line 96
    .end local v7    # "paramsStr":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 48
    .restart local v7    # "paramsStr":Ljava/lang/String;
    :cond_1
    new-instance v5, Lorg/json/JSONTokener;

    invoke-direct {v5, v7}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 49
    .local v5, "jsonParser":Lorg/json/JSONTokener;
    invoke-virtual {v5}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lorg/json/JSONObject;

    move-object v6, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 55
    .end local v5    # "jsonParser":Lorg/json/JSONTokener;
    .end local v7    # "paramsStr":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 56
    .local v2, "e":Ljava/lang/Throwable;
    const-string/jumbo v8, "PopLayerView init fail."

    invoke-static {v8, v2}, Lcom/alibaba/poplayer/utils/PopLayerLog;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_2
    const-string/jumbo v8, "imgUrl"

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lc8/ZYm;->url:Ljava/lang/String;

    .line 61
    iget-object v8, p0, Lc8/ZYm;->url:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 65
    new-instance v3, Lc8/DOf;

    invoke-direct {v3, p1}, Lc8/DOf;-><init>(Landroid/content/Context;)V

    .line 66
    .local v3, "imageView":Lc8/DOf;
    iget-object v8, p0, Lc8/ZYm;->url:Ljava/lang/String;

    invoke-virtual {v3, v8}, Lc8/DOf;->setImageUrl(Ljava/lang/String;)V

    .line 68
    const-string/jumbo v8, "imgFillMode"

    const-string/jumbo v9, "ScaleAspectFit"

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 69
    .local v4, "imgFillMode":Ljava/lang/String;
    invoke-static {v4}, Lc8/ZYm;->getScaleType(Ljava/lang/String;)Landroid/widget/ImageView$ScaleType;

    move-result-object v8

    invoke-virtual {v3, v8}, Lc8/DOf;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 70
    new-instance v8, Lc8/XYm;

    invoke-direct {v8, p0}, Lc8/XYm;-><init>(Lc8/ZYm;)V

    invoke-virtual {v3, v8}, Lc8/DOf;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iput-object v3, p0, Lc8/ZYm;->mInnerView:Ljava/lang/Object;

    .line 87
    iget-object v8, p0, Lc8/ZYm;->mInnerView:Ljava/lang/Object;

    check-cast v8, Landroid/view/View;

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v9, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v8, v9}, Lc8/ZYm;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    invoke-virtual {p2}, Lc8/lYb;->getConfigItem()Lcom/alibaba/poplayer/trigger/BaseConfigItem;

    move-result-object v8

    iget-boolean v8, v8, Lcom/alibaba/poplayer/trigger/BaseConfigItem;->showCloseBtn:Z

    invoke-virtual {p0, v8}, Lc8/ZYm;->showCloseButton(Z)V

    .line 92
    invoke-virtual {p2}, Lc8/lYb;->getConfigItem()Lcom/alibaba/poplayer/trigger/BaseConfigItem;

    move-result-object v8

    iget-object v8, v8, Lcom/alibaba/poplayer/trigger/BaseConfigItem;->uuid:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lc8/ZYm;->increaseReadTimes(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Lc8/lYb;->getConfigItem()Lcom/alibaba/poplayer/trigger/BaseConfigItem;

    move-result-object v8

    iget-wide v8, v8, Lcom/alibaba/poplayer/trigger/BaseConfigItem;->modalThreshold:D

    const-wide v10, 0x406fe00000000000L    # 255.0

    mul-double/2addr v8, v10

    double-to-int v8, v8

    invoke-virtual {p0, v8}, Lc8/ZYm;->setPenetrateAlpha(I)V

    goto :goto_1
.end method

.method public bridge synthetic init(Landroid/content/Context;Lc8/yXb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 30
    check-cast p2, Lc8/lYb;

    invoke-virtual {p0, p1, p2}, Lc8/ZYm;->init(Landroid/content/Context;Lc8/lYb;)V

    return-void
.end method

.method public onReceiveEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "operationName"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;

    .prologue
    .line 101
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 102
    .local v4, "result":Lorg/json/JSONObject;
    const-string/jumbo v5, "modifyImage"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 104
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 105
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v5, "imgUrl"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, "imgUrl":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 107
    iget-object v5, p0, Lc8/ZYm;->mInnerView:Ljava/lang/Object;

    check-cast v5, Lc8/DOf;

    invoke-virtual {v5, v2}, Lc8/DOf;->setImageUrl(Ljava/lang/String;)V

    .line 108
    const-string/jumbo v5, "succeed"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 127
    .end local v2    # "imgUrl":Ljava/lang/String;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, v5}, Lc8/ZYm;->fireEventToMasterIfExist(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .end local v4    # "result":Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 110
    .restart local v2    # "imgUrl":Ljava/lang/String;
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    .restart local v4    # "result":Lorg/json/JSONObject;
    :cond_0
    const-string/jumbo v5, "succeed"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    .end local v2    # "imgUrl":Ljava/lang/String;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "result":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "ImageTrackController.onReceiveEvent error."

    invoke-static {v5, v0}, Lcom/alibaba/poplayer/utils/PopLayerLog;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 112
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v4    # "result":Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    const-string/jumbo v5, "modifyImageFillMode"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 114
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 115
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v5, "imgFillMode"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "imgFillMode":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 118
    iget-object v5, p0, Lc8/ZYm;->mInnerView:Ljava/lang/Object;

    check-cast v5, Lc8/DOf;

    invoke-static {v1}, Lc8/ZYm;->getScaleType(Ljava/lang/String;)Landroid/widget/ImageView$ScaleType;

    move-result-object v6

    invoke-virtual {v5, v6}, Lc8/DOf;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 119
    const-string/jumbo v5, "succeed"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_0

    .line 121
    :cond_2
    const-string/jumbo v5, "succeed"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_0

    .line 124
    .end local v1    # "imgFillMode":Ljava/lang/String;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :cond_3
    const-string/jumbo v5, "succeed"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 125
    const-string/jumbo p1, "NoSuchOperation"
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
