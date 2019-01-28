.class public final Lc8/qQp;
.super Lc8/nMp;
.source "XState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/rQp;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/nMp",
        "<",
        "Lc8/wQp;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 58
    .local p1, "x0":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/os/IInterface;>;"
    .local p2, "x1":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Service;>;"
    invoke-direct {p0, p1, p2}, Lc8/nMp;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected afterAsyncBind()V
    .locals 4

    .prologue
    .line 61
    invoke-static {}, Lc8/rQp;->access$000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 62
    new-instance v0, Lc8/pQp;

    invoke-direct {v0, p0}, Lc8/pQp;-><init>(Lc8/qQp;)V

    .line 69
    .local v0, "syncTask":Ljava/lang/Runnable;
    invoke-static {v0}, Lc8/mPp;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 71
    return-void
.end method
