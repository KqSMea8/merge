.class public final Lc8/Mkq;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lc8/Llq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Plq;->timer(JLjava/util/concurrent/TimeUnit;Lc8/amq;)Lc8/Plq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$delay:J

.field final synthetic val$scheduler:Lc8/amq;

.field final synthetic val$unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method constructor <init>(Lc8/amq;JLjava/util/concurrent/TimeUnit;)V
    .locals 0

    .prologue
    .line 782
    iput-object p1, p0, Lc8/Mkq;->val$scheduler:Lc8/amq;

    iput-wide p2, p0, Lc8/Mkq;->val$delay:J

    iput-object p4, p0, Lc8/Mkq;->val$unit:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lc8/Nlq;)V
    .locals 6
    .param p1, "s"    # Lc8/Nlq;

    .prologue
    .line 785
    new-instance v0, Lc8/UBq;

    invoke-direct {v0}, Lc8/UBq;-><init>()V

    .line 786
    .local v0, "mad":Lc8/UBq;
    invoke-interface {p1, v0}, Lc8/Nlq;->onSubscribe(Lc8/Pmq;)V

    .line 787
    invoke-virtual {v0}, Lc8/UBq;->isUnsubscribed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 788
    iget-object v2, p0, Lc8/Mkq;->val$scheduler:Lc8/amq;

    invoke-virtual {v2}, Lc8/amq;->createWorker()Lc8/Zlq;

    move-result-object v1

    .line 789
    .local v1, "w":Lc8/Zlq;
    invoke-virtual {v0, v1}, Lc8/UBq;->set(Lc8/Pmq;)V

    .line 790
    new-instance v2, Lc8/Lkq;

    invoke-direct {v2, p0, p1, v1}, Lc8/Lkq;-><init>(Lc8/Mkq;Lc8/Nlq;Lc8/Zlq;)V

    iget-wide v4, p0, Lc8/Mkq;->val$delay:J

    iget-object v3, p0, Lc8/Mkq;->val$unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v4, v5, v3}, Lc8/Zlq;->schedule(Lc8/hnq;JLjava/util/concurrent/TimeUnit;)Lc8/Pmq;

    .line 801
    .end local v1    # "w":Lc8/Zlq;
    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 782
    check-cast p1, Lc8/Nlq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Mkq;->call(Lc8/Nlq;)V

    return-void
.end method
