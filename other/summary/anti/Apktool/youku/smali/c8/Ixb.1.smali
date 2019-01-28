.class public final Lc8/Ixb;
.super Ljava/lang/Object;
.source "WorkFlow.java"

# interfaces
.implements Lc8/eyb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Kxb;->make(Lc8/fyb;)Lc8/fyb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/eyb",
        "<TI;>;"
    }
.end annotation


# instance fields
.field final synthetic val$node:Lc8/Kxb;


# direct methods
.method constructor <init>(Lc8/Kxb;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lc8/Ixb;->val$node:Lc8/Kxb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCall(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V"
        }
    .end annotation

    .prologue
    .line 287
    .local p1, "iterator":Ljava/lang/Iterable;, "TI;"
    iget-object v0, p0, Lc8/Ixb;->val$node:Lc8/Kxb;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/Kxb;->access$402(Lc8/Kxb;Ljava/util/Iterator;)Ljava/util/Iterator;

    .line 288
    return-void
.end method

.method public bridge synthetic onCall(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 284
    check-cast p1, Ljava/lang/Iterable;

    invoke-virtual {p0, p1}, Lc8/Ixb;->onCall(Ljava/lang/Iterable;)V

    return-void
.end method
