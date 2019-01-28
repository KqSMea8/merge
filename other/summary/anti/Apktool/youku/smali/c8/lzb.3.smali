.class public Lc8/lzb;
.super Ljava/lang/Object;
.source "ClientVariables.java"


# static fields
.field public static final s_instance:Lc8/lzb;


# instance fields
.field private volatile appKey:Ljava/lang/String;

.field private volatile mContext:Landroid/content/Context;

.field private volatile mIs1010AutoTrackClosed:Z

.field private volatile mIsAliyunOSPlatform:Z

.field private volatile mOutsideTTID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lc8/lzb;

    invoke-direct {v0}, Lc8/lzb;-><init>()V

    sput-object v0, Lc8/lzb;->s_instance:Lc8/lzb;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v1, p0, Lc8/lzb;->mContext:Landroid/content/Context;

    .line 11
    iput-boolean v0, p0, Lc8/lzb;->mIs1010AutoTrackClosed:Z

    .line 13
    iput-boolean v0, p0, Lc8/lzb;->mIsAliyunOSPlatform:Z

    .line 14
    iput-object v1, p0, Lc8/lzb;->mOutsideTTID:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public static getInstance()Lc8/lzb;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lc8/lzb;->s_instance:Lc8/lzb;

    return-object v0
.end method


# virtual methods
.method public getAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lc8/lzb;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lc8/lzb;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getOutsideTTID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lc8/lzb;->mOutsideTTID:Ljava/lang/String;

    return-object v0
.end method

.method public is1010AutoTrackClosed()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lc8/lzb;->mIs1010AutoTrackClosed:Z

    return v0
.end method

.method public isAliyunOSPlatform()Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lc8/lzb;->mIsAliyunOSPlatform:Z

    return v0
.end method

.method public set1010AutoTrackClose()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/lzb;->mIs1010AutoTrackClosed:Z

    .line 51
    return-void
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lc8/lzb;->appKey:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    .line 46
    iput-object p1, p0, Lc8/lzb;->mContext:Landroid/content/Context;

    .line 47
    return-void
.end method

.method public setOutsideTTID(Ljava/lang/String;)V
    .locals 0
    .param p1, "aTTID"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lc8/lzb;->mOutsideTTID:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setToAliyunOSPlatform()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/lzb;->mIsAliyunOSPlatform:Z

    .line 23
    return-void
.end method
