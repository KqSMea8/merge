.class public Lc8/STb;
.super Ljava/lang/Object;
.source "UTConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/RTb;,
        Lc8/QTb;,
        Lc8/PTb;
    }
.end annotation


# static fields
.field public static final G_ABTEST_URL:Ljava/lang/String; = "http://adash.m.taobao.com/rest/abtest"

.field public static final G_CONF_URL:Ljava/lang/String; = "http://c-adash.m.taobao.com/rest/gc"

.field public static G_FIXED_TRANSFER_URL:Ljava/lang/String; = null

.field public static final G_LOG_CACHE_CAPACITY:I = 0x3e8

.field public static final G_MAX_CONNECTION_TIME_OUT:I = 0x2710

.field public static final G_MAX_PER_LOG_SIZE:I = 0x19000

.field public static final G_MAX_PER_TRANSFER_COUNT:I = 0x64

.field public static final G_MAX_PER_UPLOAD_PACKAGE_SIZE:I = 0x19000

.field public static final G_MAX_READ_CONNECTION_STREAM_TIME_OUT:I = 0x7530

.field public static final G_SDK_VERSION:Ljava/lang/String; = "4.1.0"

.field private static G_TRANSFER_URL:Ljava/lang/String; = null

.field public static final G_UPLOAD_INTERVAL:I = 0x1e


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string/jumbo v0, "http://adash.m.taobao.com/rest/sur"

    sput-object v0, Lc8/STb;->G_FIXED_TRANSFER_URL:Ljava/lang/String;

    .line 40
    const-string/jumbo v0, "http://adash.m.taobao.com/rest/sur"

    sput-object v0, Lc8/STb;->G_TRANSFER_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method public static getRC4PrivateKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string/jumbo v0, "QrMgt8GGYI6T52ZY5AnhtxkLzb8egpFn3j5JELI8H6wtACbUnZ5cc3aYTsTRbmkAkRJeYbtx92LPBWm7nBO9UIl7y5i5MQNmUZNf5QENurR5tGyo7yJ2G0MBjWvy6iAtlAbacKP0SwOUeUWx5dsBdyhxa7Id1APtybSdDgicBDuNjI0mlZFUzZSS9dmN8lBD0WTVOMz0pRZbR3cysomRXOO1ghqjJdTcyDIxzpNAEszN8RMGjrzyU7Hjbmwi6YNK"

    return-object v0
.end method

.method public static declared-synchronized getTransferUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    const-class v0, Lc8/STb;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lc8/STb;->G_TRANSFER_URL:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setTransferUrl(Ljava/lang/String;)V
    .locals 2
    .param p0, "aUrl"    # Ljava/lang/String;

    .prologue
    .line 53
    const-class v0, Lc8/STb;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lc8/STb;->G_TRANSFER_URL:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit v0

    return-void

    .line 53
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
