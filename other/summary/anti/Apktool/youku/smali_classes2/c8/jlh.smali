.class public Lc8/jlh;
.super Lc8/fSh;
.source "YoukuInitDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/llh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppConfigMtopListenerImp"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/llh;


# direct methods
.method private constructor <init>(Lc8/llh;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lc8/jlh;->this$0:Lc8/llh;

    invoke-direct {p0}, Lc8/fSh;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/llh;Lc8/ilh;)V
    .locals 0
    .param p1, "x0"    # Lc8/llh;
    .param p2, "x1"    # Lc8/ilh;

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lc8/jlh;-><init>(Lc8/llh;)V

    return-void
.end method


# virtual methods
.method protected localload(Ljava/lang/String;)V
    .locals 7
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 149
    sget-object v1, Lc8/VLj;->context:Landroid/content/Context;

    const-string/jumbo v2, "playMaxCount"

    invoke-static {v1, v2, v3}, Lc8/oen;->getPreference(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 150
    .local v0, "playMaxCount":I
    if-lez v0, :cond_0

    .line 151
    sput v0, Lc8/Izm;->TIMESTOHINT:I

    .line 158
    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lc8/klh;

    invoke-direct {v2, v6}, Lc8/klh;-><init>(Z)V

    const-wide/16 v4, 0x4e20

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 160
    const-string/jumbo v1, "player_qxd"

    invoke-static {v1, v3}, Lc8/VLj;->getPreferenceInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lc8/Efh;->setPlayer_qxd(I)V

    .line 163
    const-string/jumbo v1, "barrage"

    const-string/jumbo v2, "barrage"

    invoke-static {v2, v6}, Lc8/VLj;->getPreferenceInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lc8/VLj;->savePreference(Ljava/lang/String;I)V

    .line 164
    iget-object v1, p0, Lc8/jlh;->this$0:Lc8/llh;

    invoke-virtual {v1}, Lc8/llh;->doCMSPlayPageSwitch()V

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "==YoukuInitDataManager==onFailed==VipPayAPI.isVip()==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lc8/uAo;->isVip()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    invoke-static {}, Lc8/uAo;->isVip()Z

    move-result v1

    sput-boolean v1, Lc8/Dfh;->isVipUserTemp:Z

    .line 167
    iget-object v1, p0, Lc8/jlh;->this$0:Lc8/llh;

    invoke-static {v1}, Lc8/llh;->access$1000(Lc8/llh;)V

    .line 168
    return-void
.end method

.method protected parseJson(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "dataJsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 108
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 109
    .local v2, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 110
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "api_name":Ljava/lang/String;
    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 113
    :pswitch_0
    iget-object v3, p0, Lc8/jlh;->this$0:Lc8/llh;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc8/AIb;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "config"

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/llh;->access$100(Lc8/llh;Lcom/alibaba/fastjson/JSONArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 141
    .end local v0    # "api_name":Ljava/lang/String;
    .end local v2    # "it":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .line 142
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "YoukuInitDataManager"

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    return-void

    .line 111
    .restart local v0    # "api_name":Ljava/lang/String;
    .restart local v2    # "it":Ljava/util/Iterator;
    :sswitch_0
    :try_start_1
    const-string/jumbo v4, "push_protect_info"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v4, "installed_app_protocol"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v4, "init_update_info"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v4, "skin"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v4, "player_h265"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v4, "player_hardware_acceleration"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x5

    goto :goto_1

    :sswitch_6
    const-string/jumbo v4, "player_uplus"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x6

    goto/16 :goto_1

    :sswitch_7
    const-string/jumbo v4, "init_other_info"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x7

    goto/16 :goto_1

    :sswitch_8
    const-string/jumbo v4, "init_reminder_info"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v3, 0x8

    goto/16 :goto_1

    .line 116
    :pswitch_1
    iget-object v3, p0, Lc8/jlh;->this$0:Lc8/llh;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc8/AIb;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "config"

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/llh;->access$200(Lc8/llh;Lcom/alibaba/fastjson/JSONArray;)V

    goto/16 :goto_0

    .line 119
    :pswitch_2
    iget-object v3, p0, Lc8/jlh;->this$0:Lc8/llh;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc8/AIb;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "config"

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/llh;->access$300(Lc8/llh;Lcom/alibaba/fastjson/JSONObject;)V

    goto/16 :goto_0

    .line 122
    :pswitch_3
    iget-object v3, p0, Lc8/jlh;->this$0:Lc8/llh;

    const-string/jumbo v4, "skin"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/llh;->access$400(Lc8/llh;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 125
    :pswitch_4
    iget-object v3, p0, Lc8/jlh;->this$0:Lc8/llh;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc8/AIb;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "config"

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/llh;->access$500(Lc8/llh;Lcom/alibaba/fastjson/JSONObject;)V

    goto/16 :goto_0

    .line 128
    :pswitch_5
    iget-object v3, p0, Lc8/jlh;->this$0:Lc8/llh;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc8/AIb;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "config"

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/llh;->access$600(Lc8/llh;Lcom/alibaba/fastjson/JSONObject;)V

    goto/16 :goto_0

    .line 131
    :pswitch_6
    iget-object v3, p0, Lc8/jlh;->this$0:Lc8/llh;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc8/AIb;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "config"

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/llh;->access$700(Lc8/llh;Lcom/alibaba/fastjson/JSONObject;)V

    goto/16 :goto_0

    .line 134
    :pswitch_7
    iget-object v3, p0, Lc8/jlh;->this$0:Lc8/llh;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc8/AIb;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "config"

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/llh;->access$800(Lc8/llh;Lcom/alibaba/fastjson/JSONObject;)V

    goto/16 :goto_0

    .line 137
    :pswitch_8
    iget-object v3, p0, Lc8/jlh;->this$0:Lc8/llh;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc8/AIb;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "config"

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/llh;->access$900(Lc8/llh;Lcom/alibaba/fastjson/JSONArray;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 111
    nop

    :sswitch_data_0
    .sparse-switch
        -0x6ed45a4b -> :sswitch_2
        -0x1a654167 -> :sswitch_5
        0x35e57d -> :sswitch_3
        0x57edcb1 -> :sswitch_6
        0x6edc523 -> :sswitch_0
        0x1d76ef6c -> :sswitch_8
        0x212ecba7 -> :sswitch_4
        0x6bb6c39b -> :sswitch_1
        0x6e84af0c -> :sswitch_7
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
    .end packed-switch
.end method
