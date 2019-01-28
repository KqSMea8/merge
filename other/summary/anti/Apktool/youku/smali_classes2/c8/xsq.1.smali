.class public final Lc8/xsq;
.super Ljava/lang/Object;
.source "OperatorMapPair.java"

# interfaces
.implements Lc8/Inq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Asq;->convertSelector(Lc8/Inq;)Lc8/Inq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/Inq",
        "<TT;",
        "Lc8/Vlq",
        "<TU;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$selector:Lc8/Inq;


# direct methods
.method constructor <init>(Lc8/Inq;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lc8/xsq;->val$selector:Lc8/Inq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lc8/Vlq",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "t1":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/xsq;->val$selector:Lc8/Inq;

    invoke-interface {v0, p1}, Lc8/Inq;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lc8/Vlq;->from(Ljava/lang/Iterable;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lc8/xsq;->call(Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method
