.class public Lc8/mNp;
.super Landroid/content/BroadcastReceiver;
.source "AntiAttackHandlerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/nNp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/nNp;


# direct methods
.method constructor <init>(Lc8/nNp;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lc8/mNp;->this$0:Lc8/nNp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 55
    :try_start_0
    const-string/jumbo v1, "Result"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "result":Ljava/lang/String;
    const-string/jumbo v1, "mtopsdk.AntiAttackHandlerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[onReceive]AntiAttack result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    iget-object v1, p0, Lc8/mNp;->this$0:Lc8/nNp;

    invoke-static {v1}, Lc8/nNp;->access$100(Lc8/nNp;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lc8/mNp;->this$0:Lc8/nNp;

    invoke-static {v2}, Lc8/nNp;->access$000(Lc8/nNp;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 60
    iget-object v1, p0, Lc8/mNp;->this$0:Lc8/nNp;

    iget-object v1, v1, Lc8/nNp;->isHandling:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 61
    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v1

    iget-object v1, p0, Lc8/mNp;->this$0:Lc8/nNp;

    invoke-static {v1}, Lc8/nNp;->access$100(Lc8/nNp;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lc8/mNp;->this$0:Lc8/nNp;

    invoke-static {v2}, Lc8/nNp;->access$000(Lc8/nNp;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 60
    iget-object v1, p0, Lc8/mNp;->this$0:Lc8/nNp;

    iget-object v1, v1, Lc8/nNp;->isHandling:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 59
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lc8/mNp;->this$0:Lc8/nNp;

    invoke-static {v2}, Lc8/nNp;->access$100(Lc8/nNp;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lc8/mNp;->this$0:Lc8/nNp;

    invoke-static {v3}, Lc8/nNp;->access$000(Lc8/nNp;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 60
    iget-object v2, p0, Lc8/mNp;->this$0:Lc8/nNp;

    iget-object v2, v2, Lc8/nNp;->isHandling:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v1
.end method
