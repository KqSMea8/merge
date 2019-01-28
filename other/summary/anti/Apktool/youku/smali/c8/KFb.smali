.class public Lc8/KFb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;

.field final synthetic c:Landroid/webkit/WebView;

.field final synthetic d:Lc8/HFb;


# direct methods
.method constructor <init>(Lc8/HFb;Ljava/lang/String;Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;Landroid/webkit/WebView;)V
    .locals 0

    iput-object p1, p0, Lc8/KFb;->d:Lc8/HFb;

    iput-object p2, p0, Lc8/KFb;->a:Ljava/lang/String;

    iput-object p3, p0, Lc8/KFb;->b:Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;

    iput-object p4, p0, Lc8/KFb;->c:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lc8/KFb;->a:Ljava/lang/String;

    invoke-static {v0}, Lc8/THb;->a(Ljava/lang/String;)Lc8/SHb;

    move-result-object v1

    const-string/jumbo v2, "AlibcAlipay"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "alipay\u652f\u4ed8\u5931\u8d25\uff0c\u4fe1\u606f\u4e3a\uff1a"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_2

    iget-object v0, v1, Lc8/SHb;->c:Ljava/lang/String;

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lc8/oIb;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lc8/KFb;->d:Lc8/HFb;

    const-string/jumbo v3, "160102"

    if-eqz v1, :cond_3

    iget-object v0, v1, Lc8/SHb;->c:Ljava/lang/String;

    :goto_1
    invoke-static {v2, v3, v0}, Lc8/HFb;->a(Lc8/HFb;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lc8/KFb;->b:Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/KFb;->b:Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;

    const/16 v2, 0x271a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "alipay\u652f\u4ed8\u5931\u8d25\uff0c\u4fe1\u606f\u4e3a\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, v1, Lc8/SHb;->c:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;->onFailure(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lc8/KFb;->c:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    sget-object v0, Lc8/vFb;->MY_ORDERS_URL:Ljava/lang/String;

    if-nez v0, :cond_4

    :cond_1
    :goto_2
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "\u652f\u4ed8\u5931\u8d25"

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lc8/KFb;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lc8/vFb;->MY_ORDERS_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lc8/vFb;->MY_ORDERS_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "?tabCode=%s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lc8/EHb;->ORDER_TYPE:[Ljava/lang/String;

    aget-object v3, v3, v5

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lc8/KFb;->c:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lc8/KFb;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lc8/vFb;->MY_ORDERS_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lc8/KFb;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lc8/KFb;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/KFb;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_2
.end method
