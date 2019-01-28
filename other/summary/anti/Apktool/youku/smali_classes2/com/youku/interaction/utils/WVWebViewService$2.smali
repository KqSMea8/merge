.class public final Lcom/youku/interaction/utils/WVWebViewService$2;
.super Ljava/lang/Object;
.source "WVWebViewService.java"

# interfaces
.implements Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/wTh;->initBcWeb(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$weakWebView:Ljava/lang/ref/WeakReference;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 87
    iput-object p1, p0, Lcom/youku/interaction/utils/WVWebViewService$2;->val$weakWebView:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 5
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 113
    const/16 v3, 0x271a

    if-ne v3, p1, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 116
    :try_start_0
    const-string/jumbo v3, "4000"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lc8/wTh;->access$400()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 117
    invoke-static {}, Lc8/wTh;->access$400()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "loadUrl":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/youku/interaction/utils/WVWebViewService$2;->val$weakWebView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/taobao/windvane/webview/WVWebView;

    .line 126
    .local v2, "webView":Landroid/taobao/windvane/webview/WVWebView;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    .line 127
    new-instance v3, Lc8/sTh;

    invoke-direct {v3, p0, v0}, Lc8/sTh;-><init>(Lcom/youku/interaction/utils/WVWebViewService$2;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/taobao/windvane/webview/WVWebView;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 171
    .end local v0    # "loadUrl":Ljava/lang/String;
    .end local v2    # "webView":Landroid/taobao/windvane/webview/WVWebView;
    :cond_0
    :goto_1
    invoke-static {}, Lc8/wTh;->access$300()V

    .line 172
    return-void

    .line 118
    :cond_1
    :try_start_1
    const-string/jumbo v3, "6001"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lc8/wTh;->access$400()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 119
    invoke-static {}, Lc8/wTh;->access$400()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "loadUrl":Ljava/lang/String;
    goto :goto_0

    .line 120
    .end local v0    # "loadUrl":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lc8/wTh;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lc8/wTh;->access$500()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 121
    invoke-static {}, Lc8/wTh;->access$200()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .restart local v0    # "loadUrl":Ljava/lang/String;
    goto :goto_0

    .line 123
    .end local v0    # "loadUrl":Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "loadUrl":Ljava/lang/String;
    goto :goto_0

    .line 140
    .end local v0    # "loadUrl":Ljava/lang/String;
    :cond_4
    const/16 v3, 0x2719

    if-ne v3, p1, :cond_0

    invoke-static {}, Lc8/wTh;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 141
    invoke-static {}, Lc8/wTh;->access$200()Ljava/lang/String;

    move-result-object v0

    .line 143
    .restart local v0    # "loadUrl":Ljava/lang/String;
    :try_start_2
    const-string/jumbo v3, "(taobao|taopiaopiao)\\.com/app/movie.+\\?.*"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-static {}, Lc8/wTh;->access$200()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 144
    .local v1, "matcher":Ljava/util/regex/Matcher;
    iget-object v3, p0, Lcom/youku/interaction/utils/WVWebViewService$2;->val$weakWebView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/taobao/windvane/webview/WVWebView;

    .line 145
    .restart local v2    # "webView":Landroid/taobao/windvane/webview/WVWebView;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    if-eqz v2, :cond_5

    .line 146
    new-instance v3, Lc8/tTh;

    invoke-direct {v3, p0, v0}, Lc8/tTh;-><init>(Lcom/youku/interaction/utils/WVWebViewService$2;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/taobao/windvane/webview/WVWebView;->post(Ljava/lang/Runnable;)Z

    .line 156
    :cond_5
    invoke-static {}, Lc8/wTh;->access$500()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    .line 157
    new-instance v3, Lc8/uTh;

    invoke-direct {v3, p0, v0}, Lc8/uTh;-><init>(Lcom/youku/interaction/utils/WVWebViewService$2;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/taobao/windvane/webview/WVWebView;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    .end local v2    # "webView":Landroid/taobao/windvane/webview/WVWebView;
    :catch_0
    move-exception v3

    goto/16 :goto_1

    .line 140
    .end local v0    # "loadUrl":Ljava/lang/String;
    :catch_1
    move-exception v3

    goto/16 :goto_1
.end method

.method public onTradeSuccess(Lcom/alibaba/baichuan/android/trade/model/TradeResult;)V
    .locals 4
    .param p1, "tradeResult"    # Lcom/alibaba/baichuan/android/trade/model/TradeResult;

    .prologue
    .line 91
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/alibaba/baichuan/android/trade/model/TradeResult;->resultType:Lcom/alibaba/baichuan/android/trade/model/ResultType;

    sget-object v3, Lcom/alibaba/baichuan/android/trade/model/ResultType;->TYPEPAY:Lcom/alibaba/baichuan/android/trade/model/ResultType;

    if-ne v2, v3, :cond_0

    .line 92
    invoke-static {}, Lc8/wTh;->access$200()Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 93
    invoke-static {}, Lc8/wTh;->access$200()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "loadUrl":Ljava/lang/String;
    iget-object v2, p0, Lcom/youku/interaction/utils/WVWebViewService$2;->val$weakWebView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/taobao/windvane/webview/WVWebView;

    .line 95
    .local v1, "webView":Landroid/taobao/windvane/webview/WVWebView;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    .line 96
    new-instance v2, Lc8/rTh;

    invoke-direct {v2, p0, v0}, Lc8/rTh;-><init>(Lcom/youku/interaction/utils/WVWebViewService$2;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/taobao/windvane/webview/WVWebView;->post(Ljava/lang/Runnable;)Z

    .line 107
    .end local v0    # "loadUrl":Ljava/lang/String;
    .end local v1    # "webView":Landroid/taobao/windvane/webview/WVWebView;
    :cond_0
    invoke-static {}, Lc8/wTh;->access$300()V

    .line 108
    return-void
.end method
