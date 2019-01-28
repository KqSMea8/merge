.class public Lc8/Qcf;
.super Ljava/lang/Object;
.source "Coordinator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Vcf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PriorityComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Runnable:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<TRunnable;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 200
    .local p0, "this":Lc8/Qcf;, "Lcom/taobao/android/task/Coordinator$PriorityComparator<TRunnable;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRunnable;TRunnable;)I"
        }
    .end annotation

    .prologue
    .line 205
    .local p0, "this":Lc8/Qcf;, "Lcom/taobao/android/task/Coordinator$PriorityComparator<TRunnable;>;"
    .local p1, "c1":Ljava/lang/Object;, "TRunnable;"
    .local p2, "c2":Ljava/lang/Object;, "TRunnable;"
    instance-of v2, p1, Lc8/Scf;

    if-eqz v2, :cond_1

    instance-of v2, p2, Lc8/Scf;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 206
    check-cast v0, Lc8/Scf;

    .local v0, "s1":Lc8/Scf;
    move-object v1, p2

    .line 207
    check-cast v1, Lc8/Scf;

    .line 209
    .local v1, "s2":Lc8/Scf;
    invoke-virtual {v0}, Lc8/Scf;->getQueuePriority()I

    move-result v2

    invoke-virtual {v1}, Lc8/Scf;->getQueuePriority()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 210
    const/4 v2, 0x1

    .line 216
    .end local v0    # "s1":Lc8/Scf;
    .end local v1    # "s2":Lc8/Scf;
    :goto_0
    return v2

    .line 211
    .restart local v0    # "s1":Lc8/Scf;
    .restart local v1    # "s2":Lc8/Scf;
    :cond_0
    invoke-virtual {v0}, Lc8/Scf;->getQueuePriority()I

    move-result v2

    invoke-virtual {v1}, Lc8/Scf;->getQueuePriority()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 212
    const/4 v2, -0x1

    goto :goto_0

    .line 216
    .end local v0    # "s1":Lc8/Scf;
    .end local v1    # "s2":Lc8/Scf;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
