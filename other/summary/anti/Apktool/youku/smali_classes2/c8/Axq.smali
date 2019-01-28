.class public final Lc8/Axq;
.super Lc8/Yxq;
.source "IndexedRingBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Dxq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Yxq",
        "<",
        "Lc8/Dxq",
        "<*>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lc8/Yxq;-><init>()V

    return-void
.end method


# virtual methods
.method protected createObject()Lc8/Dxq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/Dxq",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 59
    new-instance v0, Lc8/Dxq;

    invoke-direct {v0}, Lc8/Dxq;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic createObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lc8/Axq;->createObject()Lc8/Dxq;

    move-result-object v0

    return-object v0
.end method
