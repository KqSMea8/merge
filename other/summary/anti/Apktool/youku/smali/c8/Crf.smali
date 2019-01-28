.class public Lc8/Crf;
.super Lc8/RD;
.source "MtopWVPlugin.java"


# static fields
.field public static final API_SERVER_NAME:Ljava/lang/String; = "MtopWVPlugin"

.field public static final ERR_SID_INVALID:Ljava/lang/String; = "ERR_SID_INVALID"

.field public static final FAIL:Ljava/lang/String; = "HY_FAILED"

.field public static final PARAM_ERR:Ljava/lang/String; = "HY_PARAM_ERR"

.field private static final TAG:Ljava/lang/String; = "MtopWVPlugin"

.field public static final TIME_OUT:Ljava/lang/String; = "MP_TIME_OUT"


# instance fields
.field private aNetBridge:Lc8/vrf;

.field private mtopBridge:Lc8/Arf;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lc8/RD;-><init>()V

    .line 24
    new-instance v0, Lc8/Arf;

    invoke-direct {v0, p0}, Lc8/Arf;-><init>(Lc8/Crf;)V

    iput-object v0, p0, Lc8/Crf;->mtopBridge:Lc8/Arf;

    .line 26
    new-instance v0, Lc8/vrf;

    invoke-direct {v0}, Lc8/vrf;-><init>()V

    iput-object v0, p0, Lc8/Crf;->aNetBridge:Lc8/vrf;

    return-void
.end method

.method public static register()V
    .locals 2

    .prologue
    .line 29
    const-string/jumbo v0, "MtopWVPlugin"

    const-class v1, Lc8/Crf;

    invoke-static {v0, v1}, Lc8/jE;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 30
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    const/4 v0, 0x1

    .line 34
    const-string/jumbo v1, "send"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    invoke-virtual {p0, p3, p2}, Lc8/Crf;->send(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    .line 41
    :goto_0
    return v0

    .line 37
    :cond_0
    const-string/jumbo v1, "sendANet"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    iget-object v1, p0, Lc8/Crf;->aNetBridge:Lc8/vrf;

    invoke-virtual {v1, p3, p2}, Lc8/vrf;->sendRequest(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    goto :goto_0

    .line 41
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    :try_start_0
    iget-object v0, p0, Lc8/Crf;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-interface {v0}, Landroid/taobao/windvane/webview/IWVWebView;->getUrl()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 77
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    :try_start_0
    iget-object v0, p0, Lc8/Crf;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-interface {v0}, Landroid/taobao/windvane/webview/IWVWebView;->getUserAgentString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public send(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .param p2, "params"    # Ljava/lang/String;
    .annotation runtime Lc8/lE;
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lc8/Crf;->mtopBridge:Lc8/Arf;

    invoke-virtual {v0, p1, p2}, Lc8/Arf;->sendRequest(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public wvCallback(Lc8/Brf;)V
    .locals 2
    .param p1, "result"    # Lc8/Brf;

    .prologue
    .line 55
    invoke-virtual {p1}, Lc8/Brf;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p1}, Lc8/Brf;->getJsContext()Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-result-object v0

    invoke-virtual {p1}, Lc8/Brf;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Ljava/lang/String;)V

    .line 61
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lc8/Brf;->setJsContext(Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    .line 62
    return-void

    .line 58
    :cond_0
    invoke-virtual {p1}, Lc8/Brf;->getJsContext()Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-result-object v0

    invoke-virtual {p1}, Lc8/Brf;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Ljava/lang/String;)V

    goto :goto_0
.end method
