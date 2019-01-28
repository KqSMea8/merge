.class public Lc8/MD;
.super Lc8/rH;
.source "WVSecurityFilter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lc8/rH;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldInterceptRequest(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;)Lc8/II;
    .locals 4
    .param p1, "view"    # Landroid/taobao/windvane/webview/IWVWebView;
    .param p2, "url"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi",
            "DefaultLocale"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 17
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    const-string/jumbo v0, "WVSecurityFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WVSecurityFilter shouldInterceptRequest url ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x7

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22
    new-instance v0, Lc8/II;

    const-string/jumbo v1, ""

    const-string/jumbo v2, "utf-8"

    invoke-direct {v0, v1, v2, v3, v3}, Lc8/II;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/util/Map;)V

    .line 24
    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0, p1, p2}, Lc8/rH;->shouldInterceptRequest(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;)Lc8/II;

    move-result-object v0

    goto :goto_0
.end method
