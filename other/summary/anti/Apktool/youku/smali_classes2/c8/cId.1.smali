.class public final Lc8/cId;
.super Ljava/util/concurrent/FutureTask;
.source "ANExecutor.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/dId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AndroidNetworkingFutureTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<",
        "Lc8/oJd;",
        ">;",
        "Ljava/lang/Comparable",
        "<",
        "Lc8/cId;",
        ">;"
    }
.end annotation


# instance fields
.field private final hunter:Lc8/oJd;


# direct methods
.method public constructor <init>(Lc8/oJd;)V
    .locals 1
    .param p1, "hunter"    # Lc8/oJd;

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 104
    iput-object p1, p0, Lc8/cId;->hunter:Lc8/oJd;

    .line 105
    return-void
.end method


# virtual methods
.method public compareTo(Lc8/cId;)I
    .locals 4
    .param p1, "other"    # Lc8/cId;

    .prologue
    .line 109
    iget-object v2, p0, Lc8/cId;->hunter:Lc8/oJd;

    invoke-virtual {v2}, Lc8/oJd;->getPriority()Lcom/meizu/cloud/pushsdk/networking/common/Priority;

    move-result-object v0

    .line 110
    .local v0, "p1":Lcom/meizu/cloud/pushsdk/networking/common/Priority;
    iget-object v2, p1, Lc8/cId;->hunter:Lc8/oJd;

    invoke-virtual {v2}, Lc8/oJd;->getPriority()Lcom/meizu/cloud/pushsdk/networking/common/Priority;

    move-result-object v1

    .line 111
    .local v1, "p2":Lcom/meizu/cloud/pushsdk/networking/common/Priority;
    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lc8/cId;->hunter:Lc8/oJd;

    iget v2, v2, Lc8/oJd;->sequence:I

    iget-object v3, p1, Lc8/cId;->hunter:Lc8/oJd;

    iget v3, v3, Lc8/oJd;->sequence:I

    sub-int/2addr v2, v3

    :goto_0
    return v2

    :cond_0
    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/networking/common/Priority;->ordinal()I

    move-result v2

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/common/Priority;->ordinal()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 98
    check-cast p1, Lc8/cId;

    invoke-virtual {p0, p1}, Lc8/cId;->compareTo(Lc8/cId;)I

    move-result v0

    return v0
.end method
