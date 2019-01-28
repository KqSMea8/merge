.class public Landroid/taobao/windvane/jsbridge/WVCallBackContext;
.super Ljava/lang/Object;
.source "WVCallBackContext.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WVCallBackContext"


# instance fields
.field private failedCallBack:Lc8/OD;

.field private mAction:Ljava/lang/String;

.field private mNotiNavtive:Z

.field private methodname:Ljava/lang/String;

.field private objectname:Ljava/lang/String;

.field private succeedCallBack:Lc8/PD;

.field private token:Ljava/lang/String;

.field private webview:Landroid/taobao/windvane/webview/IWVWebView;


# direct methods
.method public constructor <init>(Landroid/taobao/windvane/webview/IWVWebView;)V
    .locals 1
    .param p1, "webview"    # Landroid/taobao/windvane/webview/IWVWebView;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->mNotiNavtive:Z

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->mAction:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->webview:Landroid/taobao/windvane/webview/IWVWebView;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "webview"    # Landroid/taobao/windvane/webview/IWVWebView;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "objectname"    # Ljava/lang/String;
    .param p4, "methodname"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->mNotiNavtive:Z

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->mAction:Ljava/lang/String;

    .line 43
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->webview:Landroid/taobao/windvane/webview/IWVWebView;

    .line 44
    iput-object p2, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->token:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->objectname:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->methodname:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/PD;Lc8/OD;)V
    .locals 1
    .param p1, "webView"    # Landroid/taobao/windvane/webview/IWVWebView;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "objectName"    # Ljava/lang/String;
    .param p4, "methodName"    # Ljava/lang/String;
    .param p5, "succeedCallBack"    # Lc8/PD;
    .param p6, "failedCallBack"    # Lc8/OD;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->mNotiNavtive:Z

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->mAction:Ljava/lang/String;

    .line 50
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->webview:Landroid/taobao/windvane/webview/IWVWebView;

    .line 51
    iput-object p2, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->token:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->objectname:Ljava/lang/String;

    .line 53
    iput-object p4, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->methodname:Ljava/lang/String;

    .line 54
    iput-object p6, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->failedCallBack:Lc8/OD;

    .line 55
    iput-object p5, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->succeedCallBack:Lc8/PD;

    .line 56
    return-void
.end method

