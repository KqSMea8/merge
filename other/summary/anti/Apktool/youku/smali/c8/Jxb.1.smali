.class public final Lc8/Jxb;
.super Ljava/lang/Object;
.source "WorkFlow.java"

# interfaces
.implements Lc8/Hxb;


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
        "Lc8/Hxb",
        "<TI;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$node:Lc8/Kxb;


# direct methods
.method constructor <init>(Lc8/Kxb;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lc8/Jxb;->val$node:Lc8/Kxb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Iterable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)TR;"
        }
    .end annotation

    .prologue
    .line 293
    .local p1, "iterable":Ljava/lang/Iterable;, "TI;"
    iget-object v0, p0, Lc8/Jxb;->val$node:Lc8/Kxb;

    invoke-static {v0}, Lc8/Kxb;->access$400(Lc8/Kxb;)Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lc8/Jxb;->val$node:Lc8/Kxb;

    invoke-static {v0}, Lc8/Kxb;->access$400(Lc8/Kxb;)Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 296
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 290
    check-cast p1, Ljava/lang/Iterable;

    invoke-virtual {p0, p1}, Lc8/Jxb;->call(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
