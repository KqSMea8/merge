.class public Lc8/sJd;
.super Landroid/os/Handler;
.source "UploadProgressHandler.java"


# instance fields
.field private final mUploadProgressListenerWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lc8/cJd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/cJd;)V
    .locals 1
    .param p1, "uploadProgressListener"    # Lc8/cJd;

    .prologue
    .line 39
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 40
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc8/sJd;->mUploadProgressListenerWeakRef:Ljava/lang/ref/WeakReference;

    .line 41
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 45
    iget-object v2, p0, Lc8/sJd;->mUploadProgressListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/cJd;

    .line 46
    .local v1, "uploadProgressListener":Lc8/cJd;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 54
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 48
    :pswitch_0
    if-eqz v1, :cond_0

    .line 49
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/meizu/cloud/pushsdk/networking/model/Progress;

    .line 50
    .local v0, "progress":Lcom/meizu/cloud/pushsdk/networking/model/Progress;
    iget-wide v2, v0, Lcom/meizu/cloud/pushsdk/networking/model/Progress;->currentBytes:J

    iget-wide v4, v0, Lcom/meizu/cloud/pushsdk/networking/model/Progress;->totalBytes:J

    invoke-interface {v1, v2, v3, v4, v5}, Lc8/cJd;->onProgress(JJ)V

    goto :goto_0

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
