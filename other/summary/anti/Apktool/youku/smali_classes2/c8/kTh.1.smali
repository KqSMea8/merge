.class public Lc8/kTh;
.super Ljava/lang/Object;
.source "MotuNativeWVEventListener.java"

# interfaces
.implements Lc8/pH;


# instance fields
.field private wv_currentStatus:Ljava/lang/String;

.field private wv_currentUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/kTh;->wv_currentUrl:Ljava/lang/String;

    .line 13
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lc8/kTh;->wv_currentStatus:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public varargs onEvent(ILandroid/taobao/windvane/service/WVEventContext;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;
    .locals 3
    .param p1, "eventId"    # I
    .param p2, "context"    # Landroid/taobao/windvane/service/WVEventContext;
    .param p3, "data"    # [Ljava/lang/Object;

    .prologue
    .line 17
    sparse-switch p1, :sswitch_data_0

    .line 42
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 19
    :sswitch_0
    if-eqz p2, :cond_0

    iget-object v0, p2, Landroid/taobao/windvane/service/WVEventContext;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p2, Landroid/taobao/windvane/service/WVEventContext;->url:Ljava/lang/String;

    iput-object v0, p0, Lc8/kTh;->wv_currentUrl:Ljava/lang/String;

    .line 21
    invoke-static {}, Lc8/XSb;->getInstance()Lc8/XSb;

    move-result-object v0

    const-string/jumbo v1, "wv_currentUrl"

    iget-object v2, p0, Lc8/kTh;->wv_currentUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lc8/XSb;->addNativeHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    :cond_0
    const-string/jumbo v0, "2"

    iput-object v0, p0, Lc8/kTh;->wv_currentStatus:Ljava/lang/String;

    .line 24
    invoke-static {}, Lc8/XSb;->getInstance()Lc8/XSb;

    move-result-object v0

    const-string/jumbo v1, "wv_currentStatus"

    iget-object v2, p0, Lc8/kTh;->wv_currentStatus:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lc8/XSb;->addNativeHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 29
    :sswitch_1
    const-string/jumbo v0, "1"

    iput-object v0, p0, Lc8/kTh;->wv_currentStatus:Ljava/lang/String;

    .line 30
    invoke-static {}, Lc8/XSb;->getInstance()Lc8/XSb;

    move-result-object v0

    const-string/jumbo v1, "wv_currentStatus"

    iget-object v2, p0, Lc8/kTh;->wv_currentStatus:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lc8/XSb;->addNativeHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 34
    :sswitch_2
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lc8/kTh;->wv_currentStatus:Ljava/lang/String;

    .line 35
    invoke-static {}, Lc8/XSb;->getInstance()Lc8/XSb;

    move-result-object v0

    const-string/jumbo v1, "wv_currentStatus"

    iget-object v2, p0, Lc8/kTh;->wv_currentStatus:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lc8/XSb;->addNativeHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 17
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_0
        0xbb9 -> :sswitch_1
        0xbba -> :sswitch_2
        0xbbb -> :sswitch_1
    .end sparse-switch
.end method
