.class public final Lc8/wqq;
.super Ljava/lang/Object;
.source "OnSubscribeRedo.java"

# interfaces
.implements Lc8/Inq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/zqq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RedoFinite"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/Inq",
        "<",
        "Lc8/Vlq",
        "<+",
        "Lc8/Qlq",
        "<*>;>;",
        "Lc8/Vlq",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final count:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "count"    # J

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-wide p1, p0, Lc8/wqq;->count:J

    .line 71
    return-void
.end method


# virtual methods
.method public call(Lc8/Vlq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Vlq",
            "<+",
            "Lc8/Qlq",
            "<*>;>;)",
            "Lc8/Vlq",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "ts":Lc8/Vlq;, "Lrx/Observable<+Lrx/Notification<*>;>;"
    new-instance v0, Lc8/vqq;

    invoke-direct {v0, p0}, Lc8/vqq;-><init>(Lc8/wqq;)V

    invoke-virtual {p1, v0}, Lc8/Vlq;->map(Lc8/Inq;)Lc8/Vlq;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Vlq;->dematerialize()Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 66
    check-cast p1, Lc8/Vlq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/wqq;->call(Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method
