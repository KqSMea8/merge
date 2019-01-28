.class public final Lc8/Ynq;
.super Ljava/lang/Object;
.source "Functions.java"

# interfaces
.implements Lc8/Rnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/hoq;->fromFunc(Lc8/Hnq;)Lc8/Rnq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/Rnq",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$f:Lc8/Hnq;


# direct methods
.method constructor <init>(Lc8/Hnq;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lc8/Ynq;->val$f:Lc8/Hnq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 36
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Func0 expecting 0 arguments."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    iget-object v0, p0, Lc8/Ynq;->val$f:Lc8/Hnq;

    invoke-interface {v0}, Lc8/Hnq;->call()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
