.class public Lc8/ZD;
.super Ljava/lang/Object;
.source "WVBridgeEngine.java"


# static fields
.field public static final WINDVANE_CORE_JS:Ljava/lang/String; = "(function(f){try{if(f.__windvane__.nativeCall){var h=f.__windvane__||(f.__windvane__={});var c=\"wvapi:\"+(Math.floor(Math.random()*(1<<16))),a=0,b={},g=function(j){if(j&&typeof j==\"string\"){try{return JSON.parse(j)}catch(i){return{ret:\"HY_RESULT_PARSE_ERROR\"}}}else{return j||{}}};h.call=function(i,m,l,e,k){if(typeof l!=\"function\"){l=null}if(typeof e!=\"function\"){e=null}var j=c+(a++);b[j]={s:l,f:e,};if(k>0){b[j].t=setTimeout(function(){h.onFailure(j,{ret:\"HY_TIMEOUT\"})},k)}if(typeof m!=\"string\"){m=JSON.stringify(m)}f.__windvane__.nativeCall(i,m,j,location.href)};h.find=function(i,j){var e=b[i];if(e.t){clearTimeout(e.t);delete e.t}if(!j){delete b[i]}return e};h.onSuccess=function(j,e,k){var i=h.find(j,k).s;if(i){i(g(e))}};h.onFailure=function(j,e){var i=h.find(j,false).f;if(i){i(g(e))}}}}catch(d){}})(window);"

.field private static final sExecutors:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private mWebview:Landroid/taobao/windvane/webview/IWVWebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lc8/ZD;->sExecutors:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/taobao/windvane/webview/IWVWebView;)V
    .locals 1
    .param p1, "webview"    # Landroid/taobao/windvane/webview/IWVWebView;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/ZD;->mWebview:Landroid/taobao/windvane/webview/IWVWebView;

    .line 23
    iput-object p1, p0, Lc8/ZD;->mWebview:Landroid/taobao/windvane/webview/IWVWebView;

    .line 24
    return-void
.end method

.method static synthetic access$000(Lc8/ZD;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/ZD;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lc8/ZD;->formatJsonString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lc8/ZD;)Landroid/taobao/windvane/webview/IWVWebView;
    .locals 1
    .param p0, "x0"    # Lc8/ZD;

    .prologue
    .line 15
    iget-object v0, p0, Lc8/ZD;->mWebview:Landroid/taobao/windvane/webview/IWVWebView;

    return-object v0
.end method

.method private formatJsonString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 85
    const-string/jumbo v0, "\u2028"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    :try_start_0
    const-string/jumbo v0, "\u2028"

    const-string/jumbo v1, "\\u2028"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p1

    .line 93
    :cond_0
    :goto_0
    const-string/jumbo v0, "\u2029"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    :try_start_1
    const-string/jumbo v0, "\u2029"

    const-string/jumbo v1, "\\u2029"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p1

    .line 100
    :cond_1
    :goto_1
    const-string/jumbo v0, "\\"

    const-string/jumbo v1, "\\\\"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

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
.method public nativeCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/String;
    .param p3, "reqId"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation runtime Lcom/uc/webview/export/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 29
    const-string/jumbo v1, "WVJSPlugin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "WVJSPlugin __windvane__ call "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    new-instance v9, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;

    invoke-direct {v9}, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;-><init>()V

    .line 31
    .local v9, "wvCallMethodContext":Landroid/taobao/windvane/jsbridge/WVCallMethodContext;
    const-string/jumbo v1, "\\."

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 32
    .local v7, "names":[Ljava/lang/String;
    if-eqz v7, :cond_0

    array-length v1, v7

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 33
    const/4 v1, 0x0

    aget-object v1, v7, v1

    iput-object v1, v9, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->objectName:Ljava/lang/String;

    .line 34
    const/4 v1, 0x1

    aget-object v1, v7, v1

    iput-object v1, v9, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->methodName:Ljava/lang/String;

    .line 35
    iget-object v1, p0, Lc8/ZD;->mWebview:Landroid/taobao/windvane/webview/IWVWebView;

    iput-object v1, v9, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->webview:Landroid/taobao/windvane/webview/IWVWebView;

    .line 36
    iput-object p3, v9, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->token:Ljava/lang/String;

    .line 37
    iput-object p2, v9, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->params:Ljava/lang/String;

    .line 38
    new-instance v1, Lc8/WD;

    invoke-direct {v1, p0, p3}, Lc8/WD;-><init>(Lc8/ZD;Ljava/lang/String;)V

    iput-object v1, v9, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->succeedCallBack:Lc8/PD;

    .line 50
    new-instance v1, Lc8/XD;

    invoke-direct {v1, p0, p3}, Lc8/XD;-><init>(Lc8/ZD;Ljava/lang/String;)V

    iput-object v1, v9, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->failedCallBack:Lc8/OD;

    .line 62
    sget-object v1, Lc8/ZD;->sExecutors:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lc8/YD;

    invoke-direct {v2, p0, v9, p4}, Lc8/YD;-><init>(Lc8/ZD;Landroid/taobao/windvane/jsbridge/WVCallMethodContext;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 74
    :goto_0
    return-void

    .line 69
    :cond_0
    new-instance v8, Lc8/kE;

    invoke-direct {v8}, Lc8/kE;-><init>()V

    .line 70
    .local v8, "result":Lc8/kE;
    const-string/jumbo v1, "HY_NO_HANDLER"

    invoke-virtual {v8, v1}, Lc8/kE;->setResult(Ljava/lang/String;)V

    .line 71
    new-instance v0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    iget-object v1, p0, Lc8/ZD;->mWebview:Landroid/taobao/windvane/webview/IWVWebView;

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    move-object v2, p3

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;-><init>(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/PD;Lc8/OD;)V

    .line 72
    .local v0, "callback":Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    invoke-virtual {v0, v8}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto :goto_0
.end method

.method public version()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation runtime Lcom/uc/webview/export/JavascriptInterface;
    .end annotation

    .prologue
    .line 80
    const-string/jumbo v0, "WVJSPlugin"

    const-string/jumbo v1, "WVJSPlugin __windvane__ version 8.3.0"

    invoke-static {v0, v1}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string/jumbo v0, "8.3.0"

    return-object v0
.end method