.method public static synthetic access$000(Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->objectname:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$100(Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->methodname:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$200(Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Landroid/taobao/windvane/webview/IWVWebView;
    .locals 1
    .param p0, "x0"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->webview:Landroid/taobao/windvane/webview/IWVWebView;

    return-object v0
.end method

.method private static callback(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "webview"    # Landroid/taobao/windvane/webview/IWVWebView;
    .param p1, "js"    # Ljava/lang/String;
    .param p2, "retString"    # Ljava/lang/String;

    .prologue
    .line 204
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lc8/OH;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 206
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :cond_0
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo p2, "{}"

    .line 213
    :cond_1
    invoke-static {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->formatJsonString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 215
    const/4 v2, 0x1

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object p1

    .line 216
    move-object v1, p1

    .line 218
    .local v1, "jsCode":Ljava/lang/String;
    :try_start_2
    invoke-interface {p0}, Landroid/taobao/windvane/webview/IWVWebView;->getView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Lc8/cE;

    invoke-direct {v3, p0, v1}, Lc8/cE;-><init>(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 231
    .end local v1    # "jsCode":Ljava/lang/String;
    :goto_1
    return-void

    .line 208
    :catch_0
    move-exception v2

    const-string/jumbo v2, "WVCallBackContext"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "return param is not a valid json!\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 224
    .restart local v1    # "jsCode":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v2, "WVCallBackContext"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 228
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "jsCode":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 229
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "WVCallBackContext"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "callback error. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static fireEvent(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "webview"    # Landroid/taobao/windvane/webview/IWVWebView;
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "eventParam"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 90
    const-string/jumbo v0, "WVCallBackContext"

    const-string/jumbo v1, "call fireEvent "

    invoke-static {v0, v1}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-static {}, Lc8/qH;->getInstance()Lc8/qH;

    move-result-object v0

    const/16 v1, 0xbc5

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v5, p1, v2}, Lc8/qH;->onEvent(ILandroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;

    .line 92
    const-string/jumbo v0, "window.WindVane && window.WindVane.fireEvent(\'%s\', \'%%s\', %s);"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object v5, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->callback(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method private static formatJsonString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 245
    const-string/jumbo v0, "\u2028"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    :try_start_0
    const-string/jumbo v0, "\u2028"

    const-string/jumbo v1, "\\u2028"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p0

    .line 252
    :cond_0
    :goto_0
    const-string/jumbo v0, "\u2029"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    :try_start_1
    const-string/jumbo v0, "\u2029"

    const-string/jumbo v1, "\\u2029"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p0

    .line 259
    :cond_1
    :goto_1
    const-string/jumbo v0, "\\"

    const-string/jumbo v1, "\\\\"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\'"

    const-string/jumbo v2, "\\\'"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public error()V
    .locals 1

    .prologue
    .line 154
    const-string/jumbo v0, "{}"

    invoke-virtual {p0, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public error(Lc8/kE;)V
    .locals 2
    .param p1, "result"    # Lc8/kE;

    .prologue
    .line 161
    if-eqz p1, :cond_0

    .line 162
    invoke-virtual {p1}, Lc8/kE;->toJsonString()Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "resultStr":Ljava/lang/String;
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->failedCallBack:Lc8/OD;

    if-eqz v1, :cond_1

    .line 164
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->failedCallBack:Lc8/OD;

    invoke-interface {v1, v0}, Lc8/OD;->fail(Ljava/lang/String;)V

    .line 169
    .end local v0    # "resultStr":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 167
    .restart local v0    # "resultStr":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public error(Ljava/lang/String;)V
    .locals 9
    .param p1, "retString"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 177
    const-string/jumbo v1, "WVCallBackContext"

    const-string/jumbo v2, "call error "

    invoke-static {v1, v2}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->failedCallBack:Lc8/OD;

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->failedCallBack:Lc8/OD;

    invoke-interface {v1, p1}, Lc8/OD;->fail(Ljava/lang/String;)V

    .line 200
    :goto_0
    return-void

    .line 182
    :cond_0
    invoke-static {}, Lc8/YF;->getJsBridgeMonitor()Lc8/IF;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 184
    :try_start_0
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->webview:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-interface {v1}, Landroid/taobao/windvane/webview/IWVWebView;->getView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lc8/bE;

    invoke-direct {v2, p0}, Lc8/bE;-><init>(Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :cond_1
    :goto_1
    iget-boolean v1, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->mNotiNavtive:Z

    if-eqz v1, :cond_2

    .line 195
    invoke-static {}, Lc8/qH;->getInstance()Lc8/qH;

    move-result-object v1

    const/16 v2, 0xbc4

    iget-object v3, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->webview:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-interface {v3}, Landroid/taobao/windvane/webview/IWVWebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->mAction:Ljava/lang/String;

    aput-object v5, v4, v6

    aput-object p1, v4, v7

    invoke-virtual {v1, v2, v8, v3, v4}, Lc8/qH;->onEvent(ILandroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;

    .line 196
    iput-boolean v6, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->mNotiNavtive:Z

    .line 197
    iput-object v8, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->mAction:Ljava/lang/String;

    .line 199
    :cond_2
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->webview:Landroid/taobao/windvane/webview/IWVWebView;

    const-string/jumbo v2, "javascript:window.WindVane&&window.WindVane.onFailure(%s,\'%%s\');"

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->token:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->callback(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "WVCallBackContext"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public fireEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "eventName"    # Ljava/lang/String;

    .prologue
    .line 97
    const-string/jumbo v0, "{}"

    invoke-virtual {p0, p1, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public fireEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "eventParam"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 83
    const-string/jumbo v0, "WVCallBackContext"

    const-string/jumbo v1, "call fireEvent "

    invoke-static {v0, v1}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lc8/qH;->getInstance()Lc8/qH;

    move-result-object v0

    const/16 v1, 0xbc5

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->mAction:Ljava/lang/String;

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    aput-object p2, v2, v6

    invoke-virtual {v0, v1, v2}, Lc8/qH;->onEvent(I[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;

    .line 85
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->webview:Landroid/taobao/windvane/webview/IWVWebView;

    const-string/jumbo v1, "window.WindVane && window.WindVane.fireEvent(\'%s\', \'%%s\', %s);"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v4

    iget-object v3, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->token:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->callback(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getWebview()Landroid/taobao/windvane/webview/IWVWebView;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->webview:Landroid/taobao/windvane/webview/IWVWebView;

    return-object v0
.end method

.method public setNeedfireNativeEvent(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "flag"    # Z

    .prologue
    .line 237
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->mAction:Ljava/lang/String;

    .line 238
    iput-boolean p2, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->mNotiNavtive:Z

    .line 239
    const-string/jumbo v0, "WVCallBackContext"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNeedfireNativeEvent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->token:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setWebview(Landroid/taobao/windvane/webview/IWVWebView;)V
    .locals 0
    .param p1, "webview"    # Landroid/taobao/windvane/webview/IWVWebView;

    .prologue
    .line 63
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->webview:Landroid/taobao/windvane/webview/IWVWebView;

    .line 64
    return-void
.end method

.method public success()V
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lc8/kE;->RET_SUCCESS:Lc8/kE;

    invoke-virtual {p0, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V

    .line 103
    return-void
.end method

.method public success(Lc8/kE;)V
    .locals 2
    .param p1, "result"    # Lc8/kE;

    .prologue
    .line 109
    if-eqz p1, :cond_0

    .line 110
    invoke-virtual {p1}, Lc8/kE;->setSuccess()V

    .line 111
    invoke-virtual {p1}, Lc8/kE;->toJsonString()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "resultStr":Ljava/lang/String;
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->succeedCallBack:Lc8/PD;

    if-eqz v1, :cond_1

    .line 113
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->succeedCallBack:Lc8/PD;

    invoke-interface {v1, v0}, Lc8/PD;->succeed(Ljava/lang/String;)V

    .line 118
    .end local v0    # "resultStr":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 116
    .restart local v0    # "resultStr":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public success(Ljava/lang/String;)V
    .locals 9
    .param p1, "retString"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 128
    const-string/jumbo v1, "WVCallBackContext"

    const-string/jumbo v2, "call success "

    invoke-static {v1, v2}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->succeedCallBack:Lc8/PD;

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->succeedCallBack:Lc8/PD;

    invoke-interface {v1, p1}, Lc8/PD;->succeed(Ljava/lang/String;)V

    .line 151
    :goto_0
    return-void

    .line 133
    :cond_0
    invoke-static {}, Lc8/YF;->getJsBridgeMonitor()Lc8/IF;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 135
    :try_start_0
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->webview:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-interface {v1}, Landroid/taobao/windvane/webview/IWVWebView;->getView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lc8/aE;

    invoke-direct {v2, p0}, Lc8/aE;-><init>(Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :cond_1
    :goto_1
    iget-boolean v1, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->mNotiNavtive:Z

    if-eqz v1, :cond_2

    .line 146
    invoke-static {}, Lc8/qH;->getInstance()Lc8/qH;

    move-result-object v1

    const/16 v2, 0xbc3

    iget-object v3, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->webview:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-interface {v3}, Landroid/taobao/windvane/webview/IWVWebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->mAction:Ljava/lang/String;

    aput-object v5, v4, v6

    aput-object p1, v4, v7

    invoke-virtual {v1, v2, v8, v3, v4}, Lc8/qH;->onEvent(ILandroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;

    .line 147
    iput-boolean v6, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->mNotiNavtive:Z

    .line 148
    iput-object v8, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->mAction:Ljava/lang/String;

    .line 150
    :cond_2
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->webview:Landroid/taobao/windvane/webview/IWVWebView;

    const-string/jumbo v2, "javascript:window.WindVane&&window.WindVane.onSuccess(%s,\'%%s\');"

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->token:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->callback(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "WVCallBackContext"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
