.class public Lc8/tx;
.super Ljava/lang/Object;
.source "ViewInfoStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/vx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InfoRecord"
.end annotation


# static fields
.field static final FLAG_APPEAR:I = 0x2

.field static final FLAG_APPEAR_AND_DISAPPEAR:I = 0x3

.field static final FLAG_APPEAR_PRE_AND_POST:I = 0xe

.field static final FLAG_DISAPPEARED:I = 0x1

.field static final FLAG_POST:I = 0x8

.field static final FLAG_PRE:I = 0x4

.field static final FLAG_PRE_AND_POST:I = 0xc

.field static sPool:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Lc8/tx;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field flags:I

.field postInfo:Lc8/pv;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field preInfo:Lc8/pv;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 307
    new-instance v0, Landroid/support/v4/util/Pools$SimplePool;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/support/v4/util/Pools$SimplePool;-><init>(I)V

    sput-object v0, Lc8/tx;->sPool:Landroid/support/v4/util/Pools$Pool;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    return-void
.end method

.method static drainCache()V
    .locals 1

    .prologue
    .line 326
    :cond_0
    sget-object v0, Lc8/tx;->sPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 327
    return-void
.end method

.method static obtain()Lc8/tx;
    .locals 2

    .prologue
    .line 313
    sget-object v1, Lc8/tx;->sPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v1}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/tx;

    .line 314
    .local v0, "record":Lc8/tx;
    if-nez v0, :cond_0

    new-instance v0, Lc8/tx;

    .end local v0    # "record":Lc8/tx;
    invoke-direct {v0}, Lc8/tx;-><init>()V

    :cond_0
    return-object v0
.end method

.method static recycle(Lc8/tx;)V
    .locals 2
    .param p0, "record"    # Lc8/tx;

    .prologue
    const/4 v1, 0x0

    .line 318
    const/4 v0, 0x0

    iput v0, p0, Lc8/tx;->flags:I

    .line 319
    iput-object v1, p0, Lc8/tx;->preInfo:Lc8/pv;

    .line 320
    iput-object v1, p0, Lc8/tx;->postInfo:Lc8/pv;

    .line 321
    sget-object v0, Lc8/tx;->sPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0, p0}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 322
    return-void
.end method
