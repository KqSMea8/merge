.class public final Lc8/vtq;
.super Ljava/lang/Object;
.source "OperatorReplay.java"

# interfaces
.implements Lc8/Hnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Atq;->create(Lc8/Vlq;JLjava/util/concurrent/TimeUnit;Lc8/amq;I)Lc8/Vzq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/Hnq",
        "<",
        "Lc8/xtq",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$bufferSize:I

.field final synthetic val$maxAgeInMillis:J

.field final synthetic val$scheduler:Lc8/amq;


# direct methods
.method constructor <init>(IJLc8/amq;)V
    .locals 0

    .prologue
    .line 184
    iput p1, p0, Lc8/vtq;->val$bufferSize:I

    iput-wide p2, p0, Lc8/vtq;->val$maxAgeInMillis:J

    iput-object p4, p0, Lc8/vtq;->val$scheduler:Lc8/amq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lc8/xtq;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/xtq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 187
    new-instance v0, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;

    iget v1, p0, Lc8/vtq;->val$bufferSize:I

    iget-wide v2, p0, Lc8/vtq;->val$maxAgeInMillis:J

    iget-object v4, p0, Lc8/vtq;->val$scheduler:Lc8/amq;

    invoke-direct {v0, v1, v2, v3, v4}, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;-><init>(IJLc8/amq;)V

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0}, Lc8/vtq;->call()Lc8/xtq;

    move-result-object v0

    return-object v0
.end method
