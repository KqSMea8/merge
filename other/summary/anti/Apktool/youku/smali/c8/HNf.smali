.class public Lc8/HNf;
.super Ljava/lang/Object;
.source "TaobaoImageUrlStrategy.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/GNf;,
        Lc8/DNf;,
        Lc8/ENf;,
        Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageSharpen;,
        Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;,
        Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;,
        Lc8/FNf;
    }
.end annotation


# static fields
.field private static final APG_DOMAIN_DEST:Ljava/lang/String; = "ms.alicdn.com"

.field private static final CDN:[I

.field private static final CDN10000Height:[I

.field private static final CDN10000Width:[I

.field private static final DEFAULT_LEVEL_RATIO:F = 0.1f

.field private static final DOMAIN_DEST:Ljava/lang/String; = "gw.alicdn.com"

.field private static final FUZZY_EXCLUDE_PATH:[Ljava/lang/String;

.field private static final LEVEL_MODEL_CDN:[I

.field private static final LEVEL_MODEL_XZCDN:[I

.field private static final LOOSE_CDN_DOMAIN_BLACK_LIST:[Ljava/lang/String;

.field private static final LOOSE_CDN_DOMAIN_WHITE_LIST:[Ljava/lang/String;

.field private static final LOOSE_CONVERGENCE_BLACK_LIST:[Ljava/lang/String;

.field private static final STRICT_CDN_DOMAIN_BLACK_LIST:[Ljava/lang/String;

.field private static final STRICT_CDN_DOMAIN_WHITE_LIST:[Ljava/lang/String;

.field private static final STRICT_CONVERGENCE_BLACK_LIST:[Ljava/lang/String;

.field private static final XZCDN:[I


# instance fields
.field private mApgBizWhiteList:[I

.field private mApgImageDomain:Ljava/lang/String;

.field private mCdn10000Height:[I

.field private mCdn10000Width:[I

.field private mCdnSizes:[I

.field private mDip:F

.field private mDoMainDest:Ljava/lang/String;

.field private mDomainSwitch:Z

.field private mFuzzyExcludePath:[Ljava/lang/String;

.field private mGlobalSwitch:Z

.field private mIsLowQuality:Z

.field private mIsNetworkSlow:Z

.field private mLastUpdateTime:J

.field private mLevelModelCdnSizes:[I

.field private mLevelModelXzCdnSizes:[I

.field private mLevelRatio:F

.field private mLooseCDNDomainBlackList:[Ljava/lang/String;

.field private mLooseCDNDomainWhiteList:[Ljava/lang/String;

.field private mLooseConvergenceBlackList:[Ljava/lang/String;

.field private mServiceImageSwitchList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lc8/ENf;",
            ">;"
        }
    .end annotation
.end field

.field private mStrictCDNDomainBlackList:[Ljava/lang/String;

.field private mStrictCDNDomainWhiteList:[Ljava/lang/String;

.field private mStrictConvergenceBlackList:[Ljava/lang/String;

.field private mWebpOn:Z

.field private mXzCdnSizes:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 27
    const/16 v0, 0x3d

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lc8/HNf;->CDN:[I

    .line 30
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lc8/HNf;->CDN10000Width:[I

    .line 31
    new-array v0, v7, [I

    fill-array-data v0, :array_2

    sput-object v0, Lc8/HNf;->CDN10000Height:[I

    .line 32
    const/16 v0, 0x16

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lc8/HNf;->XZCDN:[I

    .line 33
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lc8/HNf;->LEVEL_MODEL_CDN:[I

    .line 34
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lc8/HNf;->LEVEL_MODEL_XZCDN:[I

    .line 38
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "getAvatar"

    aput-object v1, v0, v3

    sput-object v0, Lc8/HNf;->FUZZY_EXCLUDE_PATH:[Ljava/lang/String;

    .line 44
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, ".alicdn.com"

    aput-object v1, v0, v3

    const-string/jumbo v1, ".tbcdn.cn"

    aput-object v1, v0, v4

    const-string/jumbo v1, ".taobaocdn.com"

    aput-object v1, v0, v5

    const-string/jumbo v1, ".wimg.taobao.com"

    aput-object v1, v0, v6

    const-string/jumbo v1, "img.taobao.com"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "i.mmcdn.cn"

    aput-object v2, v0, v1

    sput-object v0, Lc8/HNf;->LOOSE_CDN_DOMAIN_WHITE_LIST:[Ljava/lang/String;

    .line 46
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "a.tbcdn.cn"

    aput-object v1, v0, v3

    const-string/jumbo v1, "b.tbcdn.cn"

    aput-object v1, v0, v4

    const-string/jumbo v1, "gqrcode.alicdn.com"

    aput-object v1, v0, v5

    const-string/jumbo v1, "g.tbcdn.cn"

    aput-object v1, v0, v6

    const-string/jumbo v1, "m.alicdn.com"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "assets.alicdn.com"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "g.alicdn.com"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "ag.alicdn.com"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "a.dd.alicdn.com"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "uaction.alicdn.com"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "wwc.alicdn.com"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "osdes.alicdn.com"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "download.taobaocdn.com"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "gtb-fun.alicdn.com"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "qianniu.alicdn.com"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "gamc.alicdn.com"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "glife-img.alicdn.com"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "ossgw.alicdn.com"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "gjusp.alicdn.com"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "alchemy-img.alicdn.com"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "alpha.alicdn.com"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "h5.m.taobao.com"

    aput-object v2, v0, v1

    sput-object v0, Lc8/HNf;->LOOSE_CDN_DOMAIN_BLACK_LIST:[Ljava/lang/String;

    .line 48
    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "i.mmcdn.cn"

    aput-object v1, v0, v3

    const-string/jumbo v1, "cbu01.alicdn.com"

    aput-object v1, v0, v4

    const-string/jumbo v1, "ilce.alicdn.com"

    aput-object v1, v0, v5

    const-string/jumbo v1, "ms.alicdn.com"

    aput-object v1, v0, v6

    sput-object v0, Lc8/HNf;->LOOSE_CONVERGENCE_BLACK_LIST:[Ljava/lang/String;

    .line 50
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, ".tbcdn.cn"

    aput-object v1, v0, v3

    const-string/jumbo v1, ".taobaocdn.com"

    aput-object v1, v0, v4

    const-string/jumbo v1, ".wimg.taobao.com"

    aput-object v1, v0, v5

    const-string/jumbo v1, "img.taobao.com"

    aput-object v1, v0, v6

    const-string/jumbo v1, "i.mmcdn.cn"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "gw.alicdn.com"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "img.alicdn.com"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "gtms03.alicdn.com"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "ilce.alicdn.com"

    aput-object v2, v0, v1

    sput-object v0, Lc8/HNf;->STRICT_CDN_DOMAIN_WHITE_LIST:[Ljava/lang/String;

    .line 52
    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "a.tbcdn.cn"

    aput-object v1, v0, v3

    const-string/jumbo v1, "b.tbcdn.cn"

    aput-object v1, v0, v4

    const-string/jumbo v1, "g.tbcdn.cn"

    aput-object v1, v0, v5

    const-string/jumbo v1, "download.taobaocdn.com"

    aput-object v1, v0, v6

    sput-object v0, Lc8/HNf;->STRICT_CDN_DOMAIN_BLACK_LIST:[Ljava/lang/String;

    .line 54
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "i.mmcdn.cn"

    aput-object v1, v0, v3

    const-string/jumbo v1, "ilce.alicdn.com"

    aput-object v1, v0, v4

    const-string/jumbo v1, "ms.alicdn.com"

    aput-object v1, v0, v5

    sput-object v0, Lc8/HNf;->STRICT_CONVERGENCE_BLACK_LIST:[Ljava/lang/String;

    return-void

    .line 27
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    :array_0
    .array-data 4
        0x10
        0x14
        0x18
        0x1e
        0x20
        0x24
        0x28
        0x30
        0x32
        0x3c
        0x40
        0x46
        0x48
        0x50
        0x58
        0x5a
        0x64
        0x6e
        0x78
        0x7d
        0x80
        0x82
        0x91
        0xa0
        0xaa
        0xb4
        0xbe
        0xc8
        0xd2
        0xdc
        0xe6
        0xea
        0xf0
        0xfa
        0x10e
        0x122
        0x12c
        0x136
        0x13b
        0x140
        0x150
        0x15e
        0x168
        0x190
        0x1ae
        0x1cc
        0x1d4
        0x1e0
        0x1ea
        0x21c
        0x230
        0x23a
        0x244
        0x258
        0x280
        0x29e
        0x2d0
        0x2d8
        0x2f8
        0x3c0
        0x3ca
    .end array-data

    :array_1
    .array-data 4
        0x6e
        0x96
        0xaa
        0xdc
        0xf0
        0x122
        0x1c2
        0x23a
        0x244
        0x26c
        0x316
    .end array-data

    :array_2
    .array-data 4
        0xaa
        0xdc
        0x154
        0x1f4
    .end array-data

    :array_3
    .array-data 4
        0x48
        0x58
        0x5a
        0x64
        0x6e
        0x78
        0x91
        0xa0
        0xaa
        0xb4
        0xc8
        0xe6
        0xf0
        0x10e
        0x122
        0x136
        0x140
        0x168
        0x1ae
        0x1cc
        0x244
        0x280
    .end array-data

    :array_4
    .array-data 4
        0x5a
        0x6e
        0xc8
        0x140
        0x1cc
        0x258
        0x2f8
        0x3c0
        0x4b0
    .end array-data

    :array_5
    .array-data 4
        0x5a
        0x6e
        0xc8
        0x140
        0x1cc
        0x280
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    sget-object v0, Lc8/HNf;->CDN10000Width:[I

    iput-object v0, p0, Lc8/HNf;->mCdn10000Width:[I

    .line 59
    sget-object v0, Lc8/HNf;->CDN10000Height:[I

    iput-object v0, p0, Lc8/HNf;->mCdn10000Height:[I

    .line 60
    sget-object v0, Lc8/HNf;->CDN:[I

    iput-object v0, p0, Lc8/HNf;->mCdnSizes:[I

    .line 61
    sget-object v0, Lc8/HNf;->XZCDN:[I

    iput-object v0, p0, Lc8/HNf;->mXzCdnSizes:[I

    .line 62
    sget-object v0, Lc8/HNf;->LEVEL_MODEL_CDN:[I

    iput-object v0, p0, Lc8/HNf;->mLevelModelCdnSizes:[I

    .line 63
    sget-object v0, Lc8/HNf;->LEVEL_MODEL_XZCDN:[I

    iput-object v0, p0, Lc8/HNf;->mLevelModelXzCdnSizes:[I

    .line 68
    sget-object v0, Lc8/HNf;->LOOSE_CDN_DOMAIN_WHITE_LIST:[Ljava/lang/String;

    iput-object v0, p0, Lc8/HNf;->mLooseCDNDomainWhiteList:[Ljava/lang/String;

    .line 69
    sget-object v0, Lc8/HNf;->LOOSE_CDN_DOMAIN_BLACK_LIST:[Ljava/lang/String;

    iput-object v0, p0, Lc8/HNf;->mLooseCDNDomainBlackList:[Ljava/lang/String;

    .line 70
    sget-object v0, Lc8/HNf;->LOOSE_CONVERGENCE_BLACK_LIST:[Ljava/lang/String;

    iput-object v0, p0, Lc8/HNf;->mLooseConvergenceBlackList:[Ljava/lang/String;

    .line 71
    sget-object v0, Lc8/HNf;->FUZZY_EXCLUDE_PATH:[Ljava/lang/String;

    iput-object v0, p0, Lc8/HNf;->mFuzzyExcludePath:[Ljava/lang/String;

    .line 72
    const-string/jumbo v0, "gw.alicdn.com"

    iput-object v0, p0, Lc8/HNf;->mDoMainDest:Ljava/lang/String;

    .line 73
    const-string/jumbo v0, "ms.alicdn.com"

    iput-object v0, p0, Lc8/HNf;->mApgImageDomain:Ljava/lang/String;

    .line 74
    sget-object v0, Lc8/HNf;->STRICT_CDN_DOMAIN_WHITE_LIST:[Ljava/lang/String;

    iput-object v0, p0, Lc8/HNf;->mStrictCDNDomainWhiteList:[Ljava/lang/String;

    .line 75
    sget-object v0, Lc8/HNf;->STRICT_CDN_DOMAIN_BLACK_LIST:[Ljava/lang/String;

    iput-object v0, p0, Lc8/HNf;->mStrictCDNDomainBlackList:[Ljava/lang/String;

    .line 76
    sget-object v0, Lc8/HNf;->STRICT_CONVERGENCE_BLACK_LIST:[Ljava/lang/String;

    iput-object v0, p0, Lc8/HNf;->mStrictConvergenceBlackList:[Ljava/lang/String;

    .line 78
    iput-boolean v1, p0, Lc8/HNf;->mGlobalSwitch:Z

    .line 79
    iput-boolean v1, p0, Lc8/HNf;->mDomainSwitch:Z

    .line 81
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lc8/HNf;->mDip:F

    .line 82
    iput-boolean v1, p0, Lc8/HNf;->mWebpOn:Z

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/HNf;->mIsLowQuality:Z

    .line 84
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lc8/HNf;->mLevelRatio:F

    .line 1304
    return-void
.end method

.method private binarySearch([IIZ)I
    .locals 5
    .param p1, "srcArray"    # [I
    .param p2, "des"    # I
    .param p3, "higher"    # Z

    .prologue
    .line 1046
    const/4 v1, 0x0

    .line 1047
    .local v1, "low":I
    array-length v3, p1

    add-int/lit8 v0, v3, -0x1

    .line 1049
    .local v0, "high":I
    :goto_0
    if-gt v1, v0, :cond_2

    .line 1050
    add-int v3, v1, v0

    div-int/lit8 v2, v3, 0x2

    .line 1051
    .local v2, "middle":I
    aget v3, p1, v2

    if-ne p2, v3, :cond_0

    .line 1068
    .end local v2    # "middle":I
    :goto_1
    return v2

    .line 1053
    .restart local v2    # "middle":I
    :cond_0
    aget v3, p1, v2

    if-ge p2, v3, :cond_1

    .line 1054
    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    .line 1056
    :cond_1
    add-int/lit8 v1, v2, 0x1

    .line 1058
    goto :goto_0

    .line 1060
    .end local v2    # "middle":I
    :cond_2
    if-gez v0, :cond_3

    const/4 v2, 0x0

    goto :goto_1

    .line 1062
    :cond_3
    if-eqz p3, :cond_4

    .line 1063
    add-int/lit8 v3, v0, 0x1

    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    if-gt v3, v4, :cond_4

    .line 1064
    add-int/lit8 v0, v0, 0x1

    :cond_4
    move v2, v0

    .line 1068
    goto :goto_1
.end method

.method private changeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "baseUrl"    # Ljava/lang/String;

    .prologue
    .line 892
    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 901
    :goto_0
    return-object v1

    .line 895
    :cond_0
    const/16 v1, 0x7c

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 897
    .local v0, "sep":I
    if-lez v0, :cond_1

    .line 898
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 901
    :cond_1
    const-string/jumbo v1, " "

    const-string/jumbo v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private convergenceUrl([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 9
    .param p1, "domainWhiteList"    # [Ljava/lang/String;
    .param p2, "convergenceBlackList"    # [Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "checkCdnImage"    # Z

    .prologue
    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 937
    iget-object v6, p0, Lc8/HNf;->mDoMainDest:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 938
    :cond_0
    new-array v6, v7, [Ljava/lang/String;

    aput-object p3, v6, v5

    aput-object p4, v6, v8

    move-object v5, v6

    .line 969
    :goto_0
    return-object v5

    .line 942
    :cond_1
    if-nez p4, :cond_2

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .local v4, "uri":Landroid/net/Uri;
    if-eqz v4, :cond_2

    .line 943
    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p4

    .line 945
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_2
    if-eqz p4, :cond_3

    iget-object v6, p0, Lc8/HNf;->mDoMainDest:Ljava/lang/String;

    invoke-virtual {p4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 946
    :cond_3
    new-array v6, v7, [Ljava/lang/String;

    aput-object p3, v6, v5

    aput-object p4, v6, v8

    move-object v5, v6

    goto :goto_0

    .line 949
    :cond_4
    if-eqz p2, :cond_5

    array-length v1, p2

    .line 950
    .local v1, "excludeAryLen":I
    :goto_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_7

    .line 951
    aget-object v6, p2, v2

    invoke-virtual {p4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_6

    .line 952
    new-array v6, v7, [Ljava/lang/String;

    aput-object p3, v6, v5

    aput-object p4, v6, v8

    move-object v5, v6

    goto :goto_0

    .end local v1    # "excludeAryLen":I
    .end local v2    # "i":I
    :cond_5
    move v1, v5

    .line 949
    goto :goto_1

    .line 950
    .restart local v1    # "excludeAryLen":I
    .restart local v2    # "i":I
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 956
    :cond_7
    if-eqz p5, :cond_a

    .line 957
    if-eqz p1, :cond_8

    array-length v0, p1

    .line 958
    .local v0, "aliCdnAryLen":I
    :goto_3
    const/4 v3, 0x0

    .line 959
    .local v3, "k":I
    :goto_4
    if-ge v3, v0, :cond_9

    .line 960
    aget-object v6, p1, v3

    invoke-virtual {p4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_9

    .line 959
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .end local v0    # "aliCdnAryLen":I
    .end local v3    # "k":I
    :cond_8
    move v0, v5

    .line 957
    goto :goto_3

    .line 964
    .restart local v0    # "aliCdnAryLen":I
    .restart local v3    # "k":I
    :cond_9
    if-lt v3, v0, :cond_a

    .line 965
    new-array v6, v7, [Ljava/lang/String;

    aput-object p3, v6, v5

    aput-object p4, v6, v8

    move-object v5, v6

    goto :goto_0

    .line 969
    .end local v0    # "aliCdnAryLen":I
    .end local v3    # "k":I
    :cond_a
    new-array v6, v7, [Ljava/lang/String;

    iget-object v7, p0, Lc8/HNf;->mDoMainDest:Ljava/lang/String;

    invoke-virtual {p3, p4, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    iget-object v5, p0, Lc8/HNf;->mDoMainDest:Ljava/lang/String;

    aput-object v5, v6, v8

    move-object v5, v6

    goto :goto_0
.end method

.method private decideUrlSuffix(ZLjava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 1
    .param p1, "isAnyArgExist"    # Z
    .param p2, "outString"    # Ljava/lang/StringBuffer;
    .param p3, "currentSuffix"    # Ljava/lang/String;

    .prologue
    .line 836
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 837
    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 838
    const/4 p1, 0x1

    .line 840
    :cond_0
    if-eqz p1, :cond_1

    .line 841
    const-string/jumbo v0, ".jpg"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 843
    :cond_1
    return-void
.end method

.method private decideUrlWH(ZLjava/lang/StringBuffer;Lc8/vNf;IIDDILcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;Z)Z
    .locals 8
    .param p1, "isAnyArgExist"    # Z
    .param p2, "outString"    # Ljava/lang/StringBuffer;
    .param p3, "urlInfo"    # Lc8/vNf;
    .param p4, "scaleWidth"    # I
    .param p5, "scaleHeight"    # I
    .param p6, "lowScale"    # D
    .param p8, "highScale"    # D
    .param p10, "uiSize"    # I
    .param p11, "cutType"    # Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;
    .param p12, "levelModel"    # Z

    .prologue
    .line 769
    if-lez p10, :cond_0

    .line 770
    move/from16 v0, p10

    int-to-double v4, v0

    invoke-virtual {p0}, Lc8/HNf;->isNetworkSlow()Z

    move-result v6

    if-eqz v6, :cond_2

    .end local p6    # "lowScale":D
    :goto_0
    mul-double/2addr v4, p6

    double-to-int v0, v4

    move/from16 p10, v0

    .line 772
    :cond_0
    const/4 v2, 0x0

    .line 779
    .local v2, "imageSize":Lc8/DNf;
    if-gez p10, :cond_3

    .line 780
    if-eqz p3, :cond_1

    iget v4, p3, Lc8/vNf;->width:I

    if-lez v4, :cond_1

    iget v4, p3, Lc8/vNf;->height:I

    if-lez v4, :cond_1

    .line 781
    new-instance v2, Lc8/DNf;

    .end local v2    # "imageSize":Lc8/DNf;
    const/4 v4, 0x1

    const/4 v5, 0x0

    iget v6, p3, Lc8/vNf;->width:I

    iget v7, p3, Lc8/vNf;->height:I

    invoke-direct {v2, v4, v5, v6, v7}, Lc8/DNf;-><init>(ZZII)V

    .line 801
    .restart local v2    # "imageSize":Lc8/DNf;
    :cond_1
    :goto_1
    if-nez v2, :cond_7

    .line 802
    const/4 v4, 0x0

    .line 814
    :goto_2
    return v4

    .end local v2    # "imageSize":Lc8/DNf;
    .restart local p6    # "lowScale":D
    :cond_2
    move-wide/from16 p6, p8

    .line 770
    goto :goto_0

    .line 784
    .end local p6    # "lowScale":D
    .restart local v2    # "imageSize":Lc8/DNf;
    :cond_3
    if-ltz p4, :cond_4

    if-ltz p5, :cond_4

    .line 785
    move/from16 v0, p10

    move/from16 v1, p12

    invoke-direct {p0, p4, p5, v0, v1}, Lc8/HNf;->matchWH2CDN10000(IIIZ)Lc8/DNf;

    move-result-object v2

    .line 787
    const/4 v4, 0x0

    iput-boolean v4, v2, Lc8/DNf;->keep:Z

    goto :goto_1

    .line 788
    :cond_4
    if-eqz p3, :cond_5

    iget v4, p3, Lc8/vNf;->width:I

    if-lez v4, :cond_5

    iget v4, p3, Lc8/vNf;->height:I

    if-lez v4, :cond_5

    .line 789
    iget v4, p3, Lc8/vNf;->width:I

    iget v5, p3, Lc8/vNf;->height:I

    move/from16 v0, p10

    move/from16 v1, p12

    invoke-direct {p0, v4, v5, v0, v1}, Lc8/HNf;->matchWH2CDN10000(IIIZ)Lc8/DNf;

    move-result-object v2

    goto :goto_1

    .line 792
    :cond_5
    if-eqz p11, :cond_6

    sget-object v4, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;->non:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;

    move-object/from16 v0, p11

    if-eq v0, v4, :cond_6

    .line 793
    move/from16 v0, p10

    int-to-float v4, v0

    iget v5, p0, Lc8/HNf;->mDip:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    const/4 v5, 0x1

    move/from16 v0, p12

    invoke-virtual {p0, v4, v5, v0}, Lc8/HNf;->taoXZCDN(IZZ)I

    move-result v3

    .line 797
    .local v3, "size":I
    :goto_3
    new-instance v2, Lc8/DNf;

    .end local v2    # "imageSize":Lc8/DNf;
    invoke-direct {v2, v3, v3}, Lc8/DNf;-><init>(II)V

    .restart local v2    # "imageSize":Lc8/DNf;
    goto :goto_1

    .line 795
    .end local v3    # "size":I
    :cond_6
    move/from16 v0, p10

    int-to-float v4, v0

    iget v5, p0, Lc8/HNf;->mDip:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    const/4 v5, 0x1

    move/from16 v0, p12

    invoke-virtual {p0, v4, v5, v0}, Lc8/HNf;->taobaoCDNPatten(IZZ)I

    move-result v3

    .restart local v3    # "size":I
    goto :goto_3

    .line 805
    .end local v3    # "size":I
    :cond_7
    if-nez p1, :cond_8

    .line 806
    const/16 v4, 0x5f

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 808
    :cond_8
    iget v4, v2, Lc8/DNf;->width:I

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const/16 v5, 0x78

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    iget v5, v2, Lc8/DNf;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 809
    iget-boolean v4, v2, Lc8/DNf;->keep:Z

    if-eqz v4, :cond_a

    if-eqz p3, :cond_a

    .line 810
    iget-object v4, p3, Lc8/vNf;->cj:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 814
    :cond_9
    :goto_4
    const/4 v4, 0x1

    goto/16 :goto_2

    .line 811
    :cond_a
    iget-boolean v4, v2, Lc8/DNf;->limitWH:Z

    if-nez v4, :cond_9

    if-eqz p11, :cond_9

    .line 812
    invoke-virtual/range {p11 .. p11}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;->getCutType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4
.end method

.method private decideUrlWebP(Ljava/lang/StringBuffer;ZZ)V
    .locals 1
    .param p1, "originString"    # Ljava/lang/StringBuffer;
    .param p2, "forced"    # Z
    .param p3, "isWebp"    # Z

    .prologue
    .line 851
    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    iget-boolean v0, p0, Lc8/HNf;->mWebpOn:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lc8/HNf;->isSupportWebP()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 852
    :cond_0
    const-string/jumbo v0, "_.webp"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 854
    :cond_1
    return-void
.end method

.method private decideValueByNetwork(ZLjava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "isAnyArgExist"    # Z
    .param p2, "outString"    # Ljava/lang/StringBuffer;
    .param p3, "lowValue"    # Ljava/lang/String;
    .param p4, "highValue"    # Ljava/lang/String;

    .prologue
    .line 821
    invoke-virtual {p0}, Lc8/HNf;->isNetworkSlow()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p3

    .line 822
    .local v0, "result":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 823
    const/4 v1, 0x0

    .line 829
    :goto_1
    return v1

    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    move-object v0, p4

    .line 821
    goto :goto_0

    .line 825
    .restart local v0    # "result":Ljava/lang/String;
    :cond_1
    if-nez p1, :cond_2

    .line 826
    const/16 v1, 0x5f

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 828
    :cond_2
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 829
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private findBestLevel([III)I
    .locals 8
    .param p1, "array"    # [I
    .param p2, "pos"    # I
    .param p3, "target"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    .line 384
    array-length v1, p1

    .line 386
    .local v1, "len":I
    const/4 v0, -0x1

    .line 387
    .local v0, "findType":I
    :goto_0
    if-ltz p2, :cond_2

    if-ge p2, v1, :cond_2

    .line 388
    aget v2, p1, p2

    .line 389
    .local v2, "value":I
    if-le p3, v2, :cond_4

    .line 391
    if-gez v0, :cond_1

    .line 392
    const/4 v0, 0x1

    .line 396
    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 393
    :cond_1
    if-ne v0, v7, :cond_0

    .line 409
    .end local v2    # "value":I
    :cond_2
    if-gez p2, :cond_6

    .line 410
    const/4 p2, 0x0

    .line 418
    :cond_3
    :goto_1
    aget v3, p1, p2

    return v3

    .line 397
    .restart local v2    # "value":I
    :cond_4
    if-ge p3, v2, :cond_2

    .line 399
    if-gez v0, :cond_5

    .line 400
    const/4 v0, 0x2

    .line 404
    :goto_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 401
    :cond_5
    if-eq v0, v3, :cond_2

    goto :goto_2

    .line 411
    .end local v2    # "value":I
    :cond_6
    if-lt p2, v1, :cond_7

    .line 412
    add-int/lit8 p2, v1, -0x1

    goto :goto_1

    .line 413
    :cond_7
    if-ne v0, v3, :cond_8

    int-to-float v3, p3

    add-int/lit8 v4, p2, -0x1

    aget v4, p1, v4

    int-to-float v4, v4

    iget v5, p0, Lc8/HNf;->mLevelRatio:F

    add-float/2addr v5, v6

    mul-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_8

    .line 414
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 415
    :cond_8
    if-ne v0, v7, :cond_3

    int-to-float v3, p3

    aget v4, p1, p2

    int-to-float v4, v4

    iget v5, p0, Lc8/HNf;->mLevelRatio:F

    add-float/2addr v5, v6

    mul-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 416
    add-int/lit8 p2, p2, 0x1

    goto :goto_1
.end method

.method public static getInstance()Lc8/HNf;
    .locals 1

    .prologue
    .line 1089
    sget-object v0, Lc8/FNf;->instance:Lc8/HNf;

    return-object v0
.end method

.method private isApgAllowedWithBiz(I)Z
    .locals 6
    .param p1, "bizId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 634
    iget-object v0, p0, Lc8/HNf;->mApgBizWhiteList:[I

    .line 635
    .local v0, "bizWL":[I
    if-eqz v0, :cond_0

    array-length v4, v0

    if-gtz v4, :cond_1

    .line 643
    :cond_0
    :goto_0
    return v2

    .line 638
    :cond_1
    array-length v5, v0

    move v4, v3

    :goto_1
    if-ge v4, v5, :cond_2

    aget v1, v0, v4

    .line 639
    .local v1, "curId":I
    if-eq v1, p1, :cond_0

    .line 638
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v1    # "curId":I
    :cond_2
    move v2, v3

    .line 643
    goto :goto_0
.end method

.method private isCdnImage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 996
    iget-object v3, p0, Lc8/HNf;->mLooseCDNDomainBlackList:[Ljava/lang/String;

    invoke-direct {p0, v3, p1, p2}, Lc8/HNf;->isExcludeUrl([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1012
    :cond_0
    :goto_0
    return v2

    .line 1001
    :cond_1
    if-nez p2, :cond_2

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_2

    .line 1002
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p2

    .line 1004
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_2
    if-eqz p2, :cond_0

    .line 1005
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lc8/HNf;->mLooseCDNDomainWhiteList:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 1006
    iget-object v3, p0, Lc8/HNf;->mLooseCDNDomainWhiteList:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_3

    .line 1007
    const/4 v2, 0x1

    goto :goto_0

    .line 1005
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private isExcludeUrl([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "exactBlackList"    # [Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 905
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 930
    :cond_0
    :goto_0
    return v4

    .line 909
    :cond_1
    if-eqz p1, :cond_3

    .line 911
    if-nez p3, :cond_2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .local v3, "uri":Landroid/net/Uri;
    if-eqz v3, :cond_2

    .line 912
    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p3

    .line 915
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_2
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_1
    array-length v5, p1

    if-ge v1, v5, :cond_3

    .line 916
    aget-object v0, p1, v1

    .line 917
    .local v0, "excludeDomain":Ljava/lang/String;
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 915
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 922
    .end local v0    # "excludeDomain":Ljava/lang/String;
    .end local v1    # "k":I
    :cond_3
    iget-object v5, p0, Lc8/HNf;->mFuzzyExcludePath:[Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 924
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_2
    iget-object v5, p0, Lc8/HNf;->mFuzzyExcludePath:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_4

    .line 925
    iget-object v5, p0, Lc8/HNf;->mFuzzyExcludePath:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_0

    .line 924
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 930
    .end local v2    # "n":I
    :cond_4
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isValidSizes([I)Z
    .locals 5
    .param p1, "sizes"    # [I

    .prologue
    const/4 v2, 0x0

    .line 251
    if-eqz p1, :cond_0

    array-length v3, p1

    if-nez v3, :cond_1

    .line 261
    :cond_0
    :goto_0
    return v2

    .line 254
    :cond_1
    const/4 v1, 0x0

    .line 255
    .local v1, "lastVal":I
    array-length v4, p1

    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_2

    aget v0, p1, v3

    .line 256
    .local v0, "currVal":I
    if-ge v1, v0, :cond_0

    .line 259
    move v1, v0

    .line 255
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 261
    .end local v0    # "currVal":I
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private matchWH2CDN10000(III)Lc8/DNf;
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "uiSize"    # I

    .prologue
    .line 863
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lc8/HNf;->matchWH2CDN10000(IIIZ)Lc8/DNf;

    move-result-object v0

    return-object v0
.end method

.method private matchWH2CDN10000(IIIZ)Lc8/DNf;
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "uiSize"    # I
    .param p4, "levelModel"    # Z

    .prologue
    const/4 v4, 0x1

    const/16 v2, 0x2710

    .line 867
    const/4 v0, 0x0

    .line 868
    .local v0, "keep":Z
    const/4 v1, 0x0

    .line 870
    .local v1, "limitWH":Z
    if-ne p1, v2, :cond_0

    if-eq p2, v2, :cond_1

    :cond_0
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    .line 871
    :cond_1
    int-to-float v2, p3

    iget v3, p0, Lc8/HNf;->mDip:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0, v2, v4, p4}, Lc8/HNf;->taobaoCDNPatten(IZZ)I

    move-result p2

    move p1, p2

    .line 883
    :goto_0
    new-instance v2, Lc8/DNf;

    invoke-direct {v2, v0, v1, p1, p2}, Lc8/DNf;-><init>(ZZII)V

    return-object v2

    .line 872
    :cond_2
    if-ne p2, v2, :cond_3

    .line 873
    int-to-float v2, p3

    iget v3, p0, Lc8/HNf;->mDip:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0, v2, v4}, Lc8/HNf;->taobaoCDN10000Width(IZ)I

    move-result p1

    .line 874
    const/16 p2, 0x2710

    .line 875
    const/4 v1, 0x1

    goto :goto_0

    .line 876
    :cond_3
    if-ne p1, v2, :cond_4

    .line 877
    int-to-float v2, p3

    iget v3, p0, Lc8/HNf;->mDip:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0, v2, v4}, Lc8/HNf;->taobaoCDN10000Height(IZ)I

    move-result p2

    .line 878
    const/16 p1, 0x2710

    .line 879
    const/4 v1, 0x1

    goto :goto_0

    .line 881
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public convergenceUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 977
    iget-object v1, p0, Lc8/HNf;->mLooseCDNDomainWhiteList:[Ljava/lang/String;

    iget-object v2, p0, Lc8/HNf;->mLooseConvergenceBlackList:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lc8/HNf;->convergenceUrl([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public convergenceUrl(Lc8/GNf;Z)[Ljava/lang/String;
    .locals 6
    .param p1, "cdnInfo"    # Lc8/GNf;
    .param p2, "checkCdnImage"    # Z

    .prologue
    .line 973
    iget-object v1, p0, Lc8/HNf;->mLooseCDNDomainWhiteList:[Ljava/lang/String;

    iget-object v2, p0, Lc8/HNf;->mLooseConvergenceBlackList:[Ljava/lang/String;

    iget-object v3, p1, Lc8/GNf;->url:Ljava/lang/String;

    iget-object v4, p1, Lc8/GNf;->host:Ljava/lang/String;

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lc8/HNf;->convergenceUrl([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public decideUrl(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "baseurl"    # Ljava/lang/String;
    .param p2, "uisize"    # I

    .prologue
    .line 450
    const-string/jumbo v0, ""

    sget-object v1, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;->non:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;

    invoke-virtual {p0, p1, p2, v0, v1}, Lc8/HNf;->decideUrl(Ljava/lang/String;ILjava/lang/String;Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public decideUrl(Ljava/lang/String;ILc8/nHf;)Ljava/lang/String;
    .locals 34
    .param p1, "orgUrl"    # Ljava/lang/String;
    .param p2, "uiSize"    # I
    .param p3, "sConfig"    # Lc8/nHf;

    .prologue
    .line 483
    invoke-virtual/range {p3 .. p3}, Lc8/nHf;->isSkipped()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 630
    .end local p1    # "orgUrl":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 486
    .restart local p1    # "orgUrl":Ljava/lang/String;
    :cond_0
    if-nez p1, :cond_1

    .line 487
    const-string/jumbo v4, "STRATEGY.ALL"

    const-string/jumbo v5, "origin url is null"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v4, v5, v8}, Lc8/oHf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 488
    const/16 p1, 0x0

    goto :goto_0

    .line 490
    :cond_1
    invoke-direct/range {p0 .. p1}, Lc8/HNf;->changeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 492
    .local v24, "firstUrl":Ljava/lang/String;
    new-instance v19, Lc8/GNf;

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lc8/GNf;-><init>(Ljava/lang/String;)V

    .line 494
    .local v19, "cdnInfo":Lc8/GNf;
    invoke-static {}, Lc8/yNf;->getInstance()Lc8/yNf;

    move-result-object v4

    move-object/from16 v0, v19

    iget-object v5, v0, Lc8/GNf;->host:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lc8/yNf;->isOssDomain(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 495
    invoke-static {}, Lc8/yNf;->getInstance()Lc8/yNf;

    move-result-object v4

    move-object/from16 v0, v24

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Lc8/yNf;->decideUrl(Ljava/lang/String;ILc8/nHf;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 499
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lc8/HNf;->isCdnImage(Lc8/GNf;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 500
    const-string/jumbo v4, "STRATEGY.ALL"

    const-string/jumbo v5, "origin not cdn url:%s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    invoke-static {v4, v5, v8}, Lc8/oHf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 504
    :cond_3
    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/GNf;->host:Ljava/lang/String;

    move-object/from16 v30, v0

    .line 506
    .local v30, "outDomain":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lc8/nHf;->isEnabledMergeDomain()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_4

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lc8/HNf;->mDomainSwitch:Z

    if-nez v4, :cond_5

    .line 507
    :cond_4
    invoke-virtual/range {p3 .. p3}, Lc8/nHf;->isEnabledMergeDomain()Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual/range {p3 .. p3}, Lc8/nHf;->isEnabledMergeDomain()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 508
    :cond_5
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Lc8/HNf;->convergenceUrl(Lc8/GNf;Z)[Ljava/lang/String;

    move-result-object v32

    .line 509
    .local v32, "rets":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v24, v32, v4

    .line 510
    const/4 v4, 0x1

    aget-object v30, v32, v4

    .line 514
    .end local v32    # "rets":[Ljava/lang/String;
    :cond_6
    invoke-static/range {v24 .. v24}, Lc8/wNf;->getBaseUrlInfo(Ljava/lang/String;)Lc8/vNf;

    move-result-object v7

    .line 517
    .local v7, "urlInfo":Lc8/vNf;
    iget-object v4, v7, Lc8/vNf;->base:Ljava/lang/String;

    const-string/jumbo v5, "_sum.jpg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 518
    iget-object v4, v7, Lc8/vNf;->base:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v8, v7, Lc8/vNf;->base:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x8

    invoke-virtual {v4, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v7, Lc8/vNf;->base:Ljava/lang/String;

    .line 523
    :cond_7
    :goto_1
    iget-object v4, v7, Lc8/vNf;->base:Ljava/lang/String;

    invoke-static {v4, v7}, Lc8/wNf;->parseImageUrl(Ljava/lang/String;Lc8/vNf;)Lc8/vNf;

    .line 525
    iget-boolean v4, v7, Lc8/vNf;->existCo:Z

    if-nez v4, :cond_8

    iget-boolean v4, v7, Lc8/vNf;->existCi:Z

    if-eqz v4, :cond_b

    :cond_8
    move-object/from16 p1, v24

    .line 526
    goto/16 :goto_0

    .line 519
    :cond_9
    iget-object v4, v7, Lc8/vNf;->base:Ljava/lang/String;

    const-string/jumbo v5, "_m.jpg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, v7, Lc8/vNf;->base:Ljava/lang/String;

    const-string/jumbo v5, "_b.jpg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 520
    :cond_a
    iget-object v4, v7, Lc8/vNf;->base:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v8, v7, Lc8/vNf;->base:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x6

    invoke-virtual {v4, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v7, Lc8/vNf;->base:Ljava/lang/String;

    goto :goto_1

    .line 529
    :cond_b
    new-instance v6, Ljava/lang/StringBuffer;

    iget-object v4, v7, Lc8/vNf;->base:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1b

    invoke-direct {v6, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 530
    .local v6, "outString":Ljava/lang/StringBuffer;
    iget-object v4, v7, Lc8/vNf;->base:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 532
    invoke-virtual/range {p3 .. p3}, Lc8/nHf;->getName()Ljava/lang/String;

    move-result-object v18

    .line 533
    .local v18, "areaName":Ljava/lang/String;
    const/16 v17, 0x0

    .line 534
    .local v17, "areaItem":Lc8/ENf;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lc8/HNf;->mGlobalSwitch:Z

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/HNf;->mServiceImageSwitchList:Ljava/util/HashMap;

    if-eqz v4, :cond_c

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 535
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/HNf;->mServiceImageSwitchList:Ljava/util/HashMap;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "areaItem":Lc8/ENf;
    check-cast v17, Lc8/ENf;

    .line 538
    .restart local v17    # "areaItem":Lc8/ENf;
    :cond_c
    const-wide v10, 0x3fe6666666666666L    # 0.7

    .line 539
    .local v10, "lowImageScale":D
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 540
    .local v12, "highImageScale":D
    const-string/jumbo v20, ""

    .line 541
    .local v20, "currentSuffix":Ljava/lang/String;
    const/16 v16, 0x1

    .line 542
    .local v16, "useLevelMode":Z
    if-eqz v17, :cond_d

    .line 543
    invoke-virtual/range {v17 .. v17}, Lc8/ENf;->getLowNetScale()D

    move-result-wide v10

    .line 544
    invoke-virtual/range {v17 .. v17}, Lc8/ENf;->getHighNetScale()D

    move-result-wide v12

    .line 545
    invoke-virtual/range {v17 .. v17}, Lc8/ENf;->getSuffix()Ljava/lang/String;

    move-result-object v20

    .line 546
    invoke-virtual/range {v17 .. v17}, Lc8/ENf;->isUseCdnSizes()Z

    move-result v4

    if-nez v4, :cond_16

    const/16 v16, 0x1

    .line 548
    :cond_d
    :goto_2
    invoke-virtual/range {p3 .. p3}, Lc8/nHf;->isEnabledLevelModel()Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 549
    invoke-virtual/range {p3 .. p3}, Lc8/nHf;->isEnabledLevelModel()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    .line 552
    :cond_e
    const/4 v5, 0x0

    .line 556
    invoke-virtual/range {p3 .. p3}, Lc8/nHf;->getFinalWidth()I

    move-result v8

    .line 557
    invoke-virtual/range {p3 .. p3}, Lc8/nHf;->getFinalHeight()I

    move-result v9

    .line 561
    invoke-virtual/range {p3 .. p3}, Lc8/nHf;->getCutType()Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;

    move-result-object v15

    move-object/from16 v4, p0

    move/from16 v14, p2

    .line 552
    invoke-direct/range {v4 .. v16}, Lc8/HNf;->decideUrlWH(ZLjava/lang/StringBuffer;Lc8/vNf;IIDDILcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;Z)Z

    move-result v27

    .line 565
    .local v27, "isAnyArgExist":Z
    const/16 v28, 0x0

    .local v28, "lowQ":Ljava/lang/String;
    const/16 v25, 0x0

    .line 566
    .local v25, "highQ":Ljava/lang/String;
    if-gez p2, :cond_17

    iget-object v4, v7, Lc8/vNf;->quality:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_17

    .line 567
    iget-object v0, v7, Lc8/vNf;->quality:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v28, v25

    .line 579
    :cond_f
    :goto_3
    if-eqz v28, :cond_11

    if-eqz v25, :cond_11

    .line 580
    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v6, v2, v3}, Lc8/HNf;->decideValueByNetwork(ZLjava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_10

    if-eqz v27, :cond_1d

    :cond_10
    const/16 v27, 0x1

    .line 583
    :cond_11
    :goto_4
    const/16 v29, 0x0

    .local v29, "lowS":Ljava/lang/String;
    const/16 v26, 0x0

    .line 584
    .local v26, "highS":Ljava/lang/String;
    if-gez p2, :cond_1e

    iget-object v4, v7, Lc8/vNf;->sharpen:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1e

    .line 585
    iget-object v0, v7, Lc8/vNf;->sharpen:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v29, v26

    .line 595
    :cond_12
    :goto_5
    if-eqz v29, :cond_14

    if-eqz v26, :cond_14

    .line 596
    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v29

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v6, v2, v3}, Lc8/HNf;->decideValueByNetwork(ZLjava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_13

    if-eqz v27, :cond_20

    :cond_13
    const/16 v27, 0x1

    .line 600
    :cond_14
    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v6, v2}, Lc8/HNf;->decideUrlSuffix(ZLjava/lang/StringBuffer;Ljava/lang/String;)V

    .line 605
    invoke-virtual/range {p3 .. p3}, Lc8/nHf;->isForcedWebPOn()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 606
    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4, v5}, Lc8/HNf;->decideUrlWebP(Ljava/lang/StringBuffer;ZZ)V

    .line 624
    :goto_7
    iget-object v4, v7, Lc8/vNf;->suffix:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 625
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    .line 626
    .local v21, "decidedUrl":Ljava/lang/String;
    const/16 v4, 0x44

    invoke-static {v4}, Lc8/oHf;->isLoggable(C)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 627
    const-string/jumbo v4, "STRATEGY.ALL"

    const-string/jumbo v5, "Dip=%.1f UISize=%d Area=%s\nOriginUrl=%s\nDecideUrl=%s"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lc8/HNf;->mDip:F

    .line 628
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v8, v9

    const/4 v9, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v8, v9

    const/4 v9, 0x2

    aput-object v18, v8, v9

    const/4 v9, 0x3

    aput-object v24, v8, v9

    const/4 v9, 0x4

    aput-object v21, v8, v9

    .line 627
    invoke-static {v4, v5, v8}, Lc8/oHf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    move-object/from16 p1, v21

    .line 630
    goto/16 :goto_0

    .line 546
    .end local v21    # "decidedUrl":Ljava/lang/String;
    .end local v25    # "highQ":Ljava/lang/String;
    .end local v26    # "highS":Ljava/lang/String;
    .end local v27    # "isAnyArgExist":Z
    .end local v28    # "lowQ":Ljava/lang/String;
    .end local v29    # "lowS":Ljava/lang/String;
    :cond_16
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 568
    .restart local v25    # "highQ":Ljava/lang/String;
    .restart local v27    # "isAnyArgExist":Z
    .restart local v28    # "lowQ":Ljava/lang/String;
    :cond_17
    invoke-virtual/range {p3 .. p3}, Lc8/nHf;->isEnabledQuality()Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_18

    invoke-virtual/range {p3 .. p3}, Lc8/nHf;->isEnabledQuality()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 569
    :cond_18
    invoke-virtual/range {p3 .. p3}, Lc8/nHf;->getFinalImageQuality()Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    move-result-object v4

    if-eqz v4, :cond_19

    .line 570
    invoke-virtual/range {p3 .. p3}, Lc8/nHf;->getFinalImageQuality()Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->getImageQuality()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v28, v25

    goto/16 :goto_3

    .line 571
    :cond_19
    if-eqz v17, :cond_1a

    .line 572
    invoke-virtual/range {v17 .. v17}, Lc8/ENf;->getLowNetQ()Ljava/lang/String;

    move-result-object v28

    .line 573
    invoke-virtual/range {v17 .. v17}, Lc8/ENf;->getHighNetQ()Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_3

    .line 575
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lc8/HNf;->mIsLowQuality:Z

    if-eqz v4, :cond_1b

    sget-object v4, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->q50:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    invoke-virtual {v4}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->getImageQuality()Ljava/lang/String;

    move-result-object v28

    .line 576
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lc8/HNf;->mIsLowQuality:Z

    if-eqz v4, :cond_1c

    sget-object v4, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->q75:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    invoke-virtual {v4}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->getImageQuality()Ljava/lang/String;

    move-result-object v25

    :goto_9
    goto/16 :goto_3

    .line 575
    :cond_1b
    sget-object v4, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->q75:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    invoke-virtual {v4}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->getImageQuality()Ljava/lang/String;

    move-result-object v28

    goto :goto_8

    .line 576
    :cond_1c
    sget-object v4, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->q90:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    invoke-virtual {v4}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->getImageQuality()Ljava/lang/String;

    move-result-object v25

    goto :goto_9

    .line 580
    :cond_1d
    const/16 v27, 0x0

    goto/16 :goto_4

    .line 586
    .restart local v26    # "highS":Ljava/lang/String;
    .restart local v29    # "lowS":Ljava/lang/String;
    :cond_1e
    invoke-virtual/range {p3 .. p3}, Lc8/nHf;->isEnabledSharpen()Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_1f

    invoke-virtual/range {p3 .. p3}, Lc8/nHf;->isEnabledSharpen()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 588
    :cond_1f
    sget-object v4, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageSharpen;->non:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageSharpen;

    invoke-virtual {v4}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageSharpen;->getImageSharpen()Ljava/lang/String;

    move-result-object v29

    .line 589
    sget-object v4, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageSharpen;->non:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageSharpen;

    invoke-virtual {v4}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageSharpen;->getImageSharpen()Ljava/lang/String;

    move-result-object v26

    .line 590
    if-eqz v17, :cond_12

    .line 591
    invoke-virtual/range {v17 .. v17}, Lc8/ENf;->getLowNetSharpen()Ljava/lang/String;

    move-result-object v29

    .line 592
    invoke-virtual/range {v17 .. v17}, Lc8/ENf;->getHighNetSharpen()Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_5

    .line 596
    :cond_20
    const/16 v27, 0x0

    goto/16 :goto_6

    .line 607
    :cond_21
    invoke-virtual/range {p3 .. p3}, Lc8/nHf;->getBizId()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lc8/HNf;->isApgAllowedWithBiz(I)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 608
    invoke-static {}, Lc8/kHf;->getInstance()Lc8/kHf;

    move-result-object v4

    if-eqz v4, :cond_22

    .line 609
    invoke-static {}, Lc8/kHf;->getInstance()Lc8/kHf;

    move-result-object v4

    invoke-virtual {v4}, Lc8/kHf;->getImageExtendedSupport()Lc8/iHf;

    move-result-object v23

    .local v23, "extendedSupport":Lc8/iHf;
    if-eqz v23, :cond_22

    .line 610
    invoke-interface/range {v23 .. v23}, Lc8/iHf;->isAPGSupported()Z

    move-result v4

    if-eqz v4, :cond_22

    iget-object v4, v7, Lc8/vNf;->suffix:Ljava/lang/String;

    const-string/jumbo v5, "imgapgtag=0"

    .line 611
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_22

    .line 612
    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_22

    .line 613
    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v31

    .local v31, "outDomainIndex":I
    if-ltz v31, :cond_22

    .line 614
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v4

    add-int v4, v4, v31

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/HNf;->mApgImageDomain:Ljava/lang/String;

    move/from16 v0, v31

    invoke-virtual {v6, v0, v4, v5}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 615
    const-string/jumbo v4, "_.apg"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_7

    .line 617
    .end local v23    # "extendedSupport":Lc8/iHf;
    .end local v31    # "outDomainIndex":I
    :cond_22
    iget-object v4, v7, Lc8/vNf;->suffix:Ljava/lang/String;

    const-string/jumbo v5, "imgwebptag=0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_26

    const/16 v33, 0x1

    .line 618
    .local v33, "skipWebP":Z
    :goto_a
    if-eqz v17, :cond_23

    invoke-virtual/range {v17 .. v17}, Lc8/ENf;->isUseWebp()Z

    move-result v4

    if-eqz v4, :cond_27

    :cond_23
    const/16 v22, 0x1

    .line 619
    .local v22, "defaultEnabledWebP":Z
    :goto_b
    const/4 v5, 0x0

    if-eqz v33, :cond_28

    invoke-virtual/range {p3 .. p3}, Lc8/nHf;->isEnabledWebP()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_24

    if-nez v22, :cond_25

    .line 620
    :cond_24
    invoke-virtual/range {p3 .. p3}, Lc8/nHf;->isEnabledWebP()Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_28

    invoke-virtual/range {p3 .. p3}, Lc8/nHf;->isEnabledWebP()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_28

    :cond_25
    const/4 v4, 0x1

    .line 619
    :goto_c
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v5, v4}, Lc8/HNf;->decideUrlWebP(Ljava/lang/StringBuffer;ZZ)V

    goto/16 :goto_7

    .line 617
    .end local v22    # "defaultEnabledWebP":Z
    .end local v33    # "skipWebP":Z
    :cond_26
    const/16 v33, 0x0

    goto :goto_a

    .line 618
    .restart local v33    # "skipWebP":Z
    :cond_27
    const/16 v22, 0x0

    goto :goto_b

    .line 620
    .restart local v22    # "defaultEnabledWebP":Z
    :cond_28
    const/4 v4, 0x0

    goto :goto_c
.end method

.method public decideUrl(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "baseurl"    # Ljava/lang/String;
    .param p2, "uisize"    # I
    .param p3, "areaName"    # Ljava/lang/String;

    .prologue
    .line 460
    const-string/jumbo v0, ""

    sget-object v1, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;->non:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;

    invoke-virtual {p0, p1, p2, v0, v1}, Lc8/HNf;->decideUrl(Ljava/lang/String;ILjava/lang/String;Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public decideUrl(Ljava/lang/String;ILjava/lang/String;Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;)Ljava/lang/String;
    .locals 10
    .param p1, "baseurl"    # Ljava/lang/String;
    .param p2, "uisize"    # I
    .param p3, "areaName"    # Ljava/lang/String;
    .param p4, "cuttype"    # Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v5, -0x1

    const/4 v7, 0x1

    .line 472
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, v5

    move v8, v7

    move v9, v7

    invoke-virtual/range {v0 .. v9}, Lc8/HNf;->decideUrl(Ljava/lang/String;ILjava/lang/String;Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;IIZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public decideUrl(Ljava/lang/String;ILjava/lang/String;Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;IIZZZ)Ljava/lang/String;
    .locals 27
    .param p1, "orgUrl"    # Ljava/lang/String;
    .param p2, "uiSize"    # I
    .param p3, "areaName"    # Ljava/lang/String;
    .param p4, "cutType"    # Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;
    .param p5, "scaleWidth"    # I
    .param p6, "scaleHeight"    # I
    .param p7, "useWebp"    # Z
    .param p8, "useQuality"    # Z
    .param p9, "isDefault"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 661
    if-nez p1, :cond_1

    .line 662
    const-string/jumbo v4, "STRATEGY.ALL"

    const-string/jumbo v5, "origin url is null"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v4, v5, v8}, Lc8/oHf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 663
    const/16 v19, 0x0

    .line 754
    :cond_0
    :goto_0
    return-object v19

    .line 665
    :cond_1
    invoke-direct/range {p0 .. p1}, Lc8/HNf;->changeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 667
    new-instance v17, Lc8/GNf;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lc8/GNf;-><init>(Ljava/lang/String;)V

    .line 669
    .local v17, "cdnInfo":Lc8/GNf;
    invoke-static {}, Lc8/yNf;->getInstance()Lc8/yNf;

    move-result-object v4

    move-object/from16 v0, v17

    iget-object v5, v0, Lc8/GNf;->host:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lc8/yNf;->isOssDomain(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 670
    invoke-static {}, Lc8/yNf;->getInstance()Lc8/yNf;

    move-result-object v4

    const-string/jumbo v5, "default"

    invoke-static {v5}, Lc8/nHf;->newBuilderWithName(Ljava/lang/String;)Lc8/mHf;

    move-result-object v5

    invoke-virtual {v5}, Lc8/mHf;->build()Lc8/nHf;

    move-result-object v5

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v4, v0, v1, v5}, Lc8/yNf;->decideUrl(Ljava/lang/String;ILc8/nHf;)Ljava/lang/String;

    move-result-object v19

    goto :goto_0

    .line 673
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lc8/HNf;->isCdnImage(Lc8/GNf;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 674
    const-string/jumbo v4, "STRATEGY.ALL"

    const-string/jumbo v5, "origin not cdn url:%s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    invoke-static {v4, v5, v8}, Lc8/oHf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v19, p1

    .line 675
    goto :goto_0

    .line 678
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lc8/HNf;->mDomainSwitch:Z

    if-eqz v4, :cond_4

    .line 679
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Lc8/HNf;->convergenceUrl(Lc8/GNf;Z)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object p1, v4, v5

    .line 683
    :cond_4
    invoke-static/range {p1 .. p1}, Lc8/wNf;->getBaseUrlInfo(Ljava/lang/String;)Lc8/vNf;

    move-result-object v7

    .line 686
    .local v7, "urlInfo":Lc8/vNf;
    iget-object v4, v7, Lc8/vNf;->base:Ljava/lang/String;

    const-string/jumbo v5, "_sum.jpg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 687
    iget-object v4, v7, Lc8/vNf;->base:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v8, v7, Lc8/vNf;->base:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x8

    invoke-virtual {v4, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v7, Lc8/vNf;->base:Ljava/lang/String;

    .line 692
    :cond_5
    :goto_1
    iget-object v4, v7, Lc8/vNf;->base:Ljava/lang/String;

    invoke-static {v4, v7}, Lc8/wNf;->parseImageUrl(Ljava/lang/String;Lc8/vNf;)Lc8/vNf;

    .line 694
    new-instance v6, Ljava/lang/StringBuffer;

    iget-object v4, v7, Lc8/vNf;->base:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1b

    invoke-direct {v6, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 695
    .local v6, "outString":Ljava/lang/StringBuffer;
    iget-object v4, v7, Lc8/vNf;->base:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 698
    move/from16 v23, p7

    .line 699
    .local v23, "isWebp":Z
    const-string/jumbo v18, ""

    .line 702
    .local v18, "currentSuffix":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lc8/HNf;->mIsLowQuality:Z

    if-eqz v4, :cond_c

    sget-object v4, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->q50:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    invoke-virtual {v4}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->getImageQuality()Ljava/lang/String;

    move-result-object v25

    .line 703
    .local v25, "lowQ":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lc8/HNf;->mIsLowQuality:Z

    if-eqz v4, :cond_d

    sget-object v4, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->q75:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    invoke-virtual {v4}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->getImageQuality()Ljava/lang/String;

    move-result-object v20

    .line 706
    .local v20, "highQ":Ljava/lang/String;
    :goto_3
    sget-object v4, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageSharpen;->non:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageSharpen;

    invoke-virtual {v4}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageSharpen;->getImageSharpen()Ljava/lang/String;

    move-result-object v26

    .line 707
    .local v26, "lowS":Ljava/lang/String;
    sget-object v4, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageSharpen;->non:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageSharpen;

    invoke-virtual {v4}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageSharpen;->getImageSharpen()Ljava/lang/String;

    move-result-object v21

    .line 710
    .local v21, "highS":Ljava/lang/String;
    const-wide v10, 0x3fe6666666666666L    # 0.7

    .line 711
    .local v10, "lowImageScale":D
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 713
    .local v12, "highImageScale":D
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lc8/HNf;->mGlobalSwitch:Z

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/HNf;->mServiceImageSwitchList:Ljava/util/HashMap;

    if-eqz v4, :cond_6

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 715
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/HNf;->mServiceImageSwitchList:Ljava/util/HashMap;

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lc8/ENf;

    .line 717
    .local v24, "item":Lc8/ENf;
    if-eqz v24, :cond_6

    if-eqz p9, :cond_6

    .line 718
    invoke-virtual/range {v24 .. v24}, Lc8/ENf;->isUseWebp()Z

    move-result v23

    .line 719
    invoke-virtual/range {v24 .. v24}, Lc8/ENf;->getLowNetQ()Ljava/lang/String;

    move-result-object v25

    .line 720
    invoke-virtual/range {v24 .. v24}, Lc8/ENf;->getHighNetQ()Ljava/lang/String;

    move-result-object v20

    .line 721
    invoke-virtual/range {v24 .. v24}, Lc8/ENf;->getLowNetSharpen()Ljava/lang/String;

    move-result-object v26

    .line 722
    invoke-virtual/range {v24 .. v24}, Lc8/ENf;->getHighNetSharpen()Ljava/lang/String;

    move-result-object v21

    .line 723
    invoke-virtual/range {v24 .. v24}, Lc8/ENf;->getLowNetScale()D

    move-result-wide v10

    .line 724
    invoke-virtual/range {v24 .. v24}, Lc8/ENf;->getHighNetScale()D

    move-result-wide v12

    .line 726
    invoke-virtual/range {v24 .. v24}, Lc8/ENf;->getSuffix()Ljava/lang/String;

    move-result-object v18

    .line 731
    .end local v24    # "item":Lc8/ENf;
    :cond_6
    const/4 v5, 0x0

    const/16 v16, 0x1

    move-object/from16 v4, p0

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v14, p2

    move-object/from16 v15, p4

    invoke-direct/range {v4 .. v16}, Lc8/HNf;->decideUrlWH(ZLjava/lang/StringBuffer;Lc8/vNf;IIDDILcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;Z)Z

    move-result v22

    .line 734
    .local v22, "isAnyArgExist":Z
    if-eqz p8, :cond_8

    .line 735
    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v6, v2, v3}, Lc8/HNf;->decideValueByNetwork(ZLjava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    if-eqz v22, :cond_e

    :cond_7
    const/16 v22, 0x1

    .line 739
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v26

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v6, v2, v3}, Lc8/HNf;->decideValueByNetwork(ZLjava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    if-eqz v22, :cond_f

    :cond_9
    const/16 v22, 0x1

    .line 742
    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v6, v2}, Lc8/HNf;->decideUrlSuffix(ZLjava/lang/StringBuffer;Ljava/lang/String;)V

    .line 745
    const/4 v5, 0x0

    if-eqz v23, :cond_10

    iget-object v4, v7, Lc8/vNf;->suffix:Ljava/lang/String;

    const-string/jumbo v8, "imgwebptag=0"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_10

    const/4 v4, 0x1

    :goto_6
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v5, v4}, Lc8/HNf;->decideUrlWebP(Ljava/lang/StringBuffer;ZZ)V

    .line 748
    iget-object v4, v7, Lc8/vNf;->suffix:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 749
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    .line 750
    .local v19, "decidedUrl":Ljava/lang/String;
    const/16 v4, 0x44

    invoke-static {v4}, Lc8/oHf;->isLoggable(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 751
    const-string/jumbo v4, "STRATEGY.ALL"

    const-string/jumbo v5, "[Non-Config] Dip=%.1f UISize=%d Area=%s\nOriginUrl=%s\nDecideUrl=%s"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lc8/HNf;->mDip:F

    .line 752
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v8, v9

    const/4 v9, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v8, v9

    const/4 v9, 0x2

    aput-object p3, v8, v9

    const/4 v9, 0x3

    aput-object p1, v8, v9

    const/4 v9, 0x4

    aput-object v19, v8, v9

    .line 751
    invoke-static {v4, v5, v8}, Lc8/oHf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 688
    .end local v6    # "outString":Ljava/lang/StringBuffer;
    .end local v10    # "lowImageScale":D
    .end local v12    # "highImageScale":D
    .end local v18    # "currentSuffix":Ljava/lang/String;
    .end local v19    # "decidedUrl":Ljava/lang/String;
    .end local v20    # "highQ":Ljava/lang/String;
    .end local v21    # "highS":Ljava/lang/String;
    .end local v22    # "isAnyArgExist":Z
    .end local v23    # "isWebp":Z
    .end local v25    # "lowQ":Ljava/lang/String;
    .end local v26    # "lowS":Ljava/lang/String;
    :cond_a
    iget-object v4, v7, Lc8/vNf;->base:Ljava/lang/String;

    const-string/jumbo v5, "_m.jpg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, v7, Lc8/vNf;->base:Ljava/lang/String;

    const-string/jumbo v5, "_b.jpg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 689
    :cond_b
    iget-object v4, v7, Lc8/vNf;->base:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v8, v7, Lc8/vNf;->base:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x6

    invoke-virtual {v4, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v7, Lc8/vNf;->base:Ljava/lang/String;

    goto/16 :goto_1

    .line 702
    .restart local v6    # "outString":Ljava/lang/StringBuffer;
    .restart local v18    # "currentSuffix":Ljava/lang/String;
    .restart local v23    # "isWebp":Z
    :cond_c
    sget-object v4, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->q75:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    invoke-virtual {v4}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->getImageQuality()Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_2

    .line 703
    .restart local v25    # "lowQ":Ljava/lang/String;
    :cond_d
    sget-object v4, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->q90:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    invoke-virtual {v4}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->getImageQuality()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_3

    .line 735
    .restart local v10    # "lowImageScale":D
    .restart local v12    # "highImageScale":D
    .restart local v20    # "highQ":Ljava/lang/String;
    .restart local v21    # "highS":Ljava/lang/String;
    .restart local v22    # "isAnyArgExist":Z
    .restart local v26    # "lowS":Ljava/lang/String;
    :cond_e
    const/16 v22, 0x0

    goto/16 :goto_4

    .line 739
    :cond_f
    const/16 v22, 0x0

    goto/16 :goto_5

    .line 745
    :cond_10
    const/4 v4, 0x0

    goto/16 :goto_6
.end method

.method public getDip()F
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lc8/HNf;->mDip:F

    return v0
.end method

.method public initDip(Landroid/content/Context;)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 145
    if-nez p1, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 150
    .local v1, "metric":Landroid/util/DisplayMetrics;
    const-string/jumbo v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 152
    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lc8/HNf;->mDip:F

    .line 153
    iget v2, p0, Lc8/HNf;->mDip:F

    const/high16 v3, 0x40000000    # 2.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p0, Lc8/HNf;->mIsLowQuality:Z

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public declared-synchronized initImageUrlStrategy([I[I[I[I[I[ILjava/util/HashMap;Ljava/lang/String;Ljava/lang/String;[I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZZLjava/lang/String;Z)V
    .locals 2
    .param p1, "cdnSize"    # [I
    .param p2, "cdn10000Width"    # [I
    .param p3, "cdn10000Height"    # [I
    .param p4, "xzCdn"    # [I
    .param p5, "levelModelSizes"    # [I
    .param p6, "levelModelXzSizes"    # [I
    .param p8, "doMainDest"    # Ljava/lang/String;
    .param p9, "apgDomainDest"    # Ljava/lang/String;
    .param p10, "apgBizWL"    # [I
    .param p11, "convertExcludePath"    # [Ljava/lang/String;
    .param p12, "aliCdnDomain"    # [Ljava/lang/String;
    .param p13, "exactExcludeDomains"    # [Ljava/lang/String;
    .param p14, "fuzzyExcludePaths"    # [Ljava/lang/String;
    .param p15, "globalSwitch"    # Z
    .param p16, "domainSwitch"    # Z
    .param p17, "levelRatio"    # Ljava/lang/String;
    .param p18, "webpOn"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[I[I[I[I[I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lc8/ENf;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[I[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p7, "switchList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ServiceImageSwitch;>;"
    monitor-enter p0

    :try_start_0
    move/from16 v0, p18

    iput-boolean v0, p0, Lc8/HNf;->mWebpOn:Z

    .line 116
    move/from16 v0, p15

    iput-boolean v0, p0, Lc8/HNf;->mGlobalSwitch:Z

    .line 117
    iget-boolean v1, p0, Lc8/HNf;->mGlobalSwitch:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 138
    .end local p9    # "apgDomainDest":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-void

    .line 121
    .restart local p9    # "apgDomainDest":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {p0, p12}, Lc8/HNf;->setAliCdnDomain([Ljava/lang/String;)Lc8/HNf;

    .line 122
    invoke-virtual {p0, p1}, Lc8/HNf;->setCdnSize([I)Lc8/HNf;

    .line 123
    invoke-virtual {p0, p2}, Lc8/HNf;->setCdn10000WidthSize([I)Lc8/HNf;

    .line 124
    invoke-virtual {p0, p3}, Lc8/HNf;->setCdn10000HeightSize([I)Lc8/HNf;

    .line 125
    invoke-virtual {p0, p4}, Lc8/HNf;->setXzCdnSize([I)Lc8/HNf;

    .line 126
    invoke-virtual {p0, p5}, Lc8/HNf;->setLevelModelCdnSize([I)Lc8/HNf;

    .line 127
    invoke-virtual {p0, p6}, Lc8/HNf;->setLevelModelXzCdnSize([I)Lc8/HNf;

    .line 128
    move-object/from16 v0, p17

    invoke-virtual {p0, v0}, Lc8/HNf;->setLevelRatio(Ljava/lang/String;)Lc8/HNf;

    .line 129
    invoke-virtual {p0, p7}, Lc8/HNf;->setServiceIamgeSwitch(Ljava/util/HashMap;)Lc8/HNf;

    .line 130
    invoke-virtual {p0, p8}, Lc8/HNf;->setDoMainDest(Ljava/lang/String;)Lc8/HNf;

    .line 131
    move/from16 v0, p16

    iput-boolean v0, p0, Lc8/HNf;->mDomainSwitch:Z

    .line 133
    invoke-virtual {p0, p13}, Lc8/HNf;->setExactExcludeDomain([Ljava/lang/String;)Lc8/HNf;

    .line 134
    move-object/from16 v0, p14

    invoke-virtual {p0, v0}, Lc8/HNf;->setFuzzyExcludePath([Ljava/lang/String;)Lc8/HNf;

    .line 135
    invoke-virtual {p0, p11}, Lc8/HNf;->setExcludeDomainPath([Ljava/lang/String;)Lc8/HNf;

    .line 136
    invoke-static {p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo p9, "ms.alicdn.com"

    .end local p9    # "apgDomainDest":Ljava/lang/String;
    :cond_1
    iput-object p9, p0, Lc8/HNf;->mApgImageDomain:Ljava/lang/String;

    .line 137
    iput-object p10, p0, Lc8/HNf;->mApgBizWhiteList:[I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 115
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isCdnImage(Lc8/GNf;)Z
    .locals 2
    .param p1, "cdnInfo"    # Lc8/GNf;

    .prologue
    .line 985
    iget-object v0, p1, Lc8/GNf;->url:Ljava/lang/String;

    iget-object v1, p1, Lc8/GNf;->host:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lc8/HNf;->isCdnImage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isCdnImage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 992
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc8/HNf;->isCdnImage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDomainSwitch()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lc8/HNf;->mDomainSwitch:Z

    return v0
.end method

.method public isExcludeUrl(Ljava/lang/String;)Z
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1034
    iget-object v0, p0, Lc8/HNf;->mLooseCDNDomainBlackList:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lc8/HNf;->isExcludeUrl([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isInCDN(I)Z
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 437
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lc8/HNf;->mCdnSizes:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 438
    iget-object v1, p0, Lc8/HNf;->mCdnSizes:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 439
    const/4 v1, 0x1

    .line 441
    :goto_1
    return v1

    .line 437
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 441
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method isNetworkSlow()Z
    .locals 6

    .prologue
    .line 1076
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 1077
    .local v0, "now":J
    iget-wide v2, p0, Lc8/HNf;->mLastUpdateTime:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x77359400

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 1078
    invoke-static {}, Lc8/kHf;->getInstance()Lc8/kHf;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lc8/kHf;->getInstance()Lc8/kHf;

    move-result-object v2

    invoke-virtual {v2}, Lc8/kHf;->getStrategySupport()Lc8/jHf;

    move-result-object v2

    invoke-interface {v2}, Lc8/jHf;->isNetworkSlow()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lc8/HNf;->mIsNetworkSlow:Z

    .line 1079
    iput-wide v0, p0, Lc8/HNf;->mLastUpdateTime:J

    .line 1081
    :cond_0
    iget-boolean v2, p0, Lc8/HNf;->mIsNetworkSlow:Z

    return v2

    .line 1078
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isStrictCdnImage(Lc8/GNf;)Z
    .locals 5
    .param p1, "cdnInfo"    # Lc8/GNf;

    .prologue
    const/4 v2, 0x0

    .line 1016
    iget-object v0, p1, Lc8/GNf;->host:Ljava/lang/String;

    .line 1017
    .local v0, "host":Ljava/lang/String;
    iget-object v3, p0, Lc8/HNf;->mStrictCDNDomainBlackList:[Ljava/lang/String;

    iget-object v4, p1, Lc8/GNf;->url:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v0}, Lc8/HNf;->isExcludeUrl([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1027
    :cond_0
    :goto_0
    return v2

    .line 1020
    :cond_1
    if-eqz v0, :cond_0

    .line 1021
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lc8/HNf;->mStrictCDNDomainWhiteList:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 1022
    iget-object v3, p0, Lc8/HNf;->mStrictCDNDomainWhiteList:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_2

    .line 1023
    const/4 v2, 0x1

    goto :goto_0

    .line 1021
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method isSupportWebP()Z
    .locals 1

    .prologue
    .line 1072
    invoke-static {}, Lc8/kHf;->getInstance()Lc8/kHf;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lc8/kHf;->getInstance()Lc8/kHf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/kHf;->getStrategySupport()Lc8/jHf;

    move-result-object v0

    invoke-interface {v0}, Lc8/jHf;->isSupportWebP()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public matchSize(I)I
    .locals 7
    .param p1, "size"    # I

    .prologue
    .line 346
    iget-object v5, p0, Lc8/HNf;->mCdnSizes:[I

    array-length v5, v5

    if-gtz v5, :cond_0

    .line 359
    .end local p1    # "size":I
    :goto_0
    return p1

    .line 350
    .restart local p1    # "size":I
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v5, p0, Lc8/HNf;->mCdnSizes:[I

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 351
    iget-object v5, p0, Lc8/HNf;->mCdnSizes:[I

    aget v0, v5, v1

    .line 352
    .local v0, "first":I
    iget-object v5, p0, Lc8/HNf;->mCdnSizes:[I

    add-int/lit8 v6, v1, 0x1

    aget v4, v5, v6

    .line 353
    .local v4, "second":I
    sub-int v2, p1, v0

    .line 354
    .local v2, "left":I
    sub-int v3, v4, p1

    .line 355
    .local v3, "right":I
    if-ltz v2, :cond_2

    if-ltz v3, :cond_2

    .line 356
    if-ge v2, v3, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, v4

    goto :goto_0

    .line 350
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 359
    .end local v0    # "first":I
    .end local v2    # "left":I
    .end local v3    # "right":I
    .end local v4    # "second":I
    :cond_3
    iget-object v5, p0, Lc8/HNf;->mCdnSizes:[I

    iget-object v6, p0, Lc8/HNf;->mCdnSizes:[I

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    aget p1, v5, v6

    goto :goto_0
.end method

.method public setAliCdnDomain([Ljava/lang/String;)Lc8/HNf;
    .locals 1
    .param p1, "aliCdnDomain"    # [Ljava/lang/String;

    .prologue
    .line 162
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 163
    iput-object p1, p0, Lc8/HNf;->mLooseCDNDomainWhiteList:[Ljava/lang/String;

    .line 165
    :cond_0
    return-object p0
.end method

.method public setCdn10000HeightSize([I)Lc8/HNf;
    .locals 1
    .param p1, "cdn10000heightsize"    # [I

    .prologue
    .line 310
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 311
    iput-object p1, p0, Lc8/HNf;->mCdn10000Height:[I

    .line 315
    :goto_0
    return-object p0

    .line 313
    :cond_0
    sget-object v0, Lc8/HNf;->CDN10000Height:[I

    iput-object v0, p0, Lc8/HNf;->mCdn10000Height:[I

    goto :goto_0
.end method

.method public setCdn10000WidthSize([I)Lc8/HNf;
    .locals 1
    .param p1, "cdn10000Width"    # [I

    .prologue
    .line 296
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 297
    iput-object p1, p0, Lc8/HNf;->mCdn10000Width:[I

    .line 301
    :goto_0
    return-object p0

    .line 299
    :cond_0
    sget-object v0, Lc8/HNf;->CDN10000Width:[I

    iput-object v0, p0, Lc8/HNf;->mCdn10000Width:[I

    goto :goto_0
.end method

.method public setCdnSize([I)Lc8/HNf;
    .locals 1
    .param p1, "cdnsize"    # [I

    .prologue
    .line 241
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 242
    iput-object p1, p0, Lc8/HNf;->mCdnSizes:[I

    .line 246
    :goto_0
    return-object p0

    .line 244
    :cond_0
    sget-object v0, Lc8/HNf;->CDN:[I

    iput-object v0, p0, Lc8/HNf;->mCdnSizes:[I

    goto :goto_0
.end method

.method public setDoMainDest(Ljava/lang/String;)Lc8/HNf;
    .locals 1
    .param p1, "doMainDest"    # Ljava/lang/String;

    .prologue
    .line 227
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    iput-object p1, p0, Lc8/HNf;->mDoMainDest:Ljava/lang/String;

    .line 232
    :goto_0
    return-object p0

    .line 230
    :cond_0
    const-string/jumbo v0, "gw.alicdn.com"

    iput-object v0, p0, Lc8/HNf;->mDoMainDest:Ljava/lang/String;

    goto :goto_0
.end method

.method public setExactExcludeDomain([Ljava/lang/String;)Lc8/HNf;
    .locals 1
    .param p1, "excludePath"    # [Ljava/lang/String;

    .prologue
    .line 174
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 175
    iput-object p1, p0, Lc8/HNf;->mLooseCDNDomainBlackList:[Ljava/lang/String;

    .line 179
    :goto_0
    return-object p0

    .line 177
    :cond_0
    sget-object v0, Lc8/HNf;->LOOSE_CDN_DOMAIN_BLACK_LIST:[Ljava/lang/String;

    iput-object v0, p0, Lc8/HNf;->mLooseCDNDomainBlackList:[Ljava/lang/String;

    goto :goto_0
.end method

.method public setExcludeDomainPath([Ljava/lang/String;)Lc8/HNf;
    .locals 1
    .param p1, "excludeDomainPath"    # [Ljava/lang/String;

    .prologue
    .line 188
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 189
    iput-object p1, p0, Lc8/HNf;->mLooseConvergenceBlackList:[Ljava/lang/String;

    .line 191
    :cond_0
    return-object p0
.end method

.method public setFuzzyExcludePath([Ljava/lang/String;)Lc8/HNf;
    .locals 1
    .param p1, "excludePath"    # [Ljava/lang/String;

    .prologue
    .line 213
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 214
    iput-object p1, p0, Lc8/HNf;->mFuzzyExcludePath:[Ljava/lang/String;

    .line 218
    :goto_0
    return-object p0

    .line 216
    :cond_0
    sget-object v0, Lc8/HNf;->FUZZY_EXCLUDE_PATH:[Ljava/lang/String;

    iput-object v0, p0, Lc8/HNf;->mFuzzyExcludePath:[Ljava/lang/String;

    goto :goto_0
.end method

.method public setLevelModelCdnSize([I)Lc8/HNf;
    .locals 1
    .param p1, "sizes"    # [I

    .prologue
    .line 265
    invoke-direct {p0, p1}, Lc8/HNf;->isValidSizes([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iput-object p1, p0, Lc8/HNf;->mLevelModelCdnSizes:[I

    .line 268
    :cond_0
    return-object p0
.end method

.method public setLevelModelXzCdnSize([I)Lc8/HNf;
    .locals 1
    .param p1, "sizes"    # [I

    .prologue
    .line 272
    invoke-direct {p0, p1}, Lc8/HNf;->isValidSizes([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    iput-object p1, p0, Lc8/HNf;->mLevelModelXzCdnSizes:[I

    .line 275
    :cond_0
    return-object p0
.end method

.method public setLevelRatio(Ljava/lang/String;)Lc8/HNf;
    .locals 2
    .param p1, "levelRatio"    # Ljava/lang/String;

    .prologue
    .line 280
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lc8/HNf;->mLevelRatio:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :goto_0
    iget v0, p0, Lc8/HNf;->mLevelRatio:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lc8/HNf;->mLevelRatio:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 285
    :cond_0
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lc8/HNf;->mLevelRatio:F

    .line 287
    :cond_1
    return-object p0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setServiceIamgeSwitch(Ljava/util/HashMap;)Lc8/HNf;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lc8/ENf;",
            ">;)",
            "Lc8/HNf;"
        }
    .end annotation

    .prologue
    .line 338
    .local p1, "switchList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ServiceImageSwitch;>;"
    iput-object p1, p0, Lc8/HNf;->mServiceImageSwitchList:Ljava/util/HashMap;

    .line 339
    return-object p0
.end method

.method public setXzCdnSize([I)Lc8/HNf;
    .locals 1
    .param p1, "xzCdnSize"    # [I

    .prologue
    .line 324
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 325
    iput-object p1, p0, Lc8/HNf;->mXzCdnSizes:[I

    .line 329
    :goto_0
    return-object p0

    .line 327
    :cond_0
    sget-object v0, Lc8/HNf;->XZCDN:[I

    iput-object v0, p0, Lc8/HNf;->mXzCdnSizes:[I

    goto :goto_0
.end method

.method public strictConvergenceUrl(Lc8/GNf;Z)Ljava/lang/String;
    .locals 6
    .param p1, "cdnInfo"    # Lc8/GNf;
    .param p2, "checkCdnImage"    # Z

    .prologue
    .line 981
    iget-object v1, p0, Lc8/HNf;->mStrictCDNDomainWhiteList:[Ljava/lang/String;

    iget-object v2, p0, Lc8/HNf;->mStrictConvergenceBlackList:[Ljava/lang/String;

    iget-object v3, p1, Lc8/GNf;->url:Ljava/lang/String;

    iget-object v4, p1, Lc8/GNf;->host:Ljava/lang/String;

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lc8/HNf;->convergenceUrl([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public taoXZCDN(IZZ)I
    .locals 2
    .param p1, "size"    # I
    .param p2, "higher"    # Z
    .param p3, "levelModel"    # Z

    .prologue
    .line 367
    if-eqz p3, :cond_0

    .line 368
    iget-object v0, p0, Lc8/HNf;->mLevelModelXzCdnSizes:[I

    iget-object v1, p0, Lc8/HNf;->mLevelModelXzCdnSizes:[I

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lc8/HNf;->findBestLevel([III)I

    move-result v0

    .line 370
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lc8/HNf;->mXzCdnSizes:[I

    iget-object v1, p0, Lc8/HNf;->mXzCdnSizes:[I

    invoke-direct {p0, v1, p1, p2}, Lc8/HNf;->binarySearch([IIZ)I

    move-result v1

    aget v0, v0, v1

    goto :goto_0
.end method

.method public taobaoCDN10000Height(IZ)I
    .locals 2
    .param p1, "height"    # I
    .param p2, "higher"    # Z

    .prologue
    .line 427
    iget-object v1, p0, Lc8/HNf;->mCdn10000Height:[I

    invoke-direct {p0, v1, p1, p2}, Lc8/HNf;->binarySearch([IIZ)I

    move-result v0

    .line 428
    .local v0, "pos":I
    iget-object v1, p0, Lc8/HNf;->mCdn10000Height:[I

    aget v1, v1, v0

    return v1
.end method

.method public taobaoCDN10000Width(IZ)I
    .locals 2
    .param p1, "width"    # I
    .param p2, "higher"    # Z

    .prologue
    .line 422
    iget-object v1, p0, Lc8/HNf;->mCdn10000Width:[I

    invoke-direct {p0, v1, p1, p2}, Lc8/HNf;->binarySearch([IIZ)I

    move-result v0

    .line 423
    .local v0, "pos":I
    iget-object v1, p0, Lc8/HNf;->mCdn10000Width:[I

    aget v1, v1, v0

    return v1
.end method

.method public taobaoCDNPatten(IZ)I
    .locals 1
    .param p1, "size"    # I
    .param p2, "higher"    # Z

    .prologue
    .line 363
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lc8/HNf;->taobaoCDNPatten(IZZ)I

    move-result v0

    return v0
.end method

.method public taobaoCDNPatten(IZZ)I
    .locals 2
    .param p1, "size"    # I
    .param p2, "higher"    # Z
    .param p3, "levelModel"    # Z

    .prologue
    .line 375
    if-eqz p3, :cond_0

    .line 376
    iget-object v0, p0, Lc8/HNf;->mLevelModelCdnSizes:[I

    iget-object v1, p0, Lc8/HNf;->mLevelModelCdnSizes:[I

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lc8/HNf;->findBestLevel([III)I

    move-result v0

    .line 378
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lc8/HNf;->mCdnSizes:[I

    iget-object v1, p0, Lc8/HNf;->mCdnSizes:[I

    invoke-direct {p0, v1, p1, p2}, Lc8/HNf;->binarySearch([IIZ)I

    move-result v1

    aget v0, v0, v1

    goto :goto_0
.end method

.method public updateStrictCDNDomainBlackList([Ljava/lang/String;)V
    .locals 1
    .param p1, "blackList"    # [Ljava/lang/String;

    .prologue
    .line 201
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 202
    iput-object p1, p0, Lc8/HNf;->mStrictCDNDomainBlackList:[Ljava/lang/String;

    .line 204
    :cond_0
    return-void
.end method

.method public updateStrictCDNDomainWhiteList([Ljava/lang/String;)V
    .locals 1
    .param p1, "whiteList"    # [Ljava/lang/String;

    .prologue
    .line 195
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 196
    iput-object p1, p0, Lc8/HNf;->mStrictCDNDomainWhiteList:[Ljava/lang/String;

    .line 198
    :cond_0
    return-void
.end method

.method public updateStrictConvergenceBlackList([Ljava/lang/String;)V
    .locals 1
    .param p1, "blackList"    # [Ljava/lang/String;

    .prologue
    .line 207
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 208
    iput-object p1, p0, Lc8/HNf;->mStrictConvergenceBlackList:[Ljava/lang/String;

    .line 210
    :cond_0
    return-void
.end method
