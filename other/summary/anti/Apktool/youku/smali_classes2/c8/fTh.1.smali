.class public Lc8/fTh;
.super Lc8/VE;
.source "YKDevelopTool.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lc8/VE;-><init>()V

    return-void
.end method


# virtual methods
.method public final configCenterData(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 2
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 19
    new-instance v0, Lc8/kE;

    invoke-direct {v0}, Lc8/kE;-><init>()V

    .line 20
    .local v0, "result":Lc8/kE;
    invoke-static {}, Lc8/Jsf;->getInstance()Lc8/Jsf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/Jsf;->getIndexAndConfigs()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/kE;->setData(Lorg/json/JSONObject;)V

    .line 21
    invoke-virtual {p2, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V

    .line 22
    return-void
.end method

.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 11
    const-string/jumbo v0, "configCenterData"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {p0, p2, p3}, Lc8/fTh;->configCenterData(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    .line 13
    const/4 v0, 0x1

    .line 15
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lc8/VE;->execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z

    move-result v0

    goto :goto_0
.end method
