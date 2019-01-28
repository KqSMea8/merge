.class public Lc8/ZC;
.super Ljava/lang/Object;
.source "UCNetworkDelegate.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final CHANGE_WEBVIEW_URL:I = 0x114

.field private static final RECEIVE_RESPONSE_CODE:I = 0x112

.field private static final REMOVE_WEBVIEW_CODE:I = 0x113

.field private static final SEND_REQUEST_CODE:I = 0x111

.field private static final TAG:Ljava/lang/String; = "UCNetworkDelegate"

.field private static instance:Lc8/ZC;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mWebViewsInfoMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lc8/DD;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lc8/ZC;

    invoke-direct {v0}, Lc8/ZC;-><init>()V

    sput-object v0, Lc8/ZC;->instance:Lc8/ZC;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lc8/ZC;->mWebViewsInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 37
    new-instance v0, Lc8/aD;

    const-string/jumbo v1, "Windvane"

    invoke-direct {v0, v1, p0}, Lc8/aD;-><init>(Ljava/lang/String;Landroid/os/Handler$Callback;)V

    invoke-virtual {v0}, Lc8/aD;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lc8/ZC;->mHandler:Landroid/os/Handler;

    .line 38
    return-void
.end method

.method private assembleRequestData(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ref/WeakReference;)V
    .locals 8
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "referrer"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lc8/DD;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 214
    .local p1, "table":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/taobao/windvane/extra/uc/WVUCWebView;>;"
    invoke-virtual {p4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/DD;

    .line 215
    .local v0, "webView":Lc8/DD;
    if-nez v0, :cond_0

    .line 221
    .end local p3    # "referrer":Ljava/lang/String;
    :goto_0
    return-void

    .line 218
    .restart local p3    # "referrer":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "url"

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, ""

    :goto_1
    invoke-virtual {v0, p2, v2, v1}, Lc8/DD;->insertH5MonitorData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string/jumbo v1, "referrer"

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo p3, ""

    .end local p3    # "referrer":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0, p2, v1, p3}, Lc8/DD;->insertH5MonitorData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string/jumbo v2, "start"

    const-string/jumbo v1, "start"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iget-wide v6, v0, Lc8/DD;->mPageStart:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v2, v1}, Lc8/DD;->insertH5MonitorData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .restart local p3    # "referrer":Ljava/lang/String;
    :cond_2
    move-object v1, p2

    .line 218
    goto :goto_1
.end method

