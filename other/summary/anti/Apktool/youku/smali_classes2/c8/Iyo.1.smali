.class public Lc8/Iyo;
.super Ljava/lang/Object;
.source "DeviceSupportUtil.java"


# static fields
.field private static final HD2_BLACK_LIST:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static HD2_CORES_REQUIREMENT:D

.field private static HD2_H265_HLS_CORES_REQUIREMENT:D

.field private static HD2_H265_HLS_FREQUENCY_REQUIREMENT:D

.field private static HD2_RAM_REQUIREMENT:D

.field private static HD3_RAM_REQUIREMENT:D

.field private static final HD3_WHITE_LIST:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mNumCores:I

.field private static mTotalRAM:D


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 21
    const-wide v4, 0x4133333333333333L    # 1258291.2

    sput-wide v4, Lc8/Iyo;->HD2_RAM_REQUIREMENT:D

    .line 23
    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    sput-wide v4, Lc8/Iyo;->HD2_CORES_REQUIREMENT:D

    .line 24
    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    sput-wide v4, Lc8/Iyo;->HD2_H265_HLS_CORES_REQUIREMENT:D

    .line 25
    const-wide v4, 0x40a1300000000000L    # 2200.0

    sput-wide v4, Lc8/Iyo;->HD2_H265_HLS_FREQUENCY_REQUIREMENT:D

    .line 28
    const-wide v4, 0x414599999999999aL    # 2831155.2

    sput-wide v4, Lc8/Iyo;->HD3_RAM_REQUIREMENT:D

    .line 35
    const/4 v4, 0x5

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v4, "HM 1SW"

    aput-object v4, v0, v3

    const-string/jumbo v4, "2014501"

    aput-object v4, v0, v7

    const-string/jumbo v4, "2014011"

    aput-object v4, v0, v8

    const-string/jumbo v4, "HM 1SC"

    aput-object v4, v0, v9

    const-string/jumbo v4, "HM 1STD"

    aput-object v4, v0, v10

    .line 41
    .local v0, "hd2BlackList":[Ljava/lang/String;
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    sput-object v4, Lc8/Iyo;->HD2_BLACK_LIST:Ljava/util/HashSet;

    .line 42
    array-length v5, v0

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 43
    .local v2, "item":Ljava/lang/String;
    sget-object v6, Lc8/Iyo;->HD2_BLACK_LIST:Ljava/util/HashSet;

    invoke-virtual {v6, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 42
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 49
    .end local v2    # "item":Ljava/lang/String;
    :cond_0
    const/16 v4, 0x9

    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v4, "Nexus 9"

    aput-object v4, v1, v3

    const-string/jumbo v4, "MI NOTE LTE"

    aput-object v4, v1, v7

    const-string/jumbo v4, "SM-N9100"

    aput-object v4, v1, v8

    const-string/jumbo v4, "HUAWEI NXT-AL10"

    aput-object v4, v1, v9

    const-string/jumbo v4, "HUAWEI GRA-UL10"

    aput-object v4, v1, v10

    const/4 v4, 0x5

    const-string/jumbo v5, "SM-G935T"

    aput-object v5, v1, v4

    const/4 v4, 0x6

    const-string/jumbo v5, "SM-G9350"

    aput-object v5, v1, v4

    const/4 v4, 0x7

    const-string/jumbo v5, "SM-G930\u0422"

    aput-object v5, v1, v4

    const/16 v4, 0x8

    const-string/jumbo v5, "SM-G930"

    aput-object v5, v1, v4

    .line 59
    .local v1, "hd3WhiteList":[Ljava/lang/String;
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    sput-object v4, Lc8/Iyo;->HD3_WHITE_LIST:Ljava/util/HashSet;

    .line 60
    array-length v4, v1

    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v2, v1, v3

    .line 61
    .restart local v2    # "item":Ljava/lang/String;
    sget-object v5, Lc8/Iyo;->HD3_WHITE_LIST:Ljava/util/HashSet;

    invoke-virtual {v5, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 60
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 62
    .end local v2    # "item":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getNumCores()I
    .locals 4

    .prologue
    .line 98
    sget v2, Lc8/Iyo;->mNumCores:I

    if-eqz v2, :cond_0

    .line 99
    sget v2, Lc8/Iyo;->mNumCores:I

    .line 119
    .local v0, "dir":Ljava/io/File;
    :goto_0
    return v2

    .line 102
    .end local v0    # "dir":Ljava/io/File;
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "/sys/devices/system/cpu/"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    .restart local v0    # "dir":Ljava/io/File;
    new-instance v2, Lc8/Hyo;

    invoke-direct {v2}, Lc8/Hyo;-><init>()V

    invoke-virtual {v0, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 114
    .local v1, "files":[Ljava/io/File;
    array-length v2, v1

    sput v2, Lc8/Iyo;->mNumCores:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .end local v1    # "files":[Ljava/io/File;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "NumCores="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lc8/Iyo;->mNumCores:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    sget v2, Lc8/Iyo;->mNumCores:I

    goto :goto_0

    .line 116
    :catch_0
    move-exception v2

    const/4 v2, 0x1

    sput v2, Lc8/Iyo;->mNumCores:I

    goto :goto_1
.end method

.method private static getTotalRAM()D
    .locals 14

    .prologue
    const-wide/high16 v12, 0x4090000000000000L    # 1024.0

    .line 72
    sget-wide v8, Lc8/Iyo;->mTotalRAM:D

    const-wide/16 v10, 0x0

    cmpl-double v7, v8, v10

    if-eqz v7, :cond_0

    .line 73
    sget-wide v8, Lc8/Iyo;->mTotalRAM:D

    .line 94
    .local v1, "format":Ljava/text/DecimalFormat;
    .local v5, "reader":Ljava/io/BufferedReader;
    :goto_0
    return-wide v8

    .line 76
    .end local v1    # "format":Ljava/text/DecimalFormat;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    :cond_0
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    const-string/jumbo v8, "/proc/meminfo"

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 77
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, "load":Ljava/lang/String;
    const-string/jumbo v7, "(\\d+)"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 79
    .local v4, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 80
    .local v3, "m":Ljava/util/regex/Matcher;
    const-string/jumbo v6, ""

    .line 81
    .local v6, "value":Ljava/lang/String;
    :goto_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 82
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 84
    :cond_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 85
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 87
    sput-wide v8, Lc8/Iyo;->mTotalRAM:D

    const-wide v10, 0x411f400000000000L    # 512000.0

    add-double/2addr v8, v10

    sput-wide v8, Lc8/Iyo;->mTotalRAM:D
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .end local v2    # "load":Ljava/lang/String;
    .end local v3    # "m":Ljava/util/regex/Matcher;
    .end local v4    # "p":Ljava/util/regex/Pattern;
    .end local v6    # "value":Ljava/lang/String;
    :goto_2
    new-instance v1, Ljava/text/DecimalFormat;

    const-string/jumbo v7, "0.00"

    invoke-direct {v1, v7}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 93
    .restart local v1    # "format":Ljava/text/DecimalFormat;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "total RAM="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-wide v8, Lc8/Iyo;->mTotalRAM:D

    div-double/2addr v8, v12

    div-double/2addr v8, v12

    invoke-virtual {v1, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "GB"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    sget-wide v8, Lc8/Iyo;->mTotalRAM:D

    goto :goto_0

    .line 88
    .end local v1    # "format":Ljava/text/DecimalFormat;
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public static isHD2Supported()Z
    .locals 4

    .prologue
    .line 68
    sget-object v0, Lc8/Iyo;->HD2_BLACK_LIST:Ljava/util/HashSet;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lc8/Iyo;->getTotalRAM()D

    move-result-wide v0

    sget-wide v2, Lc8/Iyo;->HD2_RAM_REQUIREMENT:D

    cmpl-double v0, v0, v2

    if-gez v0, :cond_0

    .line 69
    invoke-static {}, Lc8/Iyo;->getNumCores()I

    move-result v0

    int-to-double v0, v0

    sget-wide v2, Lc8/Iyo;->HD2_CORES_REQUIREMENT:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHD3Supported()Z
    .locals 4

    .prologue
    .line 127
    invoke-static {}, Lc8/Iyo;->getTotalRAM()D

    move-result-wide v0

    sget-wide v2, Lc8/Iyo;->HD3_RAM_REQUIREMENT:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
