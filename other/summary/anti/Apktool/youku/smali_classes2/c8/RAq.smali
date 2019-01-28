.class public final Lc8/RAq;
.super Ljava/lang/Object;
.source "RxJavaHooks.java"

# interfaces
.implements Lc8/Inq;


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
        "Lc8/Inq",
        "<",
        "Lc8/Pmq;",
        "Lc8/Pmq;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lc8/Pmq;)Lc8/Pmq;
    .locals 1
    .param p1, "f"    # Lc8/Pmq;

    .prologue
    .line 135
    invoke-static {}, Lc8/bBq;->getInstance()Lc8/bBq;

    move-result-object v0

    invoke-virtual {v0}, Lc8/bBq;->getSingleExecutionHook()Lc8/dBq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/dBq;->onSubscribeReturn(Lc8/Pmq;)Lc8/Pmq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 132
    check-cast p1, Lc8/Pmq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/RAq;->call(Lc8/Pmq;)Lc8/Pmq;

    move-result-object v0

    return-object v0
.end method
