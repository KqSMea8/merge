.class public final Lc8/Unq;
.super Ljava/lang/Object;
.source "Functions.java"

# interfaces
.implements Lc8/Rnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/hoq;->fromAction(Lc8/hnq;)Lc8/Rnq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/Rnq",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$f:Lc8/hnq;


# direct methods
.method constructor <init>(Lc8/hnq;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lc8/Unq;->val$f:Lc8/hnq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 305
    invoke-virtual {p0, p1}, Lc8/Unq;->call([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs call([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 2
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 309
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 310
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Action0 expecting 0 arguments."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_0
    iget-object v0, p0, Lc8/Unq;->val$f:Lc8/hnq;

    invoke-interface {v0}, Lc8/hnq;->call()V

    .line 313
    const/4 v0, 0x0

    return-object v0
.end method
