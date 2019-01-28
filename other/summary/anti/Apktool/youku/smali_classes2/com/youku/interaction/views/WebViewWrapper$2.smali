.class public Lcom/youku/interaction/views/WebViewWrapper$2;
.super Ljava/lang/Object;
.source "WebViewWrapper.java"

# interfaces
.implements Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/TTh;->loadUrlImpl(Ljava/lang/String;Ljava/util/Map;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lc8/TTh;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/TTh;)V
    .locals 0
    .param p1, "this$0"    # Lc8/TTh;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 472
    iput-object p1, p0, Lcom/youku/interaction/views/WebViewWrapper$2;->this$0:Lc8/TTh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 4
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 508
    const/16 v2, 0x271a

    if-ne v2, p1, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 511
    :try_start_0
    const-string/jumbo v2, "4000"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/youku/interaction/views/WebViewWrapper$2;->this$0:Lc8/TTh;

    invoke-static {v2}, Lc8/TTh;->access$100(Lc8/TTh;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 512
    iget-object v2, p0, Lcom/youku/interaction/views/WebViewWrapper$2;->this$0:Lc8/TTh;

    invoke-static {v2}, Lc8/TTh;->access$100(Lc8/TTh;)Ljava/lang/String;

    move-result-object v0

    .line 520
    .local v0, "loadUrl":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/youku/interaction/views/WebViewWrapper$2;->this$0:Lc8/TTh;

    invoke-static {v2}, Lc8/TTh;->access$600(Lc8/TTh;)Landroid/taobao/windvane/webview/WVWebView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 521
    iget-object v2, p0, Lcom/youku/interaction/views/WebViewWrapper$2;->this$0:Lc8/TTh;

    invoke-static {v2}, Lc8/TTh;->access$600(Lc8/TTh;)Landroid/taobao/windvane/webview/WVWebView;

    move-result-object v2

    new-instance v3, Lc8/LTh;

    invoke-direct {v3, p0, v0}, Lc8/LTh;-><init>(Lcom/youku/interaction/views/WebViewWrapper$2;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/taobao/windvane/webview/WVWebView;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 555
    .end local v0    # "loadUrl":Ljava/lang/String;
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/youku/interaction/views/WebViewWrapper$2;->this$0:Lc8/TTh;

    invoke-static {v2}, Lc8/TTh;->access$1100(Lc8/TTh;)V

    .line 556
    return-void

    .line 513
    :cond_1
    :try_start_1
    const-string/jumbo v2, "6001"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/youku/interaction/views/WebViewWrapper$2;->this$0:Lc8/TTh;

    invoke-static {v2}, Lc8/TTh;->access$100(Lc8/TTh;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 514
    iget-object v2, p0, Lcom/youku/interaction/views/WebViewWrapper$2;->this$0:Lc8/TTh;

    invoke-static {v2}, Lc8/TTh;->access$100(Lc8/TTh;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "loadUrl":Ljava/lang/String;
    goto :goto_0

    .line 515
    .end local v0    # "loadUrl":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/youku/interaction/views/WebViewWrapper$2;->this$0:Lc8/TTh;

    invoke-static {v2}, Lc8/TTh;->access$200(Lc8/TTh;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/youku/interaction/views/WebViewWrapper$2;->this$0:Lc8/TTh;

    invoke-static {v2}, Lc8/TTh;->access$300(Lc8/TTh;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 516
    iget-object v2, p0, Lcom/youku/interaction/views/WebViewWrapper$2;->this$0:Lc8/TTh;

    invoke-static {v2}, Lc8/TTh;->access$200(Lc8/TTh;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .restart local v0    # "loadUrl":Ljava/lang/String;
    goto :goto_0

    .line 518
    .end local v0    # "loadUrl":Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "loadUrl":Ljava/lang/String;
    goto :goto_0

    .line 531
    .end local v0    # "loadUrl":Ljava/lang/String;
    :cond_4
    const/16 v2, 0x2719

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lcom/youku/interaction/views/WebViewWrapper$2;->this$0:Lc8/TTh;

    invoke-static {v2}, Lc8/TTh;->access$200(Lc8/TTh;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 532
    iget-object v2, p0, Lcom/youku/interaction/views/WebViewWrapper$2;->this$0:Lc8/TTh;

    invoke-static {v2}, Lc8/TTh;->access$200(Lc8/TTh;)Ljava/lang/String;

    move-result-object v0

    .line 534
    .restart local v0    # "loadUrl":Ljava/lang/String;
    :try_start_2
    iget-object v2, p0, Lcom/youku/interaction/views/WebViewWrapper$2;->this$0:Lc8/TTh;

    invoke-static {v2}, Lc8/TTh;->access$1200(Lc8/TTh;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/interaction/views/WebViewWrapper$2;->this$0:Lc8/TTh;

    invoke-static {v3}, Lc8/TTh;->access$200(Lc8/TTh;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 535
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/youku/interaction/views/WebViewWrapper$2;->this$0:Lc8/TTh;

    invoke-static {v2}, Lc8/TTh;->access$600(Lc8/TTh;)Landroid/taobao/windvane/webview/WVWebView;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 536
    iget-object v2, p0, Lcom/youku/interaction/views/WebViewWrapper$2;->this$0:Lc8/TTh;

    invoke-static {v2}, Lc8/TTh;->access$600(Lc8/TTh;)Landroid/taobao/windvane/webview/WVWebView;

    move-result-object v2

    new-instance v3, Lc8/MTh;

    invoke-direct {v3, p0, v0}, Lc8/MTh;-><init>(Lcom/youku/interaction/views/WebViewWrapper$2;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/taobao/windvane/webview/WVWebView;->post(Ljava/lang/Runnable;)Z

    .line 543
    :cond_5
    iget-object v2, p0, Lcom/youku/interaction/views/WebViewWrapper$2;->this$0:Lc8/TTh;

    invoke-static {v2}, Lc8/TTh;->access$300(Lc8/TTh;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/youku/interaction/views/WebViewWrapper$2;->this$0:Lc8/TTh;

    invoke-static {v2}, Lc8/TTh;->access$600(Lc8/TTh;)Landroid/taobao/windvane/webview/WVWebView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 544
    iget-object v2, p0, Lcom/youku/interaction/views/WebViewWrapper$2;->this$0:Lc8/TTh;

    invoke-static {v2}, Lc8/TTh;->access$600(Lc8/TTh;)Landroid/taobao/windvane/webview/WVWebView;

    move-result-object v2

    new-instance v3, Lc8/NTh;

    invoke-direct {v3, p0, v0}, Lc8/NTh;-><init>(Lcom/youku/interaction/views/WebViewWrapper$2;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/taobao/windvane/webview/WVWebView;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    :catch_0
    move-exception v2

    goto/16 :goto_1

    .line 531
    .end local v0    # "loadUrl":Ljava/lang/String;
    :catch_1
    move-exception v2

    goto/16 :goto_1
.end method

.method public onTradeSuccess(Lcom/alibaba/baichuan/android/trade/model/TradeResult;)V
    .locals 5
    .param p1, "tradeResult"    # Lcom/alibaba/baichuan/android/trade/model/TradeResult;

    .prologue
    .line 476
    if-eqz p1, :cond_2

    iget-object v3, p1, Lcom/alibaba/baichuan/android/trade/model/TradeResult;->resultType:Lcom/alibaba/baichuan/android/trade/model/ResultType;

    sget-object v4, Lcom/alibaba/baichuan/android/trade/model/ResultType;->TYPEPAY:Lcom/alibaba/baichuan/android/trade/model/ResultType;

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/youku/interaction/views/WebViewWrapper$2;->this$0:Lc8/TTh;

    .line 477
    invoke-static {v3}, Lc8/TTh;->access$200(Lc8/TTh;)Ljava/lang/String;

    move-result-object v3

    .line 476
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 478
    iget-object v3, p0, Lcom/youku/interaction/views/WebViewWrapper$2;->this$0:Lc8/TTh;

    invoke-static {v3}, Lc8/TTh;->access$200(Lc8/TTh;)Ljava/lang/String;

    move-result-object v0

    .line 480
    .local v0, "loadUrl":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/youku/interaction/views/WebViewWrapper$2;->this$0:Lc8/TTh;

    invoke-static {v3}, Lc8/TTh;->access$1000(Lc8/TTh;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/interaction/views/WebViewWrapper$2;->this$0:Lc8/TTh;

    invoke-static {v4}, Lc8/TTh;->access$200(Lc8/TTh;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 481
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 482
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 483
    .local v2, "result":Ljava/lang/String;
    const-string/jumbo v3, "1"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/youku/interaction/views/WebViewWrapper$2;->this$0:Lc8/TTh;

    invoke-virtual {v3}, Lc8/TTh;->getContext()Landroid/content/Context;

    move-result-object v3

    instance-of v3, v3, Lc8/FSh;

    if-eqz v3, :cond_0

    .line 484
    iget-object v3, p0, Lcom/youku/interaction/views/WebViewWrapper$2;->this$0:Lc8/TTh;

    invoke-virtual {v3}, Lc8/TTh;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lc8/FSh;

    invoke-interface {v3}, Lc8/FSh;->bcSkipFinish()V

    .line 487
    .end local v2    # "result":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/youku/interaction/views/WebViewWrapper$2;->this$0:Lc8/TTh;

    invoke-static {v3}, Lc8/TTh;->access$300(Lc8/TTh;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/youku/interaction/views/WebViewWrapper$2;->this$0:Lc8/TTh;

    invoke-virtual {v3}, Lc8/TTh;->getContext()Landroid/content/Context;

    move-result-object v3

    instance-of v3, v3, Lc8/FSh;

    if-eqz v3, :cond_1

    .line 488
    iget-object v3, p0, Lcom/youku/interaction/views/WebViewWrapper$2;->this$0:Lc8/TTh;

    invoke-virtual {v3}, Lc8/TTh;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lc8/FSh;

    invoke-interface {v3}, Lc8/FSh;->bcSkipFinish()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    :cond_1
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/youku/interaction/views/WebViewWrapper$2;->this$0:Lc8/TTh;

    invoke-static {v3}, Lc8/TTh;->access$600(Lc8/TTh;)Landroid/taobao/windvane/webview/WVWebView;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 494
    iget-object v3, p0, Lcom/youku/interaction/views/WebViewWrapper$2;->this$0:Lc8/TTh;

    invoke-static {v3}, Lc8/TTh;->access$600(Lc8/TTh;)Landroid/taobao/windvane/webview/WVWebView;

    move-result-object v3

    new-instance v4, Lc8/KTh;

    invoke-direct {v4, p0, v0}, Lc8/KTh;-><init>(Lcom/youku/interaction/views/WebViewWrapper$2;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/taobao/windvane/webview/WVWebView;->post(Ljava/lang/Runnable;)Z

    .line 502
    .end local v0    # "loadUrl":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/youku/interaction/views/WebViewWrapper$2;->this$0:Lc8/TTh;

    invoke-static {v3}, Lc8/TTh;->access$1100(Lc8/TTh;)V

    .line 503
    return-void

    .restart local v0    # "loadUrl":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_0
.end method
