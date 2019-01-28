.class public Lc8/Slg;
.super Landroid/os/Handler;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Xlg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lc8/Xlg;

.field private b:Lc8/Rlg;


# direct methods
.method public constructor <init>(Lc8/Xlg;Lc8/Rlg;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Lc8/Slg;->a:Lc8/Xlg;

    .line 393
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 394
    iput-object p2, p0, Lc8/Slg;->b:Lc8/Rlg;

    .line 395
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 399
    const-string/jumbo v0, "openSDK_LOG.PKDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/vlg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 432
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 402
    :pswitch_1
    iget-object v1, p0, Lc8/Slg;->b:Lc8/Rlg;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lc8/Rlg;->a(Lc8/Rlg;Ljava/lang/String;)V

    goto :goto_0

    .line 406
    :pswitch_2
    iget-object v0, p0, Lc8/Slg;->b:Lc8/Rlg;

    invoke-virtual {v0}, Lc8/Rlg;->onCancel()V

    goto :goto_0

    .line 412
    :pswitch_3
    iget-object v0, p0, Lc8/Slg;->a:Lc8/Xlg;

    invoke-static {v0}, Lc8/Xlg;->a(Lc8/Xlg;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Slg;->a:Lc8/Xlg;

    invoke-static {v0}, Lc8/Xlg;->a(Lc8/Xlg;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lc8/Slg;->a:Lc8/Xlg;

    invoke-static {v0}, Lc8/Xlg;->a(Lc8/Xlg;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lc8/Xlg;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 424
    :pswitch_4
    iget-object v0, p0, Lc8/Slg;->a:Lc8/Xlg;

    invoke-static {v0}, Lc8/Xlg;->a(Lc8/Xlg;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Slg;->a:Lc8/Xlg;

    invoke-static {v0}, Lc8/Xlg;->a(Lc8/Xlg;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lc8/Slg;->a:Lc8/Xlg;

    invoke-static {v0}, Lc8/Xlg;->a(Lc8/Xlg;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lc8/Xlg;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 400
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
