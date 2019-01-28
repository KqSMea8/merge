.class public Lc8/Drb;
.super Lc8/Erb;
.source "AnimationFrame.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Erb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HandlerAnimationFrameImpl"
.end annotation


# static fields
.field private static final DEFAULT_DELAY_MILLIS:J = 0x10L

.field private static final MSG_FRAME_CALLBACK:I = 0x64


# instance fields
.field private callback:Lc8/Brb;

.field private isRunning:Z

.field private mInnerHandler:Landroid/os/Handler;

.field private mInnerHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 96
    invoke-direct {p0}, Lc8/Erb;-><init>()V

    .line 97
    iget-object v0, p0, Lc8/Drb;->mInnerHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p0}, Lc8/Drb;->terminate()V

    .line 100
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "expression-timing-thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lc8/Drb;->mInnerHandlerThread:Landroid/os/HandlerThread;

    .line 101
    iget-object v0, p0, Lc8/Drb;->mInnerHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 102
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lc8/Drb;->mInnerHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lc8/Drb;->mInnerHandler:Landroid/os/Handler;

    .line 103
    return-void
.end method


# virtual methods
.method clear()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lc8/Drb;->mInnerHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lc8/Drb;->mInnerHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 110
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Drb;->isRunning:Z

    .line 111
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v1, 0x64

    .line 136
    if-eqz p1, :cond_2

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lc8/Drb;->mInnerHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 137
    iget-object v0, p0, Lc8/Drb;->callback:Lc8/Brb;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lc8/Drb;->callback:Lc8/Brb;

    invoke-interface {v0}, Lc8/Brb;->doFrame()V

    .line 140
    :cond_0
    iget-boolean v0, p0, Lc8/Drb;->isRunning:Z

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lc8/Drb;->mInnerHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 143
    :cond_1
    const/4 v0, 0x1

    .line 145
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method requestAnimationFrame(Lc8/Brb;)V
    .locals 2
    .param p1, "callback"    # Lc8/Brb;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 127
    iput-object p1, p0, Lc8/Drb;->callback:Lc8/Brb;

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Drb;->isRunning:Z

    .line 129
    iget-object v0, p0, Lc8/Drb;->mInnerHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lc8/Drb;->mInnerHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 132
    :cond_0
    return-void
.end method

.method terminate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 115
    invoke-virtual {p0}, Lc8/Drb;->clear()V

    .line 116
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 117
    iget-object v0, p0, Lc8/Drb;->mInnerHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 121
    :goto_0
    iput-object v2, p0, Lc8/Drb;->mInnerHandler:Landroid/os/Handler;

    .line 122
    iput-object v2, p0, Lc8/Drb;->mInnerHandlerThread:Landroid/os/HandlerThread;

    .line 123
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lc8/Drb;->mInnerHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    goto :goto_0
.end method
