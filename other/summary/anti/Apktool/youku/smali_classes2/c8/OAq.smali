.class public final Lc8/OAq;
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
        "Lc8/Vlq;",
        "Lc8/Rlq;",
        "Lc8/Rlq;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lc8/Vlq;Lc8/Rlq;)Lc8/Rlq;
    .locals 1
    .param p1, "t1"    # Lc8/Vlq;
    .param p2, "t2"    # Lc8/Rlq;

    .prologue
    .line 114
    invoke-static {}, Lc8/bBq;->getInstance()Lc8/bBq;

    move-result-object v0

    invoke-virtual {v0}, Lc8/bBq;->getObservableExecutionHook()Lc8/XAq;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lc8/XAq;->onSubscribeStart(Lc8/Vlq;Lc8/Rlq;)Lc8/Rlq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 111
    check-cast p1, Lc8/Vlq;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lc8/Rlq;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lc8/OAq;->call(Lc8/Vlq;Lc8/Rlq;)Lc8/Rlq;

    move-result-object v0

    return-object v0
.end method
