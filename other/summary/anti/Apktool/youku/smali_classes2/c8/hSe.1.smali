.class public final Lc8/hSe;
.super Ljava/lang/Object;
.source "CacheControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/iSe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field maxAgeSeconds:I

.field maxStaleSeconds:I

.field minFreshSeconds:I

.field noCache:Z

.field noStore:Z

.field noTransform:Z

.field onlyIfCached:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    iput v0, p0, Lc8/hSe;->maxAgeSeconds:I

    .line 276
    iput v0, p0, Lc8/hSe;->maxStaleSeconds:I

    .line 277
    iput v0, p0, Lc8/hSe;->minFreshSeconds:I

    return-void
.end method


# virtual methods
.method public build()Lc8/iSe;
    .locals 2

    .prologue
    .line 363
    new-instance v0, Lc8/iSe;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc8/iSe;-><init>(Lc8/hSe;Lc8/gSe;)V

    return-object v0
.end method

.method public maxStale(ILjava/util/concurrent/TimeUnit;)Lc8/hSe;
    .locals 5
    .param p1, "maxStale"    # I
    .param p2, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 320
    if-gez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "maxStale < 0: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 321
    :cond_0
    int-to-long v2, p1

    invoke-virtual {p2, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    .line 322
    .local v0, "maxStaleSecondsLong":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    const v2, 0x7fffffff

    :goto_0
    iput v2, p0, Lc8/hSe;->maxStaleSeconds:I

    .line 325
    return-object p0

    .line 322
    :cond_1
    long-to-int v2, v0

    goto :goto_0
.end method

.method public noCache()Lc8/hSe;
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/hSe;->noCache:Z

    .line 284
    return-object p0
.end method

.method public onlyIfCached()Lc8/hSe;
    .locals 1

    .prologue
    .line 352
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/hSe;->onlyIfCached:Z

    .line 353
    return-object p0
.end method
