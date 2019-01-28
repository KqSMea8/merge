.class public final Lc8/SAq;
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
        "Lc8/Plq;",
        "Lc8/Llq;",
        "Lc8/Llq;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lc8/Plq;Lc8/Llq;)Lc8/Llq;
    .locals 1
    .param p1, "t1"    # Lc8/Plq;
    .param p2, "t2"    # Lc8/Llq;

    .prologue
    .line 142
    invoke-static {}, Lc8/bBq;->getInstance()Lc8/bBq;

    move-result-object v0

    invoke-virtual {v0}, Lc8/bBq;->getCompletableExecutionHook()Lc8/BAq;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lc8/BAq;->onSubscribeStart(Lc8/Plq;Lc8/Llq;)Lc8/Llq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 139
    check-cast p1, Lc8/Plq;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lc8/Llq;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lc8/SAq;->call(Lc8/Plq;Lc8/Llq;)Lc8/Llq;

    move-result-object v0

    return-object v0
.end method
