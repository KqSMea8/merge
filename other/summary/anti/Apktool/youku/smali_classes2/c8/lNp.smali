.class public Lc8/lNp;
.super Ljava/lang/Object;
.source "AntiAttackHandlerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 36
    iput-object p1, p0, Lc8/lNp;->this$0:Lc8/nNp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 39
    iget-object v0, p0, Lc8/lNp;->this$0:Lc8/nNp;

    iget-object v0, v0, Lc8/nNp;->isHandling:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    const-string/jumbo v0, "mtopsdk.AntiAttackHandlerImpl"

    const-string/jumbo v1, "waiting antiattack result time out!"

    invoke-static {v0, v1}, Lc8/BMp;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :try_start_0
    iget-object v0, p0, Lc8/lNp;->this$0:Lc8/nNp;

    iget-object v0, v0, Lc8/nNp;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lc8/lNp;->this$0:Lc8/nNp;

    iget-object v1, v1, Lc8/nNp;->antiAttackReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
