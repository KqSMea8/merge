.class public Lc8/YYf;
.super Ljava/lang/Object;
.source "Actions.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lc8/XYf;
    .locals 8
    .param p0, "actionName"    # Ljava/lang/String;
    .param p1, "args"    # Lcom/alibaba/fastjson/JSONArray;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 55
    const/4 v3, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 126
    :cond_1
    :goto_1
    return-object v2

    .line 55
    :sswitch_0
    const-string/jumbo v7, "createBody"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v3, v4

    goto :goto_0

    :sswitch_1
    const-string/jumbo v7, "updateAttrs"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v3, v5

    goto :goto_0

    :sswitch_2
    const-string/jumbo v7, "updateStyle"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v3, v6

    goto :goto_0

    :sswitch_3
    const-string/jumbo v7, "removeElement"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v3, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v7, "addElement"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v7, "moveElement"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v3, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v7, "addEvent"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v3, 0x6

    goto :goto_0

    :sswitch_7
    const-string/jumbo v7, "removeEvent"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v3, 0x7

    goto :goto_0

    :sswitch_8
    const-string/jumbo v7, "createFinish"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v3, 0x8

    goto :goto_0

    :sswitch_9
    const-string/jumbo v7, "refreshFinish"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_a
    const-string/jumbo v7, "updateFinish"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v7, "scrollToElement"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v3, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v7, "addRule"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v3, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v7, "getComponentRect"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v3, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string/jumbo v7, "invokeMethod"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v3, 0xe

    goto/16 :goto_0

    .line 57
    :pswitch_0
    if-eqz p1, :cond_1

    .line 60
    new-instance v2, Lc8/fZf;

    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lc8/fZf;-><init>(Lcom/alibaba/fastjson/JSONObject;)V

    goto/16 :goto_1

    .line 62
    :pswitch_1
    if-eqz p1, :cond_1

    .line 65
    new-instance v2, Lc8/tZf;

    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lc8/tZf;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto/16 :goto_1

    .line 67
    :pswitch_2
    if-eqz p1, :cond_1

    .line 70
    new-instance v2, Lc8/vZf;

    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lc8/vZf;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto/16 :goto_1

    .line 72
    :pswitch_3
    if-eqz p1, :cond_1

    .line 75
    new-instance v2, Lc8/pZf;

    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lc8/pZf;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 77
    :pswitch_4
    if-eqz p1, :cond_1

    .line 80
    new-instance v2, Lc8/ZYf;

    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson/JSONArray;->getInteger(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lc8/ZYf;-><init>(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 82
    :pswitch_5
    if-eqz p1, :cond_1

    .line 85
    new-instance v2, Lc8/mZf;

    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson/JSONArray;->getInteger(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lc8/mZf;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 87
    :pswitch_6
    if-eqz p1, :cond_1

    .line 90
    new-instance v2, Lc8/aZf;

    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lc8/aZf;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 92
    :pswitch_7
    if-eqz p1, :cond_1

    .line 95
    new-instance v2, Lc8/qZf;

    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lc8/qZf;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 97
    :pswitch_8
    new-instance v2, Lc8/hZf;

    invoke-direct {v2}, Lc8/hZf;-><init>()V

    goto/16 :goto_1

    .line 99
    :pswitch_9
    new-instance v2, Lc8/nZf;

    invoke-direct {v2}, Lc8/nZf;-><init>()V

    goto/16 :goto_1

    .line 101
    :pswitch_a
    new-instance v2, Lc8/uZf;

    invoke-direct {v2}, Lc8/uZf;-><init>()V

    goto/16 :goto_1

    .line 103
    :pswitch_b
    if-eqz p1, :cond_1

    .line 106
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "ref":Ljava/lang/String;
    :goto_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    if-lt v3, v6, :cond_3

    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 108
    .local v0, "options":Lcom/alibaba/fastjson/JSONObject;
    :goto_3
    new-instance v2, Lc8/rZf;

    invoke-direct {v2, v1, v0}, Lc8/rZf;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto/16 :goto_1

    .end local v0    # "options":Lcom/alibaba/fastjson/JSONObject;
    .end local v1    # "ref":Ljava/lang/String;
    :cond_2
    move-object v1, v2

    .line 106
    goto :goto_2

    .restart local v1    # "ref":Ljava/lang/String;
    :cond_3
    move-object v0, v2

    .line 107
    goto :goto_3

    .line 110
    .end local v1    # "ref":Ljava/lang/String;
    :pswitch_c
    if-eqz p1, :cond_1

    .line 113
    new-instance v2, Lc8/bZf;

    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lc8/bZf;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto/16 :goto_1

    .line 115
    :pswitch_d
    if-eqz p1, :cond_1

    .line 118
    new-instance v2, Lc8/jZf;

    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lc8/jZf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 120
    :pswitch_e
    if-eqz p1, :cond_1

    .line 123
    new-instance v2, Lc8/kZf;

    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson/JSONArray;->getJSONArray(I)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lc8/kZf;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)V

    goto/16 :goto_1

    .line 55
    nop

    :sswitch_data_0
    .sparse-switch
        -0x5b4a4215 -> :sswitch_5
        -0x4ed6c944 -> :sswitch_a
        -0x4b16b987 -> :sswitch_6
        -0x4476b4c3 -> :sswitch_c
        -0x2ca0f84c -> :sswitch_b
        -0x273a3887 -> :sswitch_e
        -0x23d4aea7 -> :sswitch_1
        -0x22d6f598 -> :sswitch_2
        -0x1bdb1e28 -> :sswitch_3
        -0x12ecc38a -> :sswitch_7
        0xea0771b -> :sswitch_4
        0x2314e0cb -> :sswitch_d
        0x44be6caf -> :sswitch_8
        0x519470be -> :sswitch_0
        0x7f603b4e -> :sswitch_9
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public static getAddElement(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)Lc8/fYf;
    .locals 1
    .param p0, "data"    # Lcom/alibaba/fastjson/JSONObject;
    .param p1, "parentRef"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 187
    new-instance v0, Lc8/ZYf;

    invoke-direct {v0, p0, p1, p2}, Lc8/ZYf;-><init>(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static getAddEvent(Ljava/lang/String;Ljava/lang/String;)Lc8/fYf;
    .locals 1
    .param p0, "ref"    # Ljava/lang/String;
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 195
    new-instance v0, Lc8/aZf;

    invoke-direct {v0, p0, p1}, Lc8/aZf;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static getAnimationAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lc8/fYf;
    .locals 1
    .param p0, "ref"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "animation"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "callBack"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 205
    new-instance v0, Lc8/eZf;

    invoke-direct {v0, p0, p1, p2}, Lc8/eZf;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getAnimationAction(Ljava/lang/String;Lc8/Kag;)Lc8/rYf;
    .locals 1
    .param p0, "ref"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "animationBean"    # Lc8/Kag;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 210
    new-instance v0, Lc8/eZf;

    invoke-direct {v0, p0, p1}, Lc8/eZf;-><init>(Ljava/lang/String;Lc8/Kag;)V

    return-object v0
.end method

.method public static getAnimationAction(Ljava/lang/String;Lc8/Kag;Ljava/lang/String;)Lc8/rYf;
    .locals 1
    .param p0, "ref"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "animationBean"    # Lc8/Kag;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "callback"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 216
    new-instance v0, Lc8/eZf;

    invoke-direct {v0, p0, p1, p2}, Lc8/eZf;-><init>(Ljava/lang/String;Lc8/Kag;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getCreateBody(Lcom/alibaba/fastjson/JSONObject;)Lc8/fYf;
    .locals 1
    .param p0, "data"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 140
    new-instance v0, Lc8/fZf;

    invoke-direct {v0, p0}, Lc8/fZf;-><init>(Lcom/alibaba/fastjson/JSONObject;)V

    return-object v0
.end method

.method public static getCreateFinish()Lc8/fYf;
    .locals 1

    .prologue
    .line 164
    new-instance v0, Lc8/hZf;

    invoke-direct {v0}, Lc8/hZf;-><init>()V

    return-object v0
.end method

.method public static getExecutableRenderAction(Ljava/lang/Runnable;)Lc8/fYf;
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 225
    new-instance v0, Lc8/iZf;

    invoke-direct {v0, p0}, Lc8/iZf;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static getInvokeMethod(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lc8/fYf;
    .locals 1
    .param p0, "ref"    # Ljava/lang/String;
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "args"    # Lcom/alibaba/fastjson/JSONArray;

    .prologue
    .line 131
    new-instance v0, Lc8/kZf;

    invoke-direct {v0, p0, p1, p2}, Lc8/kZf;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)V

    return-object v0
.end method

.method public static getModuleInvocationAction(Lc8/MXf;Lcom/alibaba/fastjson/JSONArray;Lc8/DWf;)Lc8/fYf;
    .locals 1
    .param p0, "wxModule"    # Lc8/MXf;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "args"    # Lcom/alibaba/fastjson/JSONArray;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "invoker"    # Lc8/DWf;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 221
    new-instance v0, Lc8/lZf;

    invoke-direct {v0, p0, p1, p2}, Lc8/lZf;-><init>(Lc8/MXf;Lcom/alibaba/fastjson/JSONArray;Lc8/DWf;)V

    return-object v0
.end method

.method public static getMoveElement(Ljava/lang/String;Ljava/lang/String;I)Lc8/fYf;
    .locals 1
    .param p0, "ref"    # Ljava/lang/String;
    .param p1, "parentref"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 176
    new-instance v0, Lc8/mZf;

    invoke-direct {v0, p0, p1, p2}, Lc8/mZf;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static getRefreshFinish()Lc8/fYf;
    .locals 1

    .prologue
    .line 156
    new-instance v0, Lc8/nZf;

    invoke-direct {v0}, Lc8/nZf;-><init>()V

    return-object v0
.end method

.method public static getReloadPage(Ljava/lang/String;Z)Lc8/fYf;
    .locals 1
    .param p0, "instanceId"    # Ljava/lang/String;
    .param p1, "relaod"    # Z

    .prologue
    .line 229
    new-instance v0, Lc8/oZf;

    invoke-direct {v0, p0, p1}, Lc8/oZf;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static getRemoveElement(Ljava/lang/String;)Lc8/fYf;
    .locals 1
    .param p0, "ref"    # Ljava/lang/String;

    .prologue
    .line 172
    new-instance v0, Lc8/pZf;

    invoke-direct {v0, p0}, Lc8/pZf;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getRemoveEvent(Ljava/lang/String;Ljava/lang/String;)Lc8/fYf;
    .locals 1
    .param p0, "ref"    # Ljava/lang/String;
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 199
    new-instance v0, Lc8/qZf;

    invoke-direct {v0, p0, p1}, Lc8/qZf;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static getUpdateAttrs(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lc8/fYf;
    .locals 1
    .param p0, "ref"    # Ljava/lang/String;
    .param p1, "data"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 168
    new-instance v0, Lc8/tZf;

    invoke-direct {v0, p0, p1}, Lc8/tZf;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    return-object v0
.end method

.method public static getUpdateFinish()Lc8/fYf;
    .locals 1

    .prologue
    .line 148
    new-instance v0, Lc8/uZf;

    invoke-direct {v0}, Lc8/uZf;-><init>()V

    return-object v0
.end method

.method public static getUpdateStyle(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Z)Lc8/fYf;
    .locals 1
    .param p0, "ref"    # Ljava/lang/String;
    .param p1, "data"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "byPesudo"    # Z

    .prologue
    .line 191
    new-instance v0, Lc8/vZf;

    invoke-direct {v0, p0, p1, p2}, Lc8/vZf;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Z)V

    return-object v0
.end method
