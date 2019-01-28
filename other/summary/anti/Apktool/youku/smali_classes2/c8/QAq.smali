.class public final Lc8/QAq;
.super Ljava/lang/Object;
.source "RxJavaHooks.java"

# interfaces
.implements Lc8/Jnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/WAq;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/Jnq",
        "<",
        "Lc8/Mmq;",
        "Lc8/Rlq;",
        "Lc8/Rlq;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lc8/Mmq;Lc8/Rlq;)Lc8/Rlq;
    .locals 1
    .param p1, "t1"    # Lc8/Mmq;
    .param p2, "t2"    # Lc8/Rlq;

    .prologue
    .line 128
    invoke-static {}, Lc8/bBq;->getInstance()Lc8/bBq;

    move-result-object v0

    invoke-virtual {v0}, Lc8/bBq;->getSingleExecutionHook()Lc8/dBq;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lc8/dBq;->onSubscribeStart(Lc8/Mmq;Lc8/Rlq;)Lc8/Rlq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 125
    check-cast p1, Lc8/Mmq;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lc8/Rlq;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lc8/QAq;->call(Lc8/Mmq;Lc8/Rlq;)Lc8/Rlq;

    move-result-object v0

    return-object v0
.end method
