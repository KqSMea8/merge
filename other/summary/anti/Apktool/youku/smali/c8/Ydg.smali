.class public Lc8/Ydg;
.super Lc8/MXf;
.source "WXTimerModule.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lc8/uXf;


# static fields
.field private static final TAG:Ljava/lang/String; = "timer"


# instance fields
.field private antiIntAutoBoxing:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Lc8/MXf;-><init>()V

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lc8/ZWf;->getInstance()Lc8/ZWf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/ZWf;->getJSLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lc8/Ydg;->handler:Landroid/os/Handler;

    .line 64
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lc8/Ydg;->antiIntAutoBoxing:Landroid/util/SparseArray;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lc8/Ydg;IIII)V
    .locals 0
    .param p0, "x0"    # Lc8/Ydg;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lc8/Ydg;->postMessage(IIII)V

    return-void
.end method

.method static synthetic access$100(Lc8/Ydg;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lc8/Ydg;

    .prologue
    .line 52
    iget-object v0, p0, Lc8/Ydg;->antiIntAutoBoxing:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$200(Lc8/Ydg;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lc8/Ydg;

    .prologue
    .line 52
    iget-object v0, p0, Lc8/Ydg;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private createTimerArgs(IIZ)[Lc8/aXf;
    .locals 9
    .param p1, "instanceId"    # I
    .param p2, "funcId"    # I
    .param p3, "keepAlive"    # Z

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v0, "argsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    new-instance v1, Lcom/taobao/weex/bridge/WXHashMap;

    invoke-direct {v1}, Lcom/taobao/weex/bridge/WXHashMap;-><init>()V

    .line 154
    .local v1, "task":Lcom/taobao/weex/bridge/WXHashMap;, "Lcom/taobao/weex/bridge/WXHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v3, "method"

    const-string/jumbo v4, "callback"

    invoke-virtual {v1, v3, v4}, Lcom/taobao/weex/bridge/WXHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string/jumbo v3, "args"

    invoke-virtual {v1, v3, v0}, Lcom/taobao/weex/bridge/WXHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    new-array v2, v7, [Ljava/lang/Object;

    aput-object v1, v2, v6

    .line 157
    .local v2, "tasks":[Ljava/lang/Object;
    new-array v3, v8, [Lc8/aXf;

    new-instance v4, Lc8/aXf;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v8, v5}, Lc8/aXf;-><init>(ILjava/lang/Object;)V

    aput-object v4, v3, v6

    new-instance v4, Lc8/aXf;

    const/4 v5, 0x3

    invoke-static {v2}, Lc8/ugg;->fromObjectToJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lc8/aXf;-><init>(ILjava/lang/Object;)V

    aput-object v4, v3, v7

    return-object v3
.end method

.method private postMessage(IIII)V
    .locals 4
    .param p1, "what"    # I
    .param p2, "funcId"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .param p3, "interval"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p4, "instanceId"    # I

    .prologue
    .line 192
    if-ltz p3, :cond_0

    if-gtz p2, :cond_1

    .line 193
    :cond_0
    const-string/jumbo v1, "timer"

    const-string/jumbo v2, "interval < 0 or funcId <=0"

    invoke-static {v1, v2}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :goto_0
    return-void

    .line 195
    :cond_1
    iget-object v1, p0, Lc8/Ydg;->antiIntAutoBoxing:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 196
    iget-object v1, p0, Lc8/Ydg;->antiIntAutoBoxing:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 198
    :cond_2
    iget-object v1, p0, Lc8/Ydg;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lc8/Ydg;->antiIntAutoBoxing:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1, p4, p3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 200
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lc8/Ydg;->handler:Landroid/os/Handler;

    int-to-long v2, p3

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private postOrHoldMessage(IIII)V
    .locals 8
    .param p1, "what"    # I
    .param p2, "funcId"    # I
    .param p3, "interval"    # I
    .param p4, "instanceId"    # I

    .prologue
    .line 164
    iget-object v0, p0, Lc8/Ydg;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v0}, Lc8/nVf;->isPreRenderMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/pVf;->getWXDomManager()Lc8/EYf;

    move-result-object v6

    iget-object v0, p0, Lc8/Ydg;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v0}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v7

    new-instance v0, Lc8/Wdg;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lc8/Wdg;-><init>(Lc8/Ydg;IIII)V

    invoke-static {v0}, Lc8/YYf;->getExecutableRenderAction(Ljava/lang/Runnable;)Lc8/fYf;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v6, v7, v0, v1}, Lc8/EYf;->postAction(Ljava/lang/String;Lc8/fYf;Z)V

    .line 174
    :goto_0
    return-void

    .line 172
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lc8/Ydg;->postMessage(IIII)V

    goto :goto_0
.end method

.method private removeOrHoldMessage(II)V
    .locals 4
    .param p1, "what"    # I
    .param p2, "funcId"    # I

    .prologue
    .line 177
    iget-object v0, p0, Lc8/Ydg;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v0}, Lc8/nVf;->isPreRenderMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/pVf;->getWXDomManager()Lc8/EYf;

    move-result-object v0

    iget-object v1, p0, Lc8/Ydg;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v1}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lc8/Xdg;

    invoke-direct {v2, p0, p1, p2}, Lc8/Xdg;-><init>(Lc8/Ydg;II)V

    invoke-static {v2}, Lc8/YYf;->getExecutableRenderAction(Ljava/lang/Runnable;)Lc8/fYf;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lc8/EYf;->postAction(Ljava/lang/String;Lc8/fYf;Z)V

    .line 187
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lc8/Ydg;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lc8/Ydg;->antiIntAutoBoxing:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public clearInterval(I)V
    .locals 1
    .param p1, "funcId"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .annotation runtime Lc8/KVf;
        uiThread = false
    .end annotation

    .prologue
    .line 92
    if-gtz p1, :cond_0

    .line 96
    :goto_0
    return-void

    .line 95
    :cond_0
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lc8/Ydg;->removeOrHoldMessage(II)V

    goto :goto_0
