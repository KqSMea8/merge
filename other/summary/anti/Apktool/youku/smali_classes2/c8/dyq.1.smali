.class public final Lc8/dyq;
.super Lc8/Yxq;
.source "RxRingBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/fyq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Yxq",
        "<",
        "Ljava/util/Queue",
        "<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 264
    invoke-direct {p0}, Lc8/Yxq;-><init>()V

    return-void
.end method


# virtual methods
.method protected createObject()Lc8/hzq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/hzq",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 268
    new-instance v0, Lc8/hzq;

    sget v1, Lc8/fyq;->SIZE:I

    invoke-direct {v0, v1}, Lc8/hzq;-><init>(I)V

    return-object v0
.end method

.method protected bridge synthetic createObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 264
    invoke-virtual {p0}, Lc8/dyq;->createObject()Lc8/hzq;

    move-result-object v0

    return-object v0
.end method
