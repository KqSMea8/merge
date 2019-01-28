.class public final Lc8/Ncf;
.super Ljava/lang/Object;
.source "Coordinator.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Vcf;->scheduleIdleTasks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 314
    sget-object v2, Lc8/Vcf;->mIdleTasks:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Tcf;

    .line 315
    .local v0, "task":Lc8/Tcf;
    if-nez v0, :cond_1

    .line 318
    :cond_0
    :goto_0
    return v1

    .line 317
    :cond_1
    invoke-static {v0}, Lc8/Vcf;->postTask(Lc8/Tcf;)V

    .line 318
    sget-object v2, Lc8/Vcf;->mIdleTasks:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method
