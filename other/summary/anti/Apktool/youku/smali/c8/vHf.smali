.class public Lc8/vHf;
.super Landroid/content/BroadcastReceiver;
.source "MultiProcessMessageReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MultiProcessMessageReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x0

    .line 24
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "tlog_multi_process_message"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 25
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 26
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v10, "command"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 27
    .local v1, "command":I
    packed-switch v1, :pswitch_data_0

    .line 66
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "command":I
    :cond_0
    :goto_0
    return-void

    .line 29
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v1    # "command":I
    :pswitch_0
    const-string/jumbo v10, "data"

    const-string/jumbo v11, ""

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 30
    .local v5, "str":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 34
    invoke-static {v5}, Lc8/AIb;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 35
    .local v3, "data":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v10, "data"

    invoke-virtual {v3, v10}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 36
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    .line 37
    const-string/jumbo v10, "tlog_destroy"

    invoke-virtual {v3, v10}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 38
    .local v6, "tlogDestroy":Z
    const-string/jumbo v10, "tlog_switch"

    invoke-virtual {v3, v10}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 39
    .local v9, "tlogSwitch":Z
    const-string/jumbo v10, "tlog_level"

    invoke-virtual {v3, v10}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 40
    .local v7, "tlogLevel":Ljava/lang/String;
    const-string/jumbo v10, "tlog_module"

    invoke-virtual {v3, v10}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 41
    .local v8, "tlogModule":Ljava/lang/String;
    invoke-static {}, Lc8/EHf;->getTLogControler()Lc8/tHf;

    move-result-object v2

    .line 42
    .local v2, "controller":Lc8/tHf;
    if-eqz v2, :cond_0

    .line 45
    if-eqz v6, :cond_1

    .line 46
    invoke-static {}, Lc8/EHf;->delete()V

    .line 47
    const/4 v10, 0x1

    invoke-interface {v2, v10}, Lc8/tHf;->destroyLog(Z)V

    .line 48
    invoke-interface {v2, v12}, Lc8/tHf;->openLog(Z)V

    goto :goto_0

    .line 51
    :cond_1
    invoke-interface {v2, v12}, Lc8/tHf;->destroyLog(Z)V

    .line 52
    invoke-interface {v2, v9}, Lc8/tHf;->openLog(Z)V

    .line 53
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 54
    invoke-interface {v2, v7}, Lc8/tHf;->setLogLevel(Ljava/lang/String;)V

    .line 57
    :cond_2
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 58
    invoke-static {v8}, Lc8/IHf;->makeModule(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 59
    .local v4, "module":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/tao/log/LogLevel;>;"
    invoke-interface {v2, v4}, Lc8/tHf;->setModuleFilter(Ljava/util/Map;)V

    goto :goto_0

    .line 27
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
