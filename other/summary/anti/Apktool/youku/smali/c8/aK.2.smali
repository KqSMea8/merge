.class public Lc8/aK;
.super Ljava/lang/Object;
.source "FutureCancelable.java"

# interfaces
.implements Lc8/ZJ;


# static fields
.field public static final NULL:Lc8/aK;


# instance fields
.field private final future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private final seq:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12
    new-instance v0, Lc8/aK;

    invoke-direct {v0, v1, v1}, Lc8/aK;-><init>(Ljava/util/concurrent/Future;Ljava/lang/String;)V

    sput-object v0, Lc8/aK;->NULL:Lc8/aK;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Future;Ljava/lang/String;)V
    .locals 0
    .param p2, "seq"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 17
    .local p1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lc8/aK;->future:Ljava/util/concurrent/Future;

    .line 19
    iput-object p2, p0, Lc8/aK;->seq:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .prologue
    .line 24
    iget-object v0, p0, Lc8/aK;->future:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 25
    const-string/jumbo v0, "awcn.FutureCancelable"

    const-string/jumbo v1, "cancel request"

    iget-object v2, p0, Lc8/aK;->seq:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    iget-object v0, p0, Lc8/aK;->future:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 28
    :cond_0
    return-void
.end method
