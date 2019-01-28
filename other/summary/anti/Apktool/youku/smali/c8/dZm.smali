.class public Lc8/dZm;
.super Lc8/jXb;
.source "PopLayerWeexView.java"


# annotations
.annotation runtime Lc8/fXb;
    type = "weex"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/jXb",
        "<",
        "Landroid/view/View;",
        "Lc8/lYb;",
        ">;"
    }
.end annotation


# static fields
.field private static isRegisterTrackingModule:Z


# instance fields
.field private mInstance:Lc8/nVf;

.field private weexSource:Ljava/lang/String;

.field private weexUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-boolean v0, Lc8/dZm;->isRegisterTrackingModule:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lc8/jXb;-><init>(Landroid/content/Context;)V

    .line 50
    return-void
.end method

.method static synthetic access$002(Lc8/dZm;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lc8/dZm;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 42
    iput-object p1, p0, Lc8/dZm;->mInnerView:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$100(Lc8/dZm;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/dZm;

    .prologue
    .line 42
    iget-object v0, p0, Lc8/dZm;->weexSource:Ljava/lang/String;

    return-object v0
.end method

.method public static getMapForJson(Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .param p0, "jsonStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 184
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v5, v6

    .line 204
    :cond_0
    :goto_0
    return-object v5

    .line 189
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 191
    .local v1, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 194
    .local v3, "keyIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 195
    .local v5, "valueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 196
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 197
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 198
    .local v4, "value":Ljava/lang/Object;
    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 201
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "keyIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "value":Ljava/lang/Object;
    .end local v5    # "valueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "WeexTrackController.getMapForJson error."

    invoke-static {v7, v0}, Lcom/alibaba/poplayer/utils/PopLayerLog;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v5, v6

    .line 204
    goto :goto_0
.end method


# virtual methods
.method public destroyView()V
    .locals 1

    .prologue
    .line 163
    invoke-super {p0}, Lc8/jXb;->destroyView()V

    .line 165
    :try_start_0
    iget-object v0, p0, Lc8/dZm;->mInstance:Lc8/nVf;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lc8/dZm;->mInstance:Lc8/nVf;

    invoke-virtual {v0}, Lc8/nVf;->destroy()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public displayMe()V
    .locals 5

    .prologue
    .line 150
    :try_start_0
    iget-object v1, p0, Lc8/dZm;->mInnerView:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lc8/dZm;->mInnerView:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lc8/dZm;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    invoke-super {p0}, Lc8/jXb;->displayMe()V

    .line 159
    :goto_0
    return-void

    .line 154
    :cond_0
    const-string/jumbo v1, "WeexTrackController.displayMe.error.mInnerView.null"

    invoke-static {v1}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Loge(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "WeexTrackController.displayMe error."

    invoke-static {v1, v0}, Lcom/alibaba/poplayer/utils/PopLayerLog;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getInfo()Landroid/text/SpannableStringBuilder;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 210
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 212
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    :try_start_0
    invoke-virtual {p0}, Lc8/dZm;->getPopRequest()Lc8/yXb;

    move-result-object v2

    check-cast v2, Lc8/lYb;

    invoke-virtual {v2}, Lc8/lYb;->getConfigItem()Lcom/alibaba/poplayer/trigger/BaseConfigItem;

    move-result-object v1

    .line 213
    .local v1, "configItem":Lcom/alibaba/poplayer/trigger/BaseConfigItem;
    const-string/jumbo v2, "UUID"

    iget-object v3, v1, Lcom/alibaba/poplayer/trigger/BaseConfigItem;->uuid:Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Lc8/bZm;

    invoke-direct {v5, p0, v1}, Lc8/bZm;-><init>(Lc8/dZm;Lcom/alibaba/poplayer/trigger/BaseConfigItem;)V

    invoke-static {v0, v2, v3, v4, v5}, Lc8/kXb;->addInfo(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 223
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

    .line 226
    iget-object v2, p0, Lc8/dZm;->weexSource:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 227
    const-string/jumbo v2, "weexSource"

    const-string/jumbo v3, "viewSrouce"

    const/4 v4, 0x0

    new-instance v5, Lc8/cZm;

    invoke-direct {v5, p0}, Lc8/cZm;-><init>(Lc8/dZm;)V

    invoke-static {v0, v2, v3, v4, v5}, Lc8/kXb;->addInfo(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 240
    :goto_0
    const-string/jumbo v2, "ModalThreshold"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "%.2f"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lc8/dZm;->getPenetrateAlpha()I

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

    .line 241
    invoke-virtual {p0}, Lc8/dZm;->getPenetrateAlpha()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 240
    invoke-static {v0, v2, v3, v4, v5}, Lc8/kXb;->addInfo(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 245
    .end local v1    # "configItem":Lcom/alibaba/poplayer/trigger/BaseConfigItem;
    :goto_1
    return-object v0

    .line 238
    .restart local v1    # "configItem":Lcom/alibaba/poplayer/trigger/BaseConfigItem;
    :cond_0
    const-string/jumbo v2, "WeexUrl"

    iget-object v3, p0, Lc8/dZm;->weexUrl:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v2, v3, v4, v5}, Lc8/kXb;->addInfo(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 243
    .end local v1    # "configItem":Lcom/alibaba/poplayer/trigger/BaseConfigItem;
    :catch_0
    move-exception v2

    const-string/jumbo v2, "Error"

    const-string/jumbo v3, "getInfo Error"

    invoke-static {v0, v2, v3, v9, v9}, Lc8/kXb;->addInfo(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public init(Landroid/content/Context;Lc8/lYb;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "request"    # Lc8/lYb;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 59
    sget-boolean v2, Lc8/dZm;->isRegisterTrackingModule:Z

    if-nez v2, :cond_0

    .line 61
    :try_start_0
    const-string/jumbo v2, "PopLayerTrackingEventModule"

    const-class v3, Lc8/pZm;

    invoke-static {v2, v3}, Lc8/bVf;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z
    :try_end_0
    .catch Lcom/taobao/weex/common/WXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    sput-boolean v4, Lc8/dZm;->isRegisterTrackingModule:Z

    .line 68
    :cond_0
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lc8/dZm;->setVisibility(I)V

    .line 69
    const/4 v12, 0x0

    .line 71
    .local v12, "params":Lorg/json/JSONObject;
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lc8/lYb;->getConfigItem()Lcom/alibaba/poplayer/trigger/BaseConfigItem;

    move-result-object v2

    iget-object v13, v2, Lcom/alibaba/poplayer/trigger/BaseConfigItem;->params:Ljava/lang/String;

    .line 72
    .local v13, "paramsStr":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-eqz v2, :cond_2

    .line 73
    const/4 v12, 0x0

    .line 79
    :goto_1
    if-nez v12, :cond_3

    .line 145
    .end local v13    # "paramsStr":Ljava/lang/String;
    :cond_1
    :goto_2
    return-void

    .line 62
    .end local v12    # "params":Lorg/json/JSONObject;
    :catch_0
    move-exception v10

    .line 63
    .local v10, "e":Lcom/taobao/weex/common/WXException;
    invoke-virtual {v10}, Lcom/taobao/weex/common/WXException;->printStackTrace()V

    goto :goto_0

    .line 75
    .end local v10    # "e":Lcom/taobao/weex/common/WXException;
    .restart local v12    # "params":Lorg/json/JSONObject;
    .restart local v13    # "paramsStr":Ljava/lang/String;
    :cond_2
    :try_start_2
    new-instance v11, Lorg/json/JSONTokener;

    invoke-direct {v11, v13}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 76
    .local v11, "jsonParser":Lorg/json/JSONTokener;
    invoke-virtual {v11}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/json/JSONObject;

    move-object v12, v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 82
    .end local v11    # "jsonParser":Lorg/json/JSONTokener;
    .end local v13    # "paramsStr":Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 83
    .local v10, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "PopLayerView init fail."

    invoke-static {v2, v10}, Lcom/alibaba/poplayer/utils/PopLayerLog;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    .end local v10    # "e":Ljava/lang/Throwable;
    :cond_3
    new-instance v2, Lc8/nVf;

    invoke-direct {v2, p1}, Lc8/nVf;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lc8/dZm;->mInstance:Lc8/nVf;

    .line 86
    iget-object v2, p0, Lc8/dZm;->mInstance:Lc8/nVf;

    new-instance v3, Lc8/aZm;

    invoke-direct {v3, p0}, Lc8/aZm;-><init>(Lc8/dZm;)V

    invoke-virtual {v2, v3}, Lc8/nVf;->registerRenderListener(Lc8/NUf;)V

    .line 123
    :try_start_3
    const-string/jumbo v2, "weexSource"

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lc8/dZm;->weexSource:Ljava/lang/String;

    .line 124
    iget-object v2, p0, Lc8/dZm;->weexSource:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 126
    const-string/jumbo v2, "WeexTrackController.load weexSource: {%s}."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lc8/dZm;->weexSource:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    iget-object v2, p0, Lc8/dZm;->mInstance:Lc8/nVf;

    const-string/jumbo v3, "groupId"

    invoke-virtual {p0, v3}, Lc8/dZm;->getAttachInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lc8/dZm;->weexSource:Ljava/lang/String;

    const/4 v5, 0x0

    check-cast v5, Ljava/util/Map;

    const/4 v6, 0x0

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0}, Lc8/dZm;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lc8/dZm;->getHeight()I

    move-result v8

    sget-object v9, Lcom/taobao/weex/common/WXRenderStrategy;->APPEND_ASYNC:Lcom/taobao/weex/common/WXRenderStrategy;

    invoke-virtual/range {v2 .. v9}, Lc8/nVf;->render(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;IILcom/taobao/weex/common/WXRenderStrategy;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 138
    :catch_2
    move-exception v10

    .line 139
    .restart local v10    # "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "WeexTrackController.createView error."

    invoke-static {v2, v10}, Lcom/alibaba/poplayer/utils/PopLayerLog;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 141
    invoke-virtual/range {p2 .. p2}, Lc8/lYb;->getConfigItem()Lcom/alibaba/poplayer/trigger/BaseConfigItem;

    move-result-object v2

    iget-boolean v2, v2, Lcom/alibaba/poplayer/trigger/BaseConfigItem;->showCloseBtn:Z

    invoke-virtual {p0, v2}, Lc8/dZm;->showCloseButton(Z)V

    .line 144
    invoke-virtual/range {p2 .. p2}, Lc8/lYb;->getConfigItem()Lcom/alibaba/poplayer/trigger/BaseConfigItem;

    move-result-object v2

    iget-wide v2, v2, Lcom/alibaba/poplayer/trigger/BaseConfigItem;->modalThreshold:D

    const-wide v4, 0x406fe00000000000L    # 255.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {p0, v2}, Lc8/dZm;->setPenetrateAlpha(I)V

    goto/16 :goto_2

    .line 130
    .end local v10    # "e":Ljava/lang/Throwable;
    :cond_4
    :try_start_4
    const-string/jumbo v2, "weexUrl"

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lc8/dZm;->weexUrl:Ljava/lang/String;

    .line 131
    iget-object v2, p0, Lc8/dZm;->weexUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 133
    const-string/jumbo v2, "WeexTrackController.load url: {%s}."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lc8/dZm;->weexUrl:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    iget-object v2, p0, Lc8/dZm;->mInstance:Lc8/nVf;

    const-string/jumbo v3, "groupId"

    invoke-virtual {p0, v3}, Lc8/dZm;->getAttachInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lc8/dZm;->weexUrl:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Lc8/dZm;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lc8/dZm;->getHeight()I

    move-result v8

    sget-object v9, Lcom/taobao/weex/common/WXRenderStrategy;->APPEND_ASYNC:Lcom/taobao/weex/common/WXRenderStrategy;

    invoke-virtual/range {v2 .. v9}, Lc8/nVf;->renderByUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;IILcom/taobao/weex/common/WXRenderStrategy;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_2
.end method

.method public bridge synthetic init(Landroid/content/Context;Lc8/yXb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 41
    check-cast p2, Lc8/lYb;

    invoke-virtual {p0, p1, p2}, Lc8/dZm;->init(Landroid/content/Context;Lc8/lYb;)V

    return-void
.end method

.method public onReceiveEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "operationName"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;

    .prologue
    .line 176
    :try_start_0
    const-string/jumbo v1, "WeexTrackController.onReceiveEvent{%s,%s}."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    iget-object v1, p0, Lc8/dZm;->mInstance:Lc8/nVf;

    invoke-static {p2}, Lc8/dZm;->getMapForJson(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lc8/nVf;->fireGlobalEventCallback(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_0
    return-void

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "WeexTrackController.onReceiveEvent error."

    invoke-static {v1, v0}, Lcom/alibaba/poplayer/utils/PopLayerLog;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
