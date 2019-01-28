.class public final Lc8/ctq;
.super Ljava/lang/Object;
.source "OperatorOnErrorResumeNextViaFunction.java"

# interfaces
.implements Lc8/Inq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/htq;->withSingle(Lc8/Inq;)Lc8/htq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/Inq",
        "<",
        "Ljava/lang/Throwable;",
        "Lc8/Vlq",
        "<+TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$resumeFunction:Lc8/Inq;


# direct methods
.method constructor <init>(Lc8/Inq;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lc8/ctq;->val$resumeFunction:Lc8/Inq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Throwable;)Lc8/Vlq;
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lc8/Vlq",
            "<+TT;>;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lc8/ctq;->val$resumeFunction:Lc8/Inq;

    invoke-interface {v0, p1}, Lc8/Inq;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lc8/Vlq;->just(Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 50
    check-cast p1, Ljava/lang/Throwable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/ctq;->call(Ljava/lang/Throwable;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method
