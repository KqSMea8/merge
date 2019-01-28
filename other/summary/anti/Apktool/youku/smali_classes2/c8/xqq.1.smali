.class public Lc8/xqq;
.super Ljava/lang/Object;
.source "OnSubscribeRedo.java"

# interfaces
.implements Lc8/Jnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/yqq;->call(Lc8/Vlq;)Lc8/Vlq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/Jnq",
        "<",
        "Lc8/Qlq",
        "<",
        "Ljava/lang/Integer;",
        ">;",
        "Lc8/Qlq",
        "<*>;",
        "Lc8/Qlq",
        "<",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/yqq;


# direct methods
.method constructor <init>(Lc8/yqq;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lc8/xqq;->this$0:Lc8/yqq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lc8/Qlq;Lc8/Qlq;)Lc8/Qlq;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Qlq",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lc8/Qlq",
            "<*>;)",
            "Lc8/Qlq",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, "n":Lc8/Qlq;, "Lrx/Notification<Ljava/lang/Integer;>;"
    .local p2, "term":Lc8/Qlq;, "Lrx/Notification<*>;"
    invoke-virtual {p1}, Lc8/Qlq;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 111
    .local v0, "value":I
    iget-object v1, p0, Lc8/xqq;->this$0:Lc8/yqq;

    iget-object v1, v1, Lc8/yqq;->predicate:Lc8/Jnq;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2}, Lc8/Qlq;->getThrowable()Ljava/lang/Throwable;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lc8/Jnq;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lc8/Qlq;->createOnNext(Ljava/lang/Object;)Lc8/Qlq;

    move-result-object p2

    .line 114
    .end local p2    # "term":Lc8/Qlq;, "Lrx/Notification<*>;"
    :cond_0
    return-object p2
.end method

.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 106
    check-cast p1, Lc8/Qlq;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lc8/Qlq;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lc8/xqq;->call(Lc8/Qlq;Lc8/Qlq;)Lc8/Qlq;

    move-result-object v0

    return-object v0
.end method