.method private assembleResponseData(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/ref/WeakReference;)V
    .locals 8
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lc8/DD;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 256
    .local p1, "table":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/taobao/windvane/extra/uc/WVUCWebView;>;"
    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/DD;

    .line 257
    .local v0, "webView":Lc8/DD;
    if-nez v0, :cond_0

    .line 262
    :goto_0
    return-void

    .line 260
    :cond_0
    const-string/jumbo v2, "statusCode"

    const-string/jumbo v1, "statusCode"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, p2, v2, v1}, Lc8/DD;->insertH5MonitorData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string/jumbo v2, "end"

    const-string/jumbo v1, "end"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iget-wide v6, v0, Lc8/DD;->mPageStart:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v2, v1}, Lc8/DD;->insertH5MonitorData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private dealReceiveResponse(Ljava/lang/Object;)V
    .locals 9
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 225
    instance-of v8, p1, Ljava/util/Hashtable;

    if-eqz v8, :cond_1

    move-object v5, p1

    .line 226
    check-cast v5, Ljava/util/Hashtable;

    .line 227
    .local v5, "table":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v8, "url"

    invoke-virtual {v5, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lc8/dI;->removeScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 228
    .local v6, "url":Ljava/lang/String;
    invoke-static {v6}, Lc8/dI;->removeHashCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 230
    iget-object v8, p0, Lc8/ZC;->mWebViewsInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap;->keys()Ljava/util/Enumeration;

    move-result-object v4

    .line 231
    .local v4, "references":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/ref/WeakReference<Landroid/taobao/windvane/extra/uc/WVUCWebView;>;>;"
    :cond_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 232
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 233
    .local v3, "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/taobao/windvane/extra/uc/WVUCWebView;>;"
    iget-object v8, p0, Lc8/ZC;->mWebViewsInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 234
    .local v0, "currentUrl":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 235
    invoke-direct {p0, v5, v6, v3}, Lc8/ZC;->assembleResponseData(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/ref/WeakReference;)V

    .line 253
    .end local v0    # "currentUrl":Ljava/lang/String;
    .end local v3    # "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/taobao/windvane/extra/uc/WVUCWebView;>;"
    .end local v4    # "references":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/ref/WeakReference<Landroid/taobao/windvane/extra/uc/WVUCWebView;>;>;"
    .end local v5    # "table":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "url":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 240
    .restart local v4    # "references":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/ref/WeakReference<Landroid/taobao/windvane/extra/uc/WVUCWebView;>;>;"
    .restart local v5    # "table":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6    # "url":Ljava/lang/String;
    :cond_2
    iget-object v8, p0, Lc8/ZC;->mWebViewsInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .line 241
    .local v2, "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/ref/WeakReference<Landroid/taobao/windvane/extra/uc/WVUCWebView;>;>;"
    :cond_3
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 242
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 243
    .local v1, "key":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/taobao/windvane/extra/uc/WVUCWebView;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc8/DD;

    .line 244
    .local v7, "webView":Lc8/DD;
    if-eqz v7, :cond_3

    .line 247
    invoke-virtual {v7, v6}, Lc8/DD;->containsH5MonitorData(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 248
    invoke-direct {p0, v5, v6, v1}, Lc8/ZC;->assembleResponseData(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/ref/WeakReference;)V

    goto :goto_0
.end method

.method private dealRemoveWebView(Ljava/lang/Object;)V
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 116
    instance-of v3, p1, Lc8/DD;

    if-eqz v3, :cond_1

    .line 117
    iget-object v3, p0, Lc8/ZC;->mWebViewsInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v3, :cond_1

    .line 118
    iget-object v3, p0, Lc8/ZC;->mWebViewsInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 119
    .local v0, "iterator":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/ref/WeakReference<Landroid/taobao/windvane/extra/uc/WVUCWebView;>;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 120
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 121
    .local v1, "key":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/taobao/windvane/extra/uc/WVUCWebView;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/DD;

    .line 122
    .local v2, "webView":Lc8/DD;
    if-eqz v2, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 123
    iget-object v3, p0, Lc8/ZC;->mWebViewsInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .end local v0    # "iterator":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/ref/WeakReference<Landroid/taobao/windvane/extra/uc/WVUCWebView;>;>;"
    .end local v1    # "key":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/taobao/windvane/extra/uc/WVUCWebView;>;"
    .end local v2    # "webView":Lc8/DD;
    :cond_1
    return-void
.end method

.method private dealSendRequest(Ljava/lang/Object;)V
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 168
    instance-of v5, p1, Ljava/util/Hashtable;

    if-eqz v5, :cond_1

    move-object v3, p1

    .line 169
    check-cast v3, Ljava/util/Hashtable;

    .line 170
    .local v3, "table":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, "url"

    invoke-virtual {v3, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lc8/dI;->removeScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 171
    .local v4, "url":Ljava/lang/String;
    invoke-static {v4}, Lc8/dI;->removeHashCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 172
    const-string/jumbo v5, "referrer"

    invoke-virtual {v3, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lc8/dI;->removeScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, "referrer":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 177
    iget-object v5, p0, Lc8/ZC;->mWebViewsInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 178
    iget-object v5, p0, Lc8/ZC;->mWebViewsInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 179
    .local v0, "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/ref/WeakReference<Landroid/taobao/windvane/extra/uc/WVUCWebView;>;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 180
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 181
    .local v1, "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/taobao/windvane/extra/uc/WVUCWebView;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lc8/ZC;->mWebViewsInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 182
    invoke-direct {p0, v3, v4, v2, v1}, Lc8/ZC;->assembleRequestData(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ref/WeakReference;)V

    .line 211
    .end local v0    # "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/ref/WeakReference<Landroid/taobao/windvane/extra/uc/WVUCWebView;>;>;"
    .end local v1    # "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/taobao/windvane/extra/uc/WVUCWebView;>;"
    .end local v2    # "referrer":Ljava/lang/String;
    .end local v3    # "table":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "url":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 188
    .restart local v2    # "referrer":Ljava/lang/String;
    .restart local v3    # "table":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "url":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lc8/ZC;->mWebViewsInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 189
    .restart local v0    # "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/ref/WeakReference<Landroid/taobao/windvane/extra/uc/WVUCWebView;>;>;"
    :cond_3
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 190
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 191
    .restart local v1    # "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/taobao/windvane/extra/uc/WVUCWebView;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/DD;

    invoke-virtual {v5, v2}, Lc8/DD;->containsH5MonitorData(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 192
    invoke-direct {p0, v3, v4, v2, v1}, Lc8/ZC;->assembleRequestData(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ref/WeakReference;)V

    goto :goto_0

    .line 199
    .end local v0    # "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/ref/WeakReference<Landroid/taobao/windvane/extra/uc/WVUCWebView;>;>;"
    .end local v1    # "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/taobao/windvane/extra/uc/WVUCWebView;>;"
    :cond_4
    iget-object v5, p0, Lc8/ZC;->mWebViewsInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 200
    iget-object v5, p0, Lc8/ZC;->mWebViewsInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 201
    .restart local v0    # "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/ref/WeakReference<Landroid/taobao/windvane/extra/uc/WVUCWebView;>;>;"
    :cond_5
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 202
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 203
    .restart local v1    # "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/taobao/windvane/extra/uc/WVUCWebView;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 204
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lc8/ZC;->mWebViewsInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 205
    invoke-direct {p0, v3, v4, v2, v1}, Lc8/ZC;->assembleRequestData(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ref/WeakReference;)V

    goto :goto_0
.end method

.method private dealUrlChange(Ljava/lang/Object;)V
    .locals 10
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 136
    instance-of v7, p1, Ljava/util/ArrayList;

    if-eqz v7, :cond_1

    move-object v1, p1

    .line 137
    check-cast v1, Ljava/util/ArrayList;

    .line 139
    .local v1, "objectList":Ljava/util/ArrayList;
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lc8/DD;

    if-eqz v7, :cond_1

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 140
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/DD;

    .line 141
    .local v5, "view":Lc8/DD;
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 142
    .local v4, "url":Ljava/lang/String;
    invoke-static {v4}, Lc8/dI;->removeScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 143
    .local v3, "tempUrl":Ljava/lang/String;
    invoke-static {v3}, Lc8/dI;->removeHashCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 145
    iget-object v7, p0, Lc8/ZC;->mWebViewsInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 146
    .local v0, "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/ref/WeakReference<Landroid/taobao/windvane/extra/uc/WVUCWebView;>;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 147
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 148
    .local v2, "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/taobao/windvane/extra/uc/WVUCWebView;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc8/DD;

    .line 149
    .local v6, "webView":Lc8/DD;
    if-eqz v6, :cond_0

    .line 152
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 153
    invoke-virtual {v6}, Lc8/DD;->clearH5MonitorData()V

    .line 154
    iget-object v7, p0, Lc8/ZC;->mWebViewsInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .end local v0    # "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/ref/WeakReference<Landroid/taobao/windvane/extra/uc/WVUCWebView;>;>;"
    .end local v1    # "objectList":Ljava/util/ArrayList;
    .end local v2    # "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/taobao/windvane/extra/uc/WVUCWebView;>;"
    .end local v3    # "tempUrl":Ljava/lang/String;
    .end local v4    # "url":Ljava/lang/String;
    .end local v5    # "view":Lc8/DD;
    .end local v6    # "webView":Lc8/DD;
    :cond_1
    :goto_0
    return-void

    .line 158
    .restart local v0    # "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/ref/WeakReference<Landroid/taobao/windvane/extra/uc/WVUCWebView;>;>;"
    .restart local v1    # "objectList":Ljava/util/ArrayList;
    .restart local v3    # "tempUrl":Ljava/lang/String;
    .restart local v4    # "url":Ljava/lang/String;
    .restart local v5    # "view":Lc8/DD;
    :cond_2
    iget-object v7, p0, Lc8/ZC;->mWebViewsInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v8, Ljava/lang/ref/WeakReference;

    invoke-direct {v8, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v7, v8, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lc8/ZC;
    .locals 2

    .prologue
    .line 32
    const-class v0, Lc8/ZC;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lc8/ZC;->instance:Lc8/ZC;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getBizCodeByUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 270
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 271
    const-string/jumbo v4, ""

    .line 285
    :goto_0
    return-object v4

    .line 273
    :cond_0
    iget-object v4, p0, Lc8/ZC;->mWebViewsInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .line 274
    .local v2, "references":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/ref/WeakReference<Landroid/taobao/windvane/extra/uc/WVUCWebView;>;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 275
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 276
    .local v1, "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/taobao/windvane/extra/uc/WVUCWebView;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/DD;

    .line 277
    .local v3, "webView":Lc8/DD;
    if-eqz v3, :cond_1

    .line 278
    iget-object v4, p0, Lc8/ZC;->mWebViewsInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 279
    .local v0, "dataUrl":Ljava/lang/String;
    invoke-static {v0}, Lc8/dI;->removeQueryParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 280
    const-string/jumbo v4, "UCNetworkDelegate"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Get bizCode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lc8/DD;->bizCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v4, v3, Lc8/DD;->bizCode:Ljava/lang/String;

    goto :goto_0

    .line 285
    .end local v0    # "dataUrl":Ljava/lang/String;
    .end local v1    # "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/taobao/windvane/extra/uc/WVUCWebView;>;"
    .end local v3    # "webView":Lc8/DD;
    :cond_2
    const-string/jumbo v4, ""

    goto :goto_0
.end method

.method public getWebViews()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lc8/DD;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lc8/ZC;->mWebViewsInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 95
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 108
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 97
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lc8/ZC;->dealSendRequest(Ljava/lang/Object;)V

    goto :goto_0

    .line 100
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lc8/ZC;->dealReceiveResponse(Ljava/lang/Object;)V

    goto :goto_0

    .line 103
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lc8/ZC;->dealRemoveWebView(Ljava/lang/Object;)V

    .line 105
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lc8/ZC;->dealUrlChange(Ljava/lang/Object;)V

    goto :goto_0

    .line 95
    :pswitch_data_0
    .packed-switch 0x111
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onFinish(ILjava/lang/String;)V
    .locals 6
    .param p1, "code"    # I
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 79
    iget-object v3, p0, Lc8/ZC;->mWebViewsInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v3, :cond_0

    if-eqz p2, :cond_0

    .line 80
    iget-object v3, p0, Lc8/ZC;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 81
    .local v0, "message":Landroid/os/Message;
    const/16 v3, 0x112

    iput v3, v0, Landroid/os/Message;->what:I

    .line 82
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 83
    .local v1, "requestTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "url"

    invoke-virtual {v1, v3, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, "statusCode":Ljava/lang/String;
    const-string/jumbo v3, "statusCode"

    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string/jumbo v3, "end"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 88
    const-string/jumbo v3, "UCNetworkDelegate"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onFinish : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " statusCode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v3, p0, Lc8/ZC;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 91
    .end local v0    # "message":Landroid/os/Message;
    .end local v1    # "requestTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "statusCode":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onSendRequest(Ljava/util/Map;Ljava/lang/String;)V
    .locals 6
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lc8/ZC;->mWebViewsInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 64
    iget-object v3, p0, Lc8/ZC;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 65
    .local v0, "message":Landroid/os/Message;
    const/16 v3, 0x111

    iput v3, v0, Landroid/os/Message;->what:I

    .line 66
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 67
    .local v2, "requestTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "url"

    invoke-virtual {v2, v3, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string/jumbo v3, "Referer"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 70
    .local v1, "referrer":Ljava/lang/String;
    const-string/jumbo v4, "referrer"

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, ""

    :goto_0
    invoke-virtual {v2, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string/jumbo v3, "start"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 73
    const-string/jumbo v3, "UCNetworkDelegate"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onSendRequest : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " Referer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v3, p0, Lc8/ZC;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 76
    .end local v0    # "message":Landroid/os/Message;
    .end local v1    # "referrer":Ljava/lang/String;
    .end local v2    # "requestTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void

    .restart local v0    # "message":Landroid/os/Message;
    .restart local v1    # "referrer":Ljava/lang/String;
    .restart local v2    # "requestTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    move-object v3, v1

    .line 70
    goto :goto_0
.end method

.method public onUrlChange(Lc8/DD;Ljava/lang/String;)V
    .locals 3
    .param p1, "webView"    # Lc8/DD;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 52
    iget-object v2, p0, Lc8/ZC;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 53
    .local v0, "message":Landroid/os/Message;
    const/16 v2, 0x114

    iput v2, v0, Landroid/os/Message;->what:I

    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v1, "objects":Ljava/util/ArrayList;
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 59
    iget-object v2, p0, Lc8/ZC;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 60
    return-void
.end method

.method public removeWebview(Lc8/DD;)V
    .locals 2
    .param p1, "webView"    # Lc8/DD;

    .prologue
    .line 45
    iget-object v1, p0, Lc8/ZC;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 46
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0x113

    iput v1, v0, Landroid/os/Message;->what:I

    .line 47
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 48
    iget-object v1, p0, Lc8/ZC;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 49
    return-void
.end method
