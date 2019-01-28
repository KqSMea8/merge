.class public Lc8/WSh;
.super Lc8/RD;
.source "WVDiagnoseBridge.java"


# static fields
.field public static final PLUGIN_NAME:Ljava/lang/String; = "WVDiagnoseBridge"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lc8/RD;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lc8/WSh;)Landroid/taobao/windvane/webview/IWVWebView;
    .locals 1
    .param p0, "x0"    # Lc8/WSh;

    .prologue
    .line 14
    iget-object v0, p0, Lc8/WSh;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    return-object v0
.end method

.method private startDiagnose(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 2
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 28
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lc8/VSh;

    invoke-direct {v1, p0, p1, p2}, Lc8/VSh;-><init>(Lc8/WSh;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 58
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 59
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 20
    const-string/jumbo v0, "startDiagnose"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    invoke-direct {p0, p2, p3}, Lc8/WSh;->startDiagnose(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    .line 22
    const/4 v0, 0x1

    .line 24
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
