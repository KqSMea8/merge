.class public Lc8/Kxf;
.super Ljava/lang/Object;
.source "ImageStatistics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/phenix/request/ImageStatistics$FromType;
    }
.end annotation


# static fields
.field public static final KEY_BITMAP_DECODE:Ljava/lang/String; = "decode"

.field public static final KEY_BITMAP_PROCESS:Ljava/lang/String; = "bitmapProcess"

.field public static final KEY_BITMAP_SCALE:Ljava/lang/String; = "scaleTime"

.field public static final KEY_DECODE_WAIT_SIZE:Ljava/lang/String; = "decodeWaitSize"

.field public static final KEY_MASTER_WAIT_SIZE:Ljava/lang/String; = "masterWaitSize"

.field public static final KEY_NETWORK_CONNECT:Ljava/lang/String; = "connect"

.field public static final KEY_NETWORK_DOWNLOAD:Ljava/lang/String; = "download"

.field public static final KEY_NETWORK_WAIT_SIZE:Ljava/lang/String; = "networkWaitSize"

.field public static final KEY_READ_DISK_CACHE:Ljava/lang/String; = "cacheLookup"

.field public static final KEY_READ_LOCAL_FILE:Ljava/lang/String; = "localFile"

.field public static final KEY_READ_MEMORY_CACHE:Ljava/lang/String; = "memoryLookup"

.field public static final KEY_SCHEDULE_TIME:Ljava/lang/String; = "scheduleTime"

.field public static final KEY_TOTAL_TIME:Ljava/lang/String; = "totalTime"

.field public static final KEY_WAIT_FOR_MAIN:Ljava/lang/String; = "waitForMain"


# instance fields
.field private mBitmapPoolHitCount:I

.field private mBitmapPoolMissCount:I

.field private mDetailCost:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDiskCacheHitCount:I

.field private mDiskCacheMissCount:I

.field private mDiskCachePriority:I

.field private mExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFormat:Lc8/Yuf;

.field private mFromType:Lcom/taobao/phenix/request/ImageStatistics$FromType;

.field private mIsDuplicated:Z

.field private final mIsRetrying:Z

.field private mRequestStartTime:J

.field private mSize:I

.field private final mUriInfo:Lc8/Lxf;


# direct methods
.method public constructor <init>(Lc8/Lxf;)V
    .locals 1
    .param p1, "uriInfo"    # Lc8/Lxf;

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc8/Kxf;-><init>(Lc8/Lxf;Z)V

    .line 106
    return-void
.end method

.method public constructor <init>(Lc8/Lxf;Z)V
    .locals 1
    .param p1, "uriInfo"    # Lc8/Lxf;
    .param p2, "retrying"    # Z

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    sget-object v0, Lcom/taobao/phenix/request/ImageStatistics$FromType;->FROM_UNKNOWN:Lcom/taobao/phenix/request/ImageStatistics$FromType;

    iput-object v0, p0, Lc8/Kxf;->mFromType:Lcom/taobao/phenix/request/ImageStatistics$FromType;

    .line 100
    iput-object p1, p0, Lc8/Kxf;->mUriInfo:Lc8/Lxf;

    .line 101
    iput-boolean p2, p0, Lc8/Kxf;->mIsRetrying:Z

    .line 102
    return-void
.end method


# virtual methods
.method public duplicate(Z)V
    .locals 0
    .param p1, "isDuplicated"    # Z

    .prologue
    .line 212
    iput-boolean p1, p0, Lc8/Kxf;->mIsDuplicated:Z

    .line 213
    return-void
.end method

.method public fromType(Lcom/taobao/phenix/request/ImageStatistics$FromType;)V
    .locals 0
    .param p1, "fromType"    # Lcom/taobao/phenix/request/ImageStatistics$FromType;

    .prologue
    .line 125
    iput-object p1, p0, Lc8/Kxf;->mFromType:Lcom/taobao/phenix/request/ImageStatistics$FromType;

    .line 126
    return-void
.end method

.method public getBitmapPoolHitCount()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lc8/Kxf;->mBitmapPoolHitCount:I

    return v0
.end method

.method public getBitmapPoolMissCount()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lc8/Kxf;->mBitmapPoolMissCount:I

    return v0
.end method

.method public getDetailCost()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lc8/Kxf;->mDetailCost:Ljava/util/Map;

    return-object v0
.end method

.method public getDiskCacheHitCount()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lc8/Kxf;->mDiskCacheHitCount:I

    return v0
.end method

