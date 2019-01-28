.class public final Lc8/IAq;
.super Ljava/lang/Object;
.source "RxJavaHooks.java"

# interfaces
.implements Lc8/Inq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/WAq;->initCreate()V
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
        "Lc8/Kmq;",
        "Lc8/Kmq;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lc8/Kmq;)Lc8/Kmq;
    .locals 1
    .param p1, "f"    # Lc8/Kmq;

    .prologue
    .line 210
    invoke-static {}, Lc8/bBq;->getInstance()Lc8/bBq;

    move-result-object v0

    invoke-virtual {v0}, Lc8/bBq;->getSingleExecutionHook()Lc8/dBq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/dBq;->onCreate(Lc8/Kmq;)Lc8/Kmq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 207
    check-cast p1, Lc8/Kmq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/IAq;->call(Lc8/Kmq;)Lc8/Kmq;

    move-result-object v0

    return-object v0
.end method
