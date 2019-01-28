.class public final Lc8/otq;
.super Ljava/lang/Object;
.source "OperatorReplay.java"

# interfaces
.implements Lc8/Hnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Atq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;-><init>(I)V

    return-object v0
.end method
