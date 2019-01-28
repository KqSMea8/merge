.class public Lc8/Lqm;
.super Lc8/Iqm;
.source "YKFWVAudioPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Mqm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PluginPlayerListener"
.end annotation


# instance fields
.field mPWAudioPlayer:Lc8/Jqm;

.field mWVCallBackContext:Landroid/taobao/windvane/jsbridge/WVCallBackContext;


# direct methods
.method private constructor <init>(Lc8/Jqm;)V
    .locals 0
    .param p1, "pwAudioPlayer"    # Lc8/Jqm;

    .prologue
    .line 97
    invoke-direct {p0}, Lc8/Iqm;-><init>()V

    .line 98
    iput-object p1, p0, Lc8/Lqm;->mPWAudioPlayer:Lc8/Jqm;

    .line 99
    return-void
.end method

.method synthetic constructor <init>(Lc8/Jqm;Lc8/Kqm;)V
    .locals 0
    .param p1, "x0"    # Lc8/Jqm;
    .param p2, "x1"    # Lc8/Kqm;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lc8/Lqm;-><init>(Lc8/Jqm;)V

    return-void
.end method


# virtual methods
.method public destory()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lc8/Lqm;->mWVCallBackContext:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 75
    iput-object v0, p0, Lc8/Lqm;->mPWAudioPlayer:Lc8/Jqm;

    .line 76
    return-void
.end method

.method public onError(II)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "extra"    # I

    .prologue
    .line 88
    invoke-super {p0, p1, p2}, Lc8/Iqm;->onError(II)V

    .line 89
    iget-object v0, p0, Lc8/Lqm;->mWVCallBackContext:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "url player fail:code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " extra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public onStarted()V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Lc8/Iqm;->onStarted()V

    .line 81
    iget-object v0, p0, Lc8/Lqm;->mWVCallBackContext:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lc8/Lqm;->mWVCallBackContext:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    .line 84
    :cond_0
    return-void
.end method

.method public setWVCallBackContext(Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Lc8/Lqm;
    .locals 0
    .param p1, "WVCallBackContext"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 93
    iput-object p1, p0, Lc8/Lqm;->mWVCallBackContext:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 94
    return-object p0
.end method