.method public getDiskCacheMissCount()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lc8/Kxf;->mDiskCacheMissCount:I

    return v0
.end method

.method public getDiskCachePriority()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lc8/Kxf;->mDiskCachePriority:I

    return v0
.end method

.method public getExtras()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lc8/Kxf;->mExtras:Ljava/util/Map;

    return-object v0
.end method

.method public getFormat()Lc8/Yuf;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lc8/Kxf;->mFormat:Lc8/Yuf;

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lc8/Kxf;->mUriInfo:Lc8/Lxf;

    invoke-virtual {v0}, Lc8/Lxf;->getImageExtension()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/cxf;->getMimeTypeByExtension(Ljava/lang/String;)Lc8/Yuf;

    move-result-object v0

    iput-object v0, p0, Lc8/Kxf;->mFormat:Lc8/Yuf;

    .line 184
    :cond_0
    iget-object v0, p0, Lc8/Kxf;->mFormat:Lc8/Yuf;

    return-object v0
.end method

.method public getFromType()Lcom/taobao/phenix/request/ImageStatistics$FromType;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lc8/Kxf;->mFromType:Lcom/taobao/phenix/request/ImageStatistics$FromType;

    return-object v0
.end method

.method public getRequestStartTime()J
    .locals 2

    .prologue
    .line 109
    iget-wide v0, p0, Lc8/Kxf;->mRequestStartTime:J

    return-wide v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lc8/Kxf;->mSize:I

    return v0
.end method

.method public getUriInfo()Lc8/Lxf;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lc8/Kxf;->mUriInfo:Lc8/Lxf;

    return-object v0
.end method

.method public isDuplicated()Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lc8/Kxf;->mIsDuplicated:Z

    return v0
.end method

.method public isRetrying()Z
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Lc8/Kxf;->mIsRetrying:Z

    return v0
.end method

.method public onBitmapPoolLookedUp(Z)V
    .locals 1
    .param p1, "isHit"    # Z

    .prologue
    .line 161
    if-eqz p1, :cond_0

    .line 162
    iget v0, p0, Lc8/Kxf;->mBitmapPoolHitCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc8/Kxf;->mBitmapPoolHitCount:I

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_0
    iget v0, p0, Lc8/Kxf;->mBitmapPoolMissCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc8/Kxf;->mBitmapPoolMissCount:I

    goto :goto_0
.end method

.method public onDiskCacheLookedUp(Z)V
    .locals 1
    .param p1, "isHit"    # Z

    .prologue
    .line 153
    if-eqz p1, :cond_0

    .line 154
    iget v0, p0, Lc8/Kxf;->mDiskCacheHitCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc8/Kxf;->mDiskCacheHitCount:I

    .line 158
    :goto_0
    return-void

    .line 156
    :cond_0
    iget v0, p0, Lc8/Kxf;->mDiskCacheMissCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc8/Kxf;->mDiskCacheMissCount:I

    goto :goto_0
.end method

.method public setCompressFormat(Lc8/Yuf;)V
    .locals 0
    .param p1, "compressFormat"    # Lc8/Yuf;

    .prologue
    .line 188
    iput-object p1, p0, Lc8/Kxf;->mFormat:Lc8/Yuf;

    .line 189
    return-void
.end method

.method public setDetailCost(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p1, "detailCost":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    iput-object p1, p0, Lc8/Kxf;->mDetailCost:Ljava/util/Map;

    .line 197
    return-void
.end method

.method public setDiskCachePriority(I)V
    .locals 0
    .param p1, "diskCachePriority"    # I

    .prologue
    .line 129
    iput p1, p0, Lc8/Kxf;->mDiskCachePriority:I

    .line 130
    return-void
.end method

.method public setExtras(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 177
    .local p1, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lc8/Kxf;->mExtras:Ljava/util/Map;

    .line 178
    return-void
.end method

.method public setRequestStartTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 113
    iput-wide p1, p0, Lc8/Kxf;->mRequestStartTime:J

    .line 114
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 169
    iput p1, p0, Lc8/Kxf;->mSize:I

    .line 170
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ImageStatistics(FromType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/Kxf;->mFromType:Lcom/taobao/phenix/request/ImageStatistics$FromType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", Duplicated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lc8/Kxf;->mIsDuplicated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", Retrying="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lc8/Kxf;->mIsRetrying:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", Size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc8/Kxf;->mSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", Format="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/Kxf;->mFormat:Lc8/Yuf;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", DetailCost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/Kxf;->mDetailCost:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
