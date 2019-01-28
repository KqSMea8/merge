.class public Lc8/etf;
.super Ljava/lang/Object;
.source "OrangeConfigImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/qtf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/qtf;


# direct methods
.method constructor <init>(Lc8/qtf;)V
    .locals 0
    .param p1, "this$0"    # Lc8/qtf;

    .prologue
    .line 365
    iput-object p1, p0, Lc8/etf;->this$0:Lc8/qtf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v3, 0x0

    .line 378
    const-string/jumbo v0, "OrangeConfigImpl"

    const-string/jumbo v1, "onServiceConnected"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lc8/buf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 379
    iget-object v0, p0, Lc8/etf;->this$0:Lc8/qtf;

    invoke-static {p2}, Lc8/wtf;->asInterface(Landroid/os/IBinder;)Lc8/xtf;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/qtf;->access$102(Lc8/qtf;Lc8/xtf;)Lc8/xtf;

    .line 380
    iget-object v0, p0, Lc8/etf;->this$0:Lc8/qtf;

    invoke-static {v0}, Lc8/qtf;->access$900(Lc8/qtf;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lc8/etf;->this$0:Lc8/qtf;

    invoke-static {v0}, Lc8/qtf;->access$900(Lc8/qtf;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 383
    :cond_0
    iget-object v0, p0, Lc8/etf;->this$0:Lc8/qtf;

    invoke-static {v0}, Lc8/qtf;->access$1000(Lc8/qtf;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 384
    iget-object v0, p0, Lc8/etf;->this$0:Lc8/qtf;

    invoke-static {v0}, Lc8/qtf;->access$200(Lc8/qtf;)V

    .line 385
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v3, 0x0

    .line 368
    const-string/jumbo v0, "OrangeConfigImpl"

    const-string/jumbo v1, "onServiceDisconnected"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lc8/buf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 369
    iget-object v0, p0, Lc8/etf;->this$0:Lc8/qtf;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/qtf;->access$102(Lc8/qtf;Lc8/xtf;)Lc8/xtf;

    .line 370
    iget-object v0, p0, Lc8/etf;->this$0:Lc8/qtf;

    invoke-static {v0}, Lc8/qtf;->access$900(Lc8/qtf;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lc8/etf;->this$0:Lc8/qtf;

    invoke-static {v0}, Lc8/qtf;->access$900(Lc8/qtf;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 373
    :cond_0
    iget-object v0, p0, Lc8/etf;->this$0:Lc8/qtf;

    invoke-static {v0}, Lc8/qtf;->access$1000(Lc8/qtf;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 374
    return-void
.end method
