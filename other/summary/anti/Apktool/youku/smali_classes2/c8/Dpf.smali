.class public Lc8/Dpf;
.super Ljava/lang/Object;
.source "DiskStorageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Fpf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Params"
.end annotation


# instance fields
.field public final mCacheSizeLimitMinimum:J

.field public final mDefaultCacheSizeLimit:J

.field public final mLowDiskSpaceCacheSizeLimit:J


# direct methods
.method public constructor <init>(JJJ)V
    .locals 1
    .param p1, "cacheSizeLimitMinimum"    # J
    .param p3, "lowDiskSpaceCacheSizeLimit"    # J
    .param p5, "defaultCacheSizeLimit"    # J

    .prologue
    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 556
    iput-wide p1, p0, Lc8/Dpf;->mCacheSizeLimitMinimum:J

    .line 557
    iput-wide p3, p0, Lc8/Dpf;->mLowDiskSpaceCacheSizeLimit:J

    .line 558
    iput-wide p5, p0, Lc8/Dpf;->mDefaultCacheSizeLimit:J

    .line 559
    return-void
.end method
