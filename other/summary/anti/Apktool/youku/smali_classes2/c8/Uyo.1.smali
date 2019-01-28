.class public Lc8/Uyo;
.super Ljava/lang/Object;
.source "SDCardManager.java"


# static fields
.field private static final DIR_SEPORATOR:Ljava/util/regex/Pattern;


# instance fields
.field private nSDFreeSize:J

.field private nSDTotalSize:J

.field private sdPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 393
    const-string/jumbo v0, "/"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lc8/Uyo;->DIR_SEPORATOR:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "sdPath"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lc8/Uyo;->sdPath:Ljava/lang/String;

    .line 51
    invoke-direct {p0}, Lc8/Uyo;->init()V

    .line 52
    return-void
.end method

.method public static hasSDCard()Z
    .locals 2

    .prologue
    .line 207
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private init()V
    .locals 10

    .prologue
    .line 57
    :try_start_0
    new-instance v4, Landroid/os/StatFs;

    iget-object v5, p0, Lc8/Uyo;->sdPath:Ljava/lang/String;

    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 58
    .local v4, "statFs":Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockCount()I

    move-result v5

    int-to-long v6, v5

    .line 59
    .local v6, "totalBlocks":J
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v0, v5

    .line 60
    .local v0, "availableBlocks":J
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v2, v5

    .line 61
    .local v2, "blockSize":J
    mul-long v8, v6, v2

    iput-wide v8, p0, Lc8/Uyo;->nSDTotalSize:J

    .line 62
    mul-long v8, v0, v2

    iput-wide v8, p0, Lc8/Uyo;->nSDFreeSize:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v0    # "availableBlocks":J
    .end local v2    # "blockSize":J
    .end local v4    # "statFs":Landroid/os/StatFs;
    .end local v6    # "totalBlocks":J
    :goto_0
    return-void

    :catch_0
    move-exception v5

    goto :goto_0
.end method
