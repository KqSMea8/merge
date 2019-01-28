.class public Lc8/wqb;
.super Lc8/MXf;
.source "WXAliPayModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lc8/MXf;-><init>()V

    return-void
.end method

.method private notSupported(Lc8/EWf;)V
    .locals 3
    .param p1, "failure"    # Lc8/EWf;

    .prologue
    .line 39
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 40
    .local v0, "msg":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "result"

    const-string/jumbo v2, "WX_NOT_SUPPORTED"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-interface {p1, v0}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    .line 42
    return-void
.end method


# virtual methods
.method public tradePay(Lcom/alibaba/fastjson/JSONObject;Lc8/EWf;Lc8/EWf;)V
    .locals 3
    .param p1, "options"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "successCb"    # Lc8/EWf;
    .param p3, "failureCb"    # Lc8/EWf;
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    .line 19
    invoke-static {}, Lc8/Fob;->getInstance()Lc8/Fob;

    move-result-object v1

    invoke-virtual {v1}, Lc8/Fob;->getAliPayModuleAdapter()Lc8/Job;

    move-result-object v0

    .line 20
    .local v0, "alipay":Lc8/Job;
    if-eqz v0, :cond_0

    .line 21
    iget-object v1, p0, Lc8/wqb;->mWXSDKInstance:Lc8/nVf;

    new-instance v2, Lc8/vqb;

    invoke-direct {v2, p0, p2, p3}, Lc8/vqb;-><init>(Lc8/wqb;Lc8/EWf;Lc8/EWf;)V

    invoke-interface {v0, v1, p1, v2}, Lc8/Job;->tradePay(Lc8/nVf;Lcom/alibaba/fastjson/JSONObject;Lc8/Kob;)V

    .line 35
    :goto_0
    return-void

    .line 33
    :cond_0
    invoke-direct {p0, p3}, Lc8/wqb;->notSupported(Lc8/EWf;)V

    goto :goto_0
.end method
