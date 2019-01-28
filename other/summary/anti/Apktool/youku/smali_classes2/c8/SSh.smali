.class public Lc8/SSh;
.super Lc8/RD;
.source "TaobaoYoukuAccountJSBridge.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "WVTaobaoYoukuAccountJSBridge"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lc8/RD;-><init>()V

    return-void
.end method


# virtual methods
.method bindAccount(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 83
    new-instance v0, Lc8/RSh;

    invoke-direct {v0, p0, p2}, Lc8/RSh;-><init>(Lc8/SSh;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    invoke-static {v0, p1}, Lc8/Gko;->addBindTaobao(Lc8/Mko;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "wvCallBackContext"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    const/4 v0, 0x1

    .line 31
    const-string/jumbo v1, "queryBindingStatus"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    invoke-virtual {p0, p3}, Lc8/SSh;->queryBindingStatus(Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    .line 39
    :goto_0
    return v0

    .line 35
    :cond_0
    const-string/jumbo v1, "bindAccount"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36
    invoke-virtual {p0, p2, p3}, Lc8/SSh;->bindAccount(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    goto :goto_0

    .line 39
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method queryBindingStatus(Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 1
    .param p1, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 43
    new-instance v0, Lc8/QSh;

    invoke-direct {v0, p0, p1}, Lc8/QSh;-><init>(Lc8/SSh;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    invoke-static {v0}, Lc8/Gko;->getTaobaoBindInfo(Lc8/Mko;)V

    .line 80
    return-void
.end method
