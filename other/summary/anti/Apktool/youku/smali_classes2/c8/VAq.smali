.class public final Lc8/VAq;
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
        "Lc8/Tlq;",
        "Lc8/Tlq;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lc8/Tlq;)Lc8/Tlq;
    .locals 1
    .param p1, "t"    # Lc8/Tlq;

    .prologue
    .line 163
    invoke-static {}, Lc8/bBq;->getInstance()Lc8/bBq;

    move-result-object v0

    invoke-virtual {v0}, Lc8/bBq;->getObservableExecutionHook()Lc8/XAq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/XAq;->onLift(Lc8/Tlq;)Lc8/Tlq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 160
    check-cast p1, Lc8/Tlq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/VAq;->call(Lc8/Tlq;)Lc8/Tlq;

    move-result-object v0

    return-object v0
.end method
