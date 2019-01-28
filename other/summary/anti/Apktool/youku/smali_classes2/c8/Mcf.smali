.class public final Lc8/Mcf;
.super Landroid/os/Handler;
.source "Coordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Vcf;->execute(Lc8/Tcf;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Looper;

    .prologue
    .line 263
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 268
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lc8/Scf;

    .line 270
    .local v0, "task":Lc8/Scf;
    sget-object v1, Lc8/Vcf;->sThreadPoolExecutor:Lc8/Ocf;

    invoke-virtual {v1, v0}, Lc8/Ocf;->execute(Ljava/lang/Runnable;)V

    .line 271
    return-void
.end method
