.class public Lc8/Vvk;
.super Ljava/lang/Object;
.source "UnicomMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Xvk;->getVideoOrAdUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/Runnable;ZLc8/Gvk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Xvk;

.field final synthetic val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lc8/Xvk;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lc8/Vvk;->this$0:Lc8/Xvk;

    iput-object p2, p0, Lc8/Vvk;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lc8/Vvk;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 262
    :try_start_0
    iget-object v1, p0, Lc8/Vvk;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :goto_0
    iget-object v1, p0, Lc8/Vvk;->val$runnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 267
    new-instance v1, Lc8/bwk;

    invoke-direct {v1}, Lc8/bwk;-><init>()V

    iget-object v2, p0, Lc8/Vvk;->val$runnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lc8/bwk;->execute(Ljava/lang/Runnable;)V

    .line 269
    :cond_0
    return-void

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
