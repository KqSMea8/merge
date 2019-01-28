.class public Lc8/NMn;
.super Ljava/lang/Object;
.source "NetCache.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DNSPreParse()V
    .locals 0

    .prologue
    .line 28
    return-void
.end method

.method public static GenerateCacheFile(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "file_id"    # Ljava/lang/String;
    .param p1, "file_path"    # Ljava/lang/String;

    .prologue
    .line 41
    const/4 v0, -0x1

    return v0
.end method

.method public static GetDownloadSpeed([I)I
    .locals 1
    .param p0, "speed"    # [I

    .prologue
    .line 51
    const/4 v0, -0x1

    return v0
.end method

.method public static SetUserAgent(Ljava/lang/String;)V
    .locals 0
    .param p0, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 31
    return-void
.end method

.method private static getIpByHttpDns(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "host"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-static {p0}, Lc8/GOm;->getIpArrayByOrange(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "dns":Ljava/lang/String;
    return-object v0
.end method

.method public static memory_count()I
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public static memory_dump()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method public static start(Ljava/lang/String;J)I
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "capacity"    # J

    .prologue
    .line 21
    const/4 v0, 0x0

    return v0
.end method

.method public static stop()V
    .locals 0

    .prologue
    .line 25
    return-void
.end method
