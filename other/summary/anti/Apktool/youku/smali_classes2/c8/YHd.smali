.class public Lc8/YHd;
.super Ljava/lang/Object;
.source "ConnectionClassManager.java"


# instance fields
.field private mConnectionQualityChangeListener:Lc8/OId;

.field private mCurrentBandwidth:I

.field private mCurrentBandwidthForSampling:I

.field private mCurrentConnectionQuality:Lcom/meizu/cloud/pushsdk/networking/common/ConnectionQuality;

.field private mCurrentNumberOfSample:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, Lcom/meizu/cloud/pushsdk/networking/common/ConnectionQuality;->UNKNOWN:Lcom/meizu/cloud/pushsdk/networking/common/ConnectionQuality;

    iput-object v0, p0, Lc8/YHd;->mCurrentConnectionQuality:Lcom/meizu/cloud/pushsdk/networking/common/ConnectionQuality;

    .line 38
    iput v1, p0, Lc8/YHd;->mCurrentBandwidthForSampling:I

    .line 39
    iput v1, p0, Lc8/YHd;->mCurrentNumberOfSample:I

    .line 40
    iput v1, p0, Lc8/YHd;->mCurrentBandwidth:I

    return-void
.end method

.method static synthetic access$000(Lc8/YHd;)Lcom/meizu/cloud/pushsdk/networking/common/ConnectionQuality;
    .locals 1
    .param p0, "x0"    # Lc8/YHd;

    .prologue
    .line 26
    iget-object v0, p0, Lc8/YHd;->mCurrentConnectionQuality:Lcom/meizu/cloud/pushsdk/networking/common/ConnectionQuality;

    return-object v0
.end method

.method static synthetic access$100(Lc8/YHd;)I
    .locals 1
    .param p0, "x0"    # Lc8/YHd;

    .prologue
    .line 26
    iget v0, p0, Lc8/YHd;->mCurrentBandwidth:I

    return v0
.end method

.method static synthetic access$200(Lc8/YHd;)Lc8/OId;
    .locals 1
    .param p0, "x0"    # Lc8/YHd;

    .prologue
    .line 26
    iget-object v0, p0, Lc8/YHd;->mConnectionQualityChangeListener:Lc8/OId;

    return-object v0
.end method
