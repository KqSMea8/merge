.class public final Lc8/Vvf;
.super Ljava/lang/Object;
.source "MemoryCacheProducer.java"

# interfaces
.implements Lc8/bwf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Wvf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public recycle(Lc8/cwf;)V
    .locals 2
    .param p1, "staticImage"    # Lc8/cwf;

    .prologue
    .line 24
    invoke-static {}, Lc8/ixf;->instance()Lc8/ixf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/ixf;->bitmapPoolBuilder()Lc8/qvf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/qvf;->build()Lc8/lvf;

    move-result-object v0

    .line 25
    .local v0, "pool":Lc8/lvf;
    if-eqz v0, :cond_0

    .line 26
    invoke-interface {v0, p1}, Lc8/lvf;->putIntoPool(Lc8/Svf;)Z

    .line 28
    :cond_0
    return-void
.end method
