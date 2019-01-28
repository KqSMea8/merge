.class public Lc8/CGb;
.super Ljava/lang/Object;

# interfaces
.implements Lc8/rGb;


# instance fields
.field a:Lc8/IGb;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc8/sGb;)Z
    .locals 3

    invoke-static {}, Lc8/cHb;->getInstance()Lc8/cHb;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc8/cHb;->shouldUseAlipay(Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Lc8/IGb;

    iget-object v1, p1, Lc8/sGb;->e:Lc8/NGb;

    iget-object v1, v1, Lc8/NGb;->c:Lcom/alibaba/baichuan/android/trade/b/a;

    iget-object v1, v1, Lcom/alibaba/baichuan/android/trade/b/a;->e:Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;

    sget-object v2, Lc8/vFb;->TRADE_APLIPAY_URLS:[Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lc8/IGb;-><init>(Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;[Ljava/lang/String;)V

    iput-object v0, p0, Lc8/CGb;->a:Lc8/IGb;

    iget-object v0, p0, Lc8/CGb;->a:Lc8/IGb;

    iget-object v1, p1, Lc8/sGb;->d:Landroid/webkit/WebView;

    invoke-virtual {p1}, Lc8/sGb;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc8/IGb;->a(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
