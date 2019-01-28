.class public Lc8/yrf;
.super Ljava/lang/Object;
.source "MtopBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Arf;->sendRequest(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Arf;

.field final synthetic val$frontEndParams:Lc8/wrf;

.field final synthetic val$wvCallBackContext:Landroid/taobao/windvane/jsbridge/WVCallBackContext;


# direct methods
.method constructor <init>(Lc8/Arf;Lc8/wrf;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lc8/yrf;->this$0:Lc8/Arf;

    iput-object p2, p0, Lc8/yrf;->val$frontEndParams:Lc8/wrf;

    iput-object p3, p0, Lc8/yrf;->val$wvCallBackContext:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 92
    :try_start_0
    iget-object v3, p0, Lc8/yrf;->this$0:Lc8/Arf;

    iget-object v4, p0, Lc8/yrf;->val$frontEndParams:Lc8/wrf;

    invoke-static {v3, v4}, Lc8/Arf;->access$100(Lc8/Arf;Lc8/wrf;)Ljava/util/Map;

    move-result-object v1

    .line 93
    .local v1, "jsParamMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v1, :cond_0

    .line 94
    new-instance v2, Lc8/Brf;

    iget-object v3, p0, Lc8/yrf;->val$wvCallBackContext:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-direct {v2, v3}, Lc8/Brf;-><init>(Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    .line 95
    .local v2, "result":Lc8/Brf;
    const-string/jumbo v3, "ret"

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const-string/jumbo v5, "HY_PARAM_ERR"

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lc8/Brf;->addData(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 96
    iget-object v3, p0, Lc8/yrf;->this$0:Lc8/Arf;

    invoke-static {v3, v2}, Lc8/Arf;->access$200(Lc8/Arf;Lc8/Brf;)V

    .line 107
    .end local v1    # "jsParamMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "result":Lc8/Brf;
    :goto_0
    return-void

    .line 99
    .restart local v1    # "jsParamMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    new-instance v3, Lc8/zrf;

    iget-object v4, p0, Lc8/yrf;->this$0:Lc8/Arf;

    iget-object v5, p0, Lc8/yrf;->val$wvCallBackContext:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-direct {v3, v4, v5}, Lc8/zrf;-><init>(Lc8/Arf;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    invoke-static {v1, v3}, Lc8/YMf;->sendMtopRequest(Ljava/util/Map;Lc8/AMf;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    .end local v1    # "jsParamMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "mtopsdk.MtopBridge"

    const-string/jumbo v4, "send MtopRequest failed"

    invoke-static {v3, v4, v0}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    new-instance v2, Lc8/Brf;

    iget-object v3, p0, Lc8/yrf;->val$wvCallBackContext:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-direct {v2, v3}, Lc8/Brf;-><init>(Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    .line 104
    .restart local v2    # "result":Lc8/Brf;
    const-string/jumbo v3, "ret"

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const-string/jumbo v5, "HY_FAILED"

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lc8/Brf;->addData(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 105
    iget-object v3, p0, Lc8/yrf;->this$0:Lc8/Arf;

    invoke-static {v3, v2}, Lc8/Arf;->access$200(Lc8/Arf;Lc8/Brf;)V

    goto :goto_0
.end method
