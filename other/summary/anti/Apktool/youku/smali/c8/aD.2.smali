.class public Lc8/aD;
.super Landroid/os/HandlerThread;
.source "WVThread.java"


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Lc8/aD;->start()V

    .line 16
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lc8/aD;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lc8/aD;->mHandler:Landroid/os/Handler;

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "priority"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 21
    invoke-virtual {p0}, Lc8/aD;->start()V

    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lc8/aD;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lc8/aD;->mHandler:Landroid/os/Handler;

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILandroid/os/Handler$Callback;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "priority"    # I
    .param p3, "callback"    # Landroid/os/Handler$Callback;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 33
    invoke-virtual {p0}, Lc8/aD;->start()V

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lc8/aD;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lc8/aD;->mHandler:Landroid/os/Handler;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Handler$Callback;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/os/Handler$Callback;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0}, Lc8/aD;->start()V

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lc8/aD;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lc8/aD;->mHandler:Landroid/os/Handler;

    .line 29
    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lc8/aD;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public quit()Z
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lc8/aD;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lc8/aD;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 42
    :cond_0
    invoke-super {p0}, Landroid/os/HandlerThread;->quit()Z

    move-result v0

    return v0
.end method