.end method

.method public clearTimeout(I)V
    .locals 1
    .param p1, "funcId"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .annotation runtime Lc8/KVf;
        uiThread = false
    .end annotation

    .prologue
    .line 84
    if-gtz p1, :cond_0

    .line 88
    :goto_0
    return-void

    .line 87
    :cond_0
    const/16 v0, 0xb

    invoke-direct {p0, v0, p1}, Lc8/Ydg;->removeOrHoldMessage(II)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lc8/Ydg;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 101
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    const-string/jumbo v0, "timer"

    const-string/jumbo v1, "Timer Module removeAllMessages: "

    invoke-static {v0, v1}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_0
    iget-object v0, p0, Lc8/Ydg;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 105
    iget-object v0, p0, Lc8/Ydg;->antiIntAutoBoxing:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 107
    :cond_1
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 111
    const/4 v6, 0x0

    .line 113
    .local v6, "ret":Z
    if-eqz p1, :cond_1

    .line 114
    iget v7, p1, Landroid/os/Message;->what:I

    .line 115
    .local v7, "what":I
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    const-string/jumbo v0, "timer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Timer Module handleMessage : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_0
    packed-switch v7, :pswitch_data_0

    .line 140
    .end local v7    # "what":I
    :cond_1
    :goto_0
    return v6

    .line 120
    .restart local v7    # "what":I
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 123
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x0

    invoke-direct {p0, v1, v0, v3}, Lc8/Ydg;->createTimerArgs(IIZ)[Lc8/aXf;

    move-result-object v4

    .line 124
    .local v4, "args":[Lc8/aXf;
    invoke-static {}, Lc8/ZWf;->getInstance()Lc8/ZWf;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "callJS"

    invoke-virtual/range {v0 .. v5}, Lc8/ZWf;->invokeExecJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lc8/aXf;Z)V

    .line 125
    const/4 v6, 0x1

    .line 126
    goto :goto_0

    .line 128
    .end local v4    # "args":[Lc8/aXf;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 131
    const/16 v1, 0xc

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v1, v0, v3, v8}, Lc8/Ydg;->postMessage(IIII)V

    .line 132
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v1, v0, v5}, Lc8/Ydg;->createTimerArgs(IIZ)[Lc8/aXf;

    move-result-object v4

    .line 133
    .restart local v4    # "args":[Lc8/aXf;
    invoke-static {}, Lc8/ZWf;->getInstance()Lc8/ZWf;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "callJS"

    invoke-virtual/range {v0 .. v5}, Lc8/ZWf;->invokeExecJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lc8/aXf;Z)V

    .line 134
    const/4 v6, 0x1

    goto :goto_0

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 145
    iput-object p1, p0, Lc8/Ydg;->handler:Landroid/os/Handler;

    .line 146
    return-void
.end method

.method public setInterval(IF)V
    .locals 3
    .param p1, "funcId"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .param p2, "interval"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
        .end annotation
    .end param
    .annotation runtime Lc8/KVf;
        uiThread = false
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lc8/Ydg;->mWXSDKInstance:Lc8/nVf;

    if-eqz v0, :cond_0

    .line 78
    const/16 v0, 0xc

    float-to-int v1, p2

    iget-object v2, p0, Lc8/Ydg;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v2}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v0, p1, v1, v2}, Lc8/Ydg;->postOrHoldMessage(IIII)V

    .line 80
    :cond_0
    return-void
.end method

.method public setTimeout(IF)V
    .locals 3
    .param p1, "funcId"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .param p2, "delay"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
        .end annotation
    .end param
    .annotation runtime Lc8/KVf;
        uiThread = false
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lc8/Ydg;->mWXSDKInstance:Lc8/nVf;

    if-eqz v0, :cond_0

    .line 71
    const/16 v0, 0xb

    float-to-int v1, p2

    iget-object v2, p0, Lc8/Ydg;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v2}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v0, p1, v1, v2}, Lc8/Ydg;->postOrHoldMessage(IIII)V

    .line 73
    :cond_0
    return-void
.end method
