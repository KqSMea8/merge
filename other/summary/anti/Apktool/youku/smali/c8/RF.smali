.class public Lc8/RF;
.super Ljava/lang/Object;
.source "WVMonitorConfigManager.java"

# interfaces
.implements Lc8/pH;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/SF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PageFinshWVEventListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/PF;)V
    .locals 0
    .param p1, "x0"    # Lc8/PF;

    .prologue
    .line 55
    invoke-direct {p0}, Lc8/RF;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs onEvent(ILandroid/taobao/windvane/service/WVEventContext;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;
    .locals 7
    .param p1, "eventId"    # I
    .param p2, "context"    # Landroid/taobao/windvane/service/WVEventContext;
    .param p3, "objs"    # [Ljava/lang/Object;

    .prologue
    .line 58
    packed-switch p1, :pswitch_data_0

    .line 71
    :cond_0
    :goto_0
    const/4 v4, 0x0

    return-object v4

    .line 61
    :pswitch_0
    :try_start_0
    invoke-static {}, Lc8/SF;->getInstance()Lc8/SF;

    move-result-object v4

    iget-object v4, v4, Lc8/SF;->config:Lc8/OF;

    iget-wide v0, v4, Lc8/OF;->perfCheckSampleRate:D

    .line 62
    .local v0, "rate":D
    invoke-static {}, Lc8/SF;->getInstance()Lc8/SF;

    move-result-object v4

    iget-object v4, v4, Lc8/SF;->config:Lc8/OF;

    iget-object v3, v4, Lc8/OF;->perfCheckURL:Ljava/lang/String;

    .line 63
    .local v3, "scriptUrl":Ljava/lang/String;
    const-string/jumbo v4, "scriptUrl"

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    cmpl-double v4, v0, v4

    if-lez v4, :cond_0

    .line 64
    const-string/jumbo v4, "(function(d){var s = d.createElement(\'script\');s.src=\'%s\';d.head.appendChild(s);})(document)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, "script":Ljava/lang/String;
    iget-object v4, p2, Landroid/taobao/windvane/service/WVEventContext;->webView:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-interface {v4, v2}, Landroid/taobao/windvane/webview/IWVWebView;->evaluateJavascript(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "rate":D
    .end local v2    # "script":Ljava/lang/String;
    .end local v3    # "scriptUrl":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x3ea
        :pswitch_0
    .end packed-switch
.end method
