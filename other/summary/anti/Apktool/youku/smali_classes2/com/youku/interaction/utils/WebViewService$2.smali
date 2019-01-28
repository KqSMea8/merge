.class public Lcom/youku/interaction/utils/WebViewService$2;
.super Ljava/lang/Object;
.source "WebViewService.java"

# interfaces
.implements Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ETh;->initBcWeb(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/ETh;

.field public final synthetic val$weakWebView:Ljava/lang/ref/WeakReference;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/ETh;Ljava/lang/ref/WeakReference;)V
    .locals 0
    .param p1, "this$0"    # Lc8/ETh;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 140
    iput-object p1, p0, Lcom/youku/interaction/utils/WebViewService$2;->this$0:Lc8/ETh;

    iput-object p2, p0, Lcom/youku/interaction/utils/WebViewService$2;->val$weakWebView:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 5
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 166
    const/16 v3, 0x271a

    if-ne v3, p1, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 169
    :try_start_0
    const-string/jumbo v3, "4000"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/youku/interaction/utils/WebViewService$2;->this$0:Lc8/ETh;

    invoke-static {v3}, Lc8/ETh;->access$300(Lc8/ETh;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 170
    iget-object v3, p0, Lcom/youku/interaction/utils/WebViewService$2;->this$0:Lc8/ETh;

    invoke-static {v3}, Lc8/ETh;->access$300(Lc8/ETh;)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "loadUrl":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/youku/interaction/utils/WebViewService$2;->val$weakWebView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    .line 179
    .local v2, "webView":Landroid/webkit/WebView;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    .line 180
    new-instance v3, Lc8/ATh;

    invoke-direct {v3, p0, v0}, Lc8/ATh;-><init>(Lcom/youku/interaction/utils/WebViewService$2;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 224
    .end local v0    # "loadUrl":Ljava/lang/String;
    .end local v2    # "webView":Landroid/webkit/WebView;
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/youku/interaction/utils/WebViewService$2;->this$0:Lc8/ETh;

    invoke-static {v3}, Lc8/ETh;->access$200(Lc8/ETh;)V

    .line 225
    return-void

    .line 171
    :cond_1
    :try_start_1
    const-string/jumbo v3, "6001"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/youku/interaction/utils/WebViewService$2;->this$0:Lc8/ETh;

    invoke-static {v3}, Lc8/ETh;->access$300(Lc8/ETh;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 172
    iget-object v3, p0, Lcom/youku/interaction/utils/WebViewService$2;->this$0:Lc8/ETh;

    invoke-static {v3}, Lc8/ETh;->access$300(Lc8/ETh;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "loadUrl":Ljava/lang/String;
    goto :goto_0

    .line 173
    .end local v0    # "loadUrl":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/youku/interaction/utils/WebViewService$2;->this$0:Lc8/ETh;

    invoke-static {v3}, Lc8/ETh;->access$100(Lc8/ETh;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/youku/interaction/utils/WebViewService$2;->this$0:Lc8/ETh;

    invoke-static {v3}, Lc8/ETh;->access$400(Lc8/ETh;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 174
    iget-object v3, p0, Lcom/youku/interaction/utils/WebViewService$2;->this$0:Lc8/ETh;

    invoke-static {v3}, Lc8/ETh;->access$100(Lc8/ETh;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .restart local v0    # "loadUrl":Ljava/lang/String;
    goto :goto_0

    .line 176
    .end local v0    # "loadUrl":Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "loadUrl":Ljava/lang/String;
    goto :goto_0

    .line 193
    .end local v0    # "loadUrl":Ljava/lang/String;
    :cond_4
    const/16 v3, 0x2719

    if-ne v3, p1, :cond_0

    iget-object v3, p0, Lcom/youku/interaction/utils/WebViewService$2;->this$0:Lc8/ETh;

    invoke-static {v3}, Lc8/ETh;->access$100(Lc8/ETh;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 194
    iget-object v3, p0, Lcom/youku/interaction/utils/WebViewService$2;->this$0:Lc8/ETh;

    invoke-static {v3}, Lc8/ETh;->access$100(Lc8/ETh;)Ljava/lang/String;

    move-result-object v0

    .line 196
    .restart local v0    # "loadUrl":Ljava/lang/String;
    :try_start_2
    iget-object v3, p0, Lcom/youku/interaction/utils/WebViewService$2;->this$0:Lc8/ETh;

    invoke-static {v3}, Lc8/ETh;->access$500(Lc8/ETh;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/interaction/utils/WebViewService$2;->this$0:Lc8/ETh;

    invoke-static {v4}, Lc8/ETh;->access$100(Lc8/ETh;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 197
    .local v1, "matcher":Ljava/util/regex/Matcher;
    iget-object v3, p0, Lcom/youku/interaction/utils/WebViewService$2;->val$weakWebView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    .line 198
    .restart local v2    # "webView":Landroid/webkit/WebView;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    if-eqz v2, :cond_5

    .line 199
    new-instance v3, Lc8/BTh;

    invoke-direct {v3, p0, v0}, Lc8/BTh;-><init>(Lcom/youku/interaction/utils/WebViewService$2;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    .line 209
    :cond_5
    iget-object v3, p0, Lcom/youku/interaction/utils/WebViewService$2;->this$0:Lc8/ETh;

    invoke-static {v3}, Lc8/ETh;->access$400(Lc8/ETh;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    .line 210
    new-instance v3, Lc8/CTh;

    invoke-direct {v3, p0, v0}, Lc8/CTh;-><init>(Lcom/youku/interaction/utils/WebViewService$2;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    .end local v2    # "webView":Landroid/webkit/WebView;
    :catch_0
    move-exception v3

    goto/16 :goto_1

    .line 193
    .end local v0    # "loadUrl":Ljava/lang/String;
    :catch_1
    move-exception v3

    goto/16 :goto_1
.end method

.method public onTradeSuccess(Lcom/alibaba/baichuan/android/trade/model/TradeResult;)V
    .locals 4
    .param p1, "tradeResult"    # Lcom/alibaba/baichuan/android/trade/model/TradeResult;

    .prologue
    .line 144
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/alibaba/baichuan/android/trade/model/TradeResult;->resultType:Lcom/alibaba/baichuan/android/trade/model/ResultType;

    sget-object v3, Lcom/alibaba/baichuan/android/trade/model/ResultType;->TYPEPAY:Lcom/alibaba/baichuan/android/trade/model/ResultType;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/youku/interaction/utils/WebViewService$2;->this$0:Lc8/ETh;

    .line 145
    invoke-static {v2}, Lc8/ETh;->access$100(Lc8/ETh;)Ljava/lang/String;

    move-result-object v2

    .line 144
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 146
    iget-object v2, p0, Lcom/youku/interaction/utils/WebViewService$2;->this$0:Lc8/ETh;

    invoke-static {v2}, Lc8/ETh;->access$100(Lc8/ETh;)Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "loadUrl":Ljava/lang/String;
    iget-object v2, p0, Lcom/youku/interaction/utils/WebViewService$2;->val$weakWebView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    .line 148
    .local v1, "webView":Landroid/webkit/WebView;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    .line 149
    new-instance v2, Lc8/zTh;

    invoke-direct {v2, p0, v0}, Lc8/zTh;-><init>(Lcom/youku/interaction/utils/WebViewService$2;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    .line 160
    .end local v0    # "loadUrl":Ljava/lang/String;
    .end local v1    # "webView":Landroid/webkit/WebView;
    :cond_0
    iget-object v2, p0, Lcom/youku/interaction/utils/WebViewService$2;->this$0:Lc8/ETh;

    invoke-static {v2}, Lc8/ETh;->access$200(Lc8/ETh;)V

    .line 161
    return-void
.end method
