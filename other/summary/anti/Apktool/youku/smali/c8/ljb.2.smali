.class public Lc8/ljb;
.super Ljava/lang/Object;
.source "BridgeCallbackContext.java"


# instance fields
.field public requestId:I

.field public webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-static {p0}, Lc8/ljb;->formatJsonString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lc8/ljb;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lc8/ljb;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lc8/ljb;->callback(Ljava/lang/String;)V

    return-void
.end method

.method private callback(Ljava/lang/String;)V
    .locals 1
    .param p1, "js"    # Ljava/lang/String;

    .prologue
    .line 66
    iget-object v0, p0, Lc8/ljb;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 70
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lc8/ljb;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static formatJsonString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 73
    const-string/jumbo v0, "\\"

    const-string/jumbo v1, "\\\\"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lc8/ljb;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public onFailure(ILjava/lang/String;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 38
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 40
    .local v1, "object":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "code"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 41
    const-string/jumbo v2, "message"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lc8/ljb;->onFailure(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public onFailure(Ljava/lang/String;)V
    .locals 2
    .param p1, "retString"    # Ljava/lang/String;

    .prologue
    .line 49
    sget-object v0, Lc8/Bgb;->executorService:Lc8/shb;

    new-instance v1, Lc8/kjb;

    invoke-direct {v1, p0, p1}, Lc8/kjb;-><init>(Lc8/ljb;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lc8/shb;->postUITask(Ljava/lang/Runnable;)V

    .line 63
    return-void
.end method

.method public success(Ljava/lang/String;)V
    .locals 2
    .param p1, "retString"    # Ljava/lang/String;

    .prologue
    .line 21
    sget-object v0, Lc8/Bgb;->executorService:Lc8/shb;

    new-instance v1, Lc8/jjb;

    invoke-direct {v1, p0, p1}, Lc8/jjb;-><init>(Lc8/ljb;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lc8/shb;->postUITask(Ljava/lang/Runnable;)V

    .line 35
    return-void
.end method
