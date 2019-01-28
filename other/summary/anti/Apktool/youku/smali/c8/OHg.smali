.class public Lc8/OHg;
.super Ljava/lang/Object;
.source "PlayActionData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/PHg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private extMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isP2P:Z

.field private isVip:Z

.field private mActionBegin:Ljava/lang/String;

.field private mActionEnd:Ljava/lang/String;

.field private mAdUrl:Ljava/lang/String;

.field private mAdvBeforeDuration:Ljava/lang/String;

.field private mAutoPlay:Ljava/lang/String;

.field private mBeforeDuration:Ljava/lang/String;

.field private mChannelId:Ljava/lang/String;

.field private mComplete:Ljava/lang/String;

.field private mContinuePlay:Ljava/lang/String;

.field private mCopyright:Ljava/lang/String;

.field private mCtype:Ljava/lang/String;

.field private mCurrentFormat:Ljava/lang/String;

.field private mCurrentPlaytime:Ljava/lang/String;

.field private mDuration:Ljava/lang/String;

.field private mEv:Ljava/lang/String;

.field private mEvent:Ljava/lang/String;

.field private mFreeTime:Ljava/lang/String;

.field private mFull:Ljava/lang/String;

.field private mLanguage:Ljava/lang/String;

.field private mOip:Ljava/lang/String;

.field private mP2PVersion:Ljava/lang/String;

.field private mPayState:Ljava/lang/String;

.field private mPlayExperience:Ljava/lang/String;

.field private mPlayGestures:Ljava/lang/String;

.field private mPlayHD2Duration:Ljava/lang/String;

.field private mPlayHD2Times:Ljava/lang/String;

.field private mPlayHDDuration:Ljava/lang/String;

.field private mPlayHDTimes:Ljava/lang/String;

.field private mPlayLoadEvents:Ljava/lang/String;

.field private mPlayRates:Ljava/lang/String;

.field private mPlaySDDuration:Ljava/lang/String;

.field private mPlaySDTimes:Ljava/lang/String;

.field private mPlayState:Ljava/lang/String;

.field private mPlaycode:Ljava/lang/String;

.field private mPlaylistChannelId:Ljava/lang/String;

.field private mPlaylistId:Ljava/lang/String;

.field private mPlaysid:Ljava/lang/String;

.field private mPlaytype:Ljava/lang/String;

.field private mReplay:Z

.field private mSChannelId:Ljava/lang/String;

.field private mSPlaylistChannelId:Ljava/lang/String;

.field private mSShowChannelId:Ljava/lang/String;

.field private mScreenState:Ljava/lang/String;

.field private mShowChannelId:Ljava/lang/String;

.field private mShowId:Ljava/lang/String;

.field private mSid:Ljava/lang/String;

.field private mSource:Ljava/lang/String;

.field private mStartPlaytime:Ljava/lang/String;

.field private mTailers:Ljava/lang/String;

.field private mToken:Ljava/lang/String;

.field private mVid:Ljava/lang/String;

.field private mVideoOwner:Ljava/lang/String;

.field private mVideoTime:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "vid"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/OHg;->mPlaysid:Ljava/lang/String;

    .line 13
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/OHg;->mVid:Ljava/lang/String;

    .line 14
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/OHg;->mPlaytype:Ljava/lang/String;

    .line 15
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/OHg;->mPlaycode:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/OHg;->mComplete:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/OHg;->mSource:Ljava/lang/String;

    .line 22
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/OHg;->mVideoTime:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/OHg;->mDuration:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/OHg;->mPlayLoadEvents:Ljava/lang/String;

    .line 25
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/OHg;->mPlayRates:Ljava/lang/String;

    .line 39
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/OHg;->mFull:Ljava/lang/String;

    .line 40
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/OHg;->mCurrentFormat:Ljava/lang/String;

    .line 41
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/OHg;->mCurrentPlaytime:Ljava/lang/String;

    .line 42
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/OHg;->mContinuePlay:Ljava/lang/String;

    .line 43
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/OHg;->mStartPlaytime:Ljava/lang/String;

    .line 45
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/OHg;->mVideoOwner:Ljava/lang/String;

    .line 56
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/OHg;->mScreenState:Ljava/lang/String;

    .line 58
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/OHg;->mPayState:Ljava/lang/String;

    .line 59
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/OHg;->mPlayState:Ljava/lang/String;

    .line 60
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/OHg;->mCopyright:Ljava/lang/String;

    .line 61
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/OHg;->mTailers:Ljava/lang/String;

    .line 62
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/OHg;->mPlayExperience:Ljava/lang/String;

    .line 63
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/OHg;->mP2PVersion:Ljava/lang/String;

    .line 65
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/OHg;->mEvent:Ljava/lang/String;

    .line 69
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/OHg;->mFreeTime:Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/OHg;->extMap:Ljava/util/HashMap;

    .line 99
    iput-object p1, p0, Lc8/OHg;->mVid:Ljava/lang/String;

    .line 100
    return-void
.end method

.method static synthetic access$000(Lc8/OHg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/OHg;

    .prologue
    .line 11
    iget-object v0, p0, Lc8/OHg;->mVid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lc8/OHg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/OHg;

    .prologue
    .line 11
    iget-object v0, p0, Lc8/OHg;->mPlaysid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lc8/OHg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/OHg;

    .prologue
    .line 11
    iget-object v0, p0, Lc8/OHg;->mPlayLoadEvents:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lc8/OHg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/OHg;

    .prologue
    .line 11
    iget-object v0, p0, Lc8/OHg;->mPlayRates:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lc8/OHg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/OHg;

    .prologue
    .line 11
    iget-object v0, p0, Lc8/OHg;->mPlaySDTimes:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lc8/OHg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/OHg;

    .prologue
    .line 11
    iget-object v0, p0, Lc8/OHg;->mPlaySDDuration:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lc8/OHg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/OHg;

    .prologue
    .line 11
    iget-object v0, p0, Lc8/OHg;->mPlayHDTimes:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lc8/OHg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/OHg;

    .prologue
    .line 11
    iget-object v0, p0, Lc8/OHg;->mPlayHDDuration:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lc8/OHg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/OHg;

    .prologue
    .line 11
    iget-object v0, p0, Lc8/OHg;->mPlayHD2Times:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lc8/OHg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/OHg;

    .prologue
    .line 11
    iget-object v0, p0, Lc8/OHg;->mPlayHD2Duration:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lc8/OHg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/OHg;

    .prologue
    .line 11
    iget-object v0, p0, Lc8/OHg;->mSource:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lc8/OHg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/OHg;

    .prologue
    .line 11
    iget-object v0, p0, Lc8/OHg;->mSid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lc8/OHg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/OHg;

    .prologue
    .line 11
    iget-object v0, p0, Lc8/OHg;->mPlaytype:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lc8/OHg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/OHg;

    .prologue
    .line 11
    iget-object v0, p0, Lc8/OHg;->mCtype:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lc8/OHg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/OHg;

    .prologue
    .line 11
    iget-object v0, p0, Lc8/OHg;->mEv:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lc8/OHg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/OHg;

    .prologue
    .line 11
    iget-object v0, p0, Lc8/OHg;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lc8/OHg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/OHg;

    .prologue
    .line 11
    iget-object v0, p0, Lc8/OHg;->mOip:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lc8/OHg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/OHg;

    .prologue
    .line 11
    iget-object v0, p0, Lc8/OHg;->mContinuePlay:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lc8/OHg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/OHg;

    .prologue
    .line 11
    iget-object v0, p0, Lc8/OHg;->mCurrentFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Lc8/OHg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/OHg;

    .prologue
    .line 11
    iget-object v0, p0, Lc8/OHg;->mCurrentPlaytime:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lc8/OHg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/OHg;

    .prologue
    .line 11
    iget-object v0, p0, Lc8/OHg;->mFull:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Lc8/OHg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/OHg;

    .prologue
    .line 11
    iget-object v0, p0, Lc8/OHg;->mStartPlaytime:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900(Lc8/OHg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/OHg;

    .prologue
    .line 11
    iget-object v0, p0, Lc8/OHg;->mVideoOwner:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lc8/OHg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/OHg;

    .prologue
    .line 11
    iget-object v0, p0, Lc8/OHg;->mPlaycode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Lc8/OHg;)Z
    .locals 1
    .param p0, "x0"    # Lc8/OHg;

    .prologue
    .line 11
    iget-boolean v0, p0, Lc8/OHg;->mReplay:Z

    return v0
.end method

.method static synthetic access$3100(Lc8/OHg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/OHg;

    .prologue
    .line 11
    iget-object v0, p0, Lc8/OHg;->mChannelId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3200(Lc8/OHg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/OHg;

    .prologue
    .line 11
    iget-object v0, p0, Lc8/OHg;->mSChannelId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3300(Lc8/OHg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/OHg;

    .prologue
    .line 11
    iget-object v0, p0, Lc8/OHg;->mPlaylistId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3400(Lc8/OHg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/OHg;

    .prologue
    .line 11
    iget-object v0, p0, Lc8/OHg;->mPlaylistChannelId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3500(Lc8/OHg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/OHg;

    .prologue
    .line 11
    iget-object v0, p0, Lc8/OHg;->mSPlaylistChannelId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3600(Lc8/OHg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/OHg;

    .prologue
    .line 11
    iget-object v0, p0, Lc8/OHg;->mShowId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3700(Lc8/OHg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/OHg;

    .prologue
    .line 11
    iget-object v0, p0, Lc8/OHg;->mShowChannelId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3800(Lc8/OHg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/OHg;

    .prologue
    .line 11
    iget-object v0, p0, Lc8/OHg;->mSShowChannelId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3900(Lc8/OHg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/OHg;

    .prologue
    .line 11
    iget-object v0, p0, Lc8/OHg;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lc8/OHg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/OHg;

    .prologue
    .line 11
    iget-object v0, p0, Lc8/OHg;->mComplete:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4000(Lc8/OHg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/OHg;

    .prologue
    .line 11
    iget-object v0, p0, Lc8/OHg;->mScreenState:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4100(Lc8/OHg;)Z
    .locals 1
    .param p0, "x0"    # Lc8/OHg;

    .prologue
    .line 11
    iget-boolean v0, p0, Lc8/OHg;->isVip:Z

    return v0
.end method

.method static synthetic access$4200(Lc8/OHg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/OHg;

    .prologue
    .line 11
    iget-object v0, p0, Lc8/OHg;->mPayState:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4300(Lc8/OHg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/OHg;

    .prologue
    .line 11
    iget-object v0, p0, Lc8/OHg;->mPlayState:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4400(Lc8/OHg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/OHg;

    .prologue
    .line 11
    iget-object v0, p0, Lc8/OHg;->mCopyright:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4500(Lc8/OHg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/OHg;

    .prologue
    .line 11
    iget-object v0, p0, Lc8/OHg;->mTailers:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4600(Lc8/OHg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/OHg;

    .prologue
    .line 11
    iget-object v0, p0, Lc8/OHg;->mPlayExperience:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4700(Lc8/OHg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/OHg;

    .prologue
    .line 11
    iget-object v0, p0, Lc8/OHg;->mP2PVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4800(Lc8/OHg;)Z
    .locals 1
    .param p0, "x0"    # Lc8/OHg;

    .prologue
    .line 11
    iget-boolean v0, p0, Lc8/OHg;->isP2P:Z

    return v0
.end method

.method static synthetic access$4900(Lc8/OHg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/OHg;

    .prologue
    .line 11
    iget-object v0, p0, Lc8/OHg;->mEvent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lc8/OHg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/OHg;

    .prologue
    .line 11
    iget-object v0, p0, Lc8/OHg;->mAdUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5000(Lc8/OHg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/OHg;

    .prologue
    .line 11
    iget-object v0, p0, Lc8/OHg;->mPlayGestures:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5100(Lc8/OHg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/OHg;

    .prologue
    .line 11
    iget-object v0, p0, Lc8/OHg;->mActionBegin:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5200(Lc8/OHg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/OHg;

    .prologue
    .line 11
    iget-object v0, p0, Lc8/OHg;->mActionEnd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5300(Lc8/OHg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/OHg;

    .prologue
    .line 11
    iget-object v0, p0, Lc8/OHg;->mFreeTime:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lc8/OHg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/OHg;

    .prologue
    .line 11
    iget-object v0, p0, Lc8/OHg;->mAdvBeforeDuration:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lc8/OHg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/OHg;

    .prologue
    .line 11
    iget-object v0, p0, Lc8/OHg;->mBeforeDuration:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lc8/OHg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/OHg;

    .prologue
    .line 11
    iget-object v0, p0, Lc8/OHg;->mVideoTime:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lc8/OHg;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/OHg;

    .prologue
    .line 11
    iget-object v0, p0, Lc8/OHg;->mDuration:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getActionBegin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lc8/OHg;->mActionBegin:Ljava/lang/String;

    return-object v0
.end method

.method public getActionEnd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lc8/OHg;->mActionEnd:Ljava/lang/String;

    return-object v0
.end method

.method public getAdUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lc8/OHg;->mAdUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAdvBeforeDuration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lc8/OHg;->mAdvBeforeDuration:Ljava/lang/String;

    return-object v0
.end method

.method public getAutoPlay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lc8/OHg;->mAutoPlay:Ljava/lang/String;

    return-object v0
.end method

.method public getBeforeDuration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lc8/OHg;->mBeforeDuration:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lc8/OHg;->mChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public getComplete()Ljava/lang/String;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lc8/OHg;->mComplete:Ljava/lang/String;

    return-object v0
.end method

.method public getContinuePlay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lc8/OHg;->mContinuePlay:Ljava/lang/String;

    return-object v0
.end method

.method public getCopyright()Ljava/lang/String;
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lc8/OHg;->mCopyright:Ljava/lang/String;

    return-object v0
.end method

.method public getCtype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lc8/OHg;->mCtype:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lc8/OHg;->mCurrentFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentPlaytime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lc8/OHg;->mCurrentPlaytime:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lc8/OHg;->mDuration:Ljava/lang/String;

    return-object v0
.end method

.method public getEv()Ljava/lang/String;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lc8/OHg;->mEv:Ljava/lang/String;

    return-object v0
.end method

.method public getEvent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lc8/OHg;->mEvent:Ljava/lang/String;

    return-object v0
.end method

.method public getExtMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lc8/OHg;->extMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getFreeTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lc8/OHg;->mFreeTime:Ljava/lang/String;

    return-object v0
.end method

.method public getFull()Ljava/lang/String;
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lc8/OHg;->mFull:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lc8/OHg;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getOip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lc8/OHg;->mOip:Ljava/lang/String;

    return-object v0
.end method

.method public getP2PVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lc8/OHg;->mP2PVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getPayState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lc8/OHg;->mPayState:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayExperience()Ljava/lang/String;
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lc8/OHg;->mPlayExperience:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayGestures()Ljava/lang/String;
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lc8/OHg;->mPlayGestures:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayHD2Duration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lc8/OHg;->mPlayHD2Duration:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayHD2Times()Ljava/lang/String;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lc8/OHg;->mPlayHD2Times:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayHDDuration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lc8/OHg;->mPlayHDDuration:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayHDTimes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lc8/OHg;->mPlayHDTimes:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayLoadEvents()Ljava/lang/String;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lc8/OHg;->mPlayLoadEvents:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayRates()Ljava/lang/String;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lc8/OHg;->mPlayRates:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaySDDuration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lc8/OHg;->mPlaySDDuration:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaySDTimes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lc8/OHg;->mPlaySDTimes:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lc8/OHg;->mPlayState:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lc8/OHg;->mPlaytype:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaycode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lc8/OHg;->mPlaycode:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaylistChannelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lc8/OHg;->mPlaylistChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaylistId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lc8/OHg;->mPlaylistId:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaysid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lc8/OHg;->mPlaysid:Ljava/lang/String;

    return-object v0
.end method

.method public getSChannelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lc8/OHg;->mSChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public getSPlaylistChannelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lc8/OHg;->mSPlaylistChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public getSShowChannelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lc8/OHg;->mSShowChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public getShowChannelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lc8/OHg;->mShowChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public getShowId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lc8/OHg;->mShowId:Ljava/lang/String;

    return-object v0
.end method

.method public getSid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lc8/OHg;->mSid:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lc8/OHg;->mSource:Ljava/lang/String;

    return-object v0
.end method

.method public getStartPlaytime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lc8/OHg;->mStartPlaytime:Ljava/lang/String;

    return-object v0
.end method

.method public getTailers()Ljava/lang/String;
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lc8/OHg;->mTailers:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lc8/OHg;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method public getVid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lc8/OHg;->mVid:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoOwner()Ljava/lang/String;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lc8/OHg;->mVideoOwner:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lc8/OHg;->mVideoTime:Ljava/lang/String;

    return-object v0
.end method

.method public isP2P()Z
    .locals 1

    .prologue
    .line 548
    iget-boolean v0, p0, Lc8/OHg;->isP2P:Z

    return v0
.end method

.method public isReplay()Z
    .locals 1

    .prologue
    .line 476
    iget-boolean v0, p0, Lc8/OHg;->mReplay:Z

    return v0
.end method

.method public isVip()Z
    .locals 1

    .prologue
    .line 520
    iget-boolean v0, p0, Lc8/OHg;->isVip:Z

    return v0
.end method

.method public setAntiLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lc8/OHg;
    .locals 0
    .param p1, "sid"    # Ljava/lang/String;
    .param p2, "ctype"    # Ljava/lang/String;
    .param p3, "ev"    # Ljava/lang/String;
    .param p4, "token"    # Ljava/lang/String;
    .param p5, "oip"    # Ljava/lang/String;

    .prologue
    .line 191
    iput-object p1, p0, Lc8/OHg;->mSid:Ljava/lang/String;

    .line 192
    iput-object p2, p0, Lc8/OHg;->mCtype:Ljava/lang/String;

    .line 193
    iput-object p3, p0, Lc8/OHg;->mEv:Ljava/lang/String;

    .line 194
    iput-object p4, p0, Lc8/OHg;->mToken:Ljava/lang/String;

    .line 195
    iput-object p5, p0, Lc8/OHg;->mOip:Ljava/lang/String;

    .line 196
    return-object p0
.end method

.method public setAutoPlay(Ljava/lang/String;)V
    .locals 0
    .param p1, "autoPlay"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Lc8/OHg;->mAutoPlay:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setChannelId(Ljava/lang/String;)Lc8/OHg;
    .locals 0
    .param p1, "channelId"    # Ljava/lang/String;

    .prologue
    .line 240
    iput-object p1, p0, Lc8/OHg;->mChannelId:Ljava/lang/String;

    .line 241
    return-object p0
.end method

.method public setComplete(Ljava/lang/String;)Lc8/OHg;
    .locals 0
    .param p1, "complete"    # Ljava/lang/String;

    .prologue
    .line 148
    iput-object p1, p0, Lc8/OHg;->mComplete:Ljava/lang/String;

    .line 149
    return-object p0
.end method

.method public setContinuePlay(Ljava/lang/String;)Lc8/OHg;
    .locals 0
    .param p1, "continuePlay"    # Ljava/lang/String;

    .prologue
    .line 210
    iput-object p1, p0, Lc8/OHg;->mContinuePlay:Ljava/lang/String;

    .line 211
    return-object p0
.end method

.method public setCopyright(Ljava/lang/String;)Lc8/OHg;
    .locals 0
    .param p1, "copyright"    # Ljava/lang/String;

    .prologue
    .line 305
    iput-object p1, p0, Lc8/OHg;->mCopyright:Ljava/lang/String;

    .line 306
    return-object p0
.end method

.method public setCurrentFormat(Ljava/lang/String;)Lc8/OHg;
    .locals 0
    .param p1, "currentFormat"    # Ljava/lang/String;

    .prologue
    .line 215
    iput-object p1, p0, Lc8/OHg;->mCurrentFormat:Ljava/lang/String;

    .line 216
    return-object p0
.end method

.method public setCurrentPlaytime(Ljava/lang/String;)Lc8/OHg;
    .locals 1
    .param p1, "currentPlaytime"    # Ljava/lang/String;

    .prologue
    .line 220
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lc8/WHg;->formatDouble(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/OHg;->mCurrentPlaytime:Ljava/lang/String;

    .line 221
    return-object p0
.end method

.method public setFreeTime(Ljava/lang/String;)Lc8/OHg;
    .locals 0
    .param p1, "freeTime"    # Ljava/lang/String;

    .prologue
    .line 350
    iput-object p1, p0, Lc8/OHg;->mFreeTime:Ljava/lang/String;

    .line 351
    return-object p0
.end method

.method public setFull(Ljava/lang/String;)Lc8/OHg;
    .locals 0
    .param p1, "full"    # Ljava/lang/String;

    .prologue
    .line 205
    iput-object p1, p0, Lc8/OHg;->mFull:Ljava/lang/String;

    .line 206
    return-object p0
.end method

.method public setIsP2P(Z)Lc8/OHg;
    .locals 0
    .param p1, "isP2P"    # Z

    .prologue
    .line 325
    iput-boolean p1, p0, Lc8/OHg;->isP2P:Z

    .line 326
    return-object p0
.end method

.method public setP2PVersion(Ljava/lang/String;)Lc8/OHg;
    .locals 0
    .param p1, "p2pVersion"    # Ljava/lang/String;

    .prologue
    .line 320
    iput-object p1, p0, Lc8/OHg;->mP2PVersion:Ljava/lang/String;

    .line 321
    return-object p0
.end method

.method public setPayState(Ljava/lang/String;)Lc8/OHg;
    .locals 0
    .param p1, "payState"    # Ljava/lang/String;

    .prologue
    .line 295
    iput-object p1, p0, Lc8/OHg;->mPayState:Ljava/lang/String;

    .line 296
    return-object p0
.end method

.method public setPlayEndInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lc8/OHg;
    .locals 2
    .param p1, "advBeforeDuration"    # Ljava/lang/String;
    .param p2, "beforeDuration"    # Ljava/lang/String;
    .param p3, "videoTime"    # Ljava/lang/String;
    .param p4, "duration"    # Ljava/lang/String;
    .param p5, "playLoadEvents"    # Ljava/lang/String;
    .param p6, "playRates"    # Ljava/lang/String;
    .param p7, "playSDTimes"    # Ljava/lang/String;
    .param p8, "playSDDuration"    # Ljava/lang/String;
    .param p9, "playHDTimes"    # Ljava/lang/String;
    .param p10, "playHDDuration"    # Ljava/lang/String;
    .param p11, "playHD2Times"    # Ljava/lang/String;
    .param p12, "playHD2Duration"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x2

    .line 174
    invoke-static {p1, v1}, Lc8/WHg;->formatDouble(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/OHg;->mAdvBeforeDuration:Ljava/lang/String;

    .line 175
    invoke-static {p2, v1}, Lc8/WHg;->formatDouble(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/OHg;->mBeforeDuration:Ljava/lang/String;

    .line 176
    invoke-static {p3, v1}, Lc8/WHg;->formatDouble(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/OHg;->mVideoTime:Ljava/lang/String;

    .line 177
    invoke-static {p4, v1}, Lc8/WHg;->formatDouble(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/OHg;->mDuration:Ljava/lang/String;

    .line 178
    iput-object p5, p0, Lc8/OHg;->mPlayLoadEvents:Ljava/lang/String;

    .line 179
    iput-object p6, p0, Lc8/OHg;->mPlayRates:Ljava/lang/String;

    .line 180
    iput-object p7, p0, Lc8/OHg;->mPlaySDTimes:Ljava/lang/String;

    .line 181
    invoke-static {p8, v1}, Lc8/WHg;->formatDouble(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/OHg;->mPlaySDDuration:Ljava/lang/String;

    .line 182
    iput-object p9, p0, Lc8/OHg;->mPlayHDTimes:Ljava/lang/String;

    .line 183
    invoke-static {p10, v1}, Lc8/WHg;->formatDouble(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/OHg;->mPlayHDDuration:Ljava/lang/String;

    .line 184
    iput-object p11, p0, Lc8/OHg;->mPlayHD2Times:Ljava/lang/String;

    .line 185
    invoke-static {p12, v1}, Lc8/WHg;->formatDouble(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/OHg;->mPlayHD2Duration:Ljava/lang/String;

    .line 186
    return-object p0
.end method

.method public setPlayExperience(Ljava/lang/String;)Lc8/OHg;
    .locals 0
    .param p1, "playExperience"    # Ljava/lang/String;

    .prologue
    .line 315
    iput-object p1, p0, Lc8/OHg;->mPlayExperience:Ljava/lang/String;

    .line 316
    return-object p0
.end method

.method public setPlayState(Ljava/lang/String;)Lc8/OHg;
    .locals 0
    .param p1, "playState"    # Ljava/lang/String;

    .prologue
    .line 300
    iput-object p1, p0, Lc8/OHg;->mPlayState:Ljava/lang/String;

    .line 301
    return-object p0
.end method

.method public setPlaycode(Ljava/lang/String;)Lc8/OHg;
    .locals 0
    .param p1, "playcode"    # Ljava/lang/String;

    .prologue
    .line 138
    iput-object p1, p0, Lc8/OHg;->mPlaycode:Ljava/lang/String;

    .line 139
    return-object p0
.end method

.method public setPlaylistChannelId(Ljava/lang/String;)Lc8/OHg;
    .locals 0
    .param p1, "playlistChannelId"    # Ljava/lang/String;

    .prologue
    .line 255
    iput-object p1, p0, Lc8/OHg;->mPlaylistChannelId:Ljava/lang/String;

    .line 256
    return-object p0
.end method

.method public setPlaylistId(Ljava/lang/String;)Lc8/OHg;
    .locals 0
    .param p1, "playlistId"    # Ljava/lang/String;

    .prologue
    .line 250
    iput-object p1, p0, Lc8/OHg;->mPlaylistId:Ljava/lang/String;

    .line 251
    return-object p0
.end method

.method public setPlaytype(Ljava/lang/String;)Lc8/OHg;
    .locals 0
    .param p1, "playtype"    # Ljava/lang/String;

    .prologue
    .line 143
    iput-object p1, p0, Lc8/OHg;->mPlaytype:Ljava/lang/String;

    .line 144
    return-object p0
.end method

.method public setReplay(Z)Lc8/OHg;
    .locals 0
    .param p1, "replay"    # Z

    .prologue
    .line 235
    iput-boolean p1, p0, Lc8/OHg;->mReplay:Z

    .line 236
    return-object p0
.end method

.method public setSChannelId(Ljava/lang/String;)Lc8/OHg;
    .locals 0
    .param p1, "sChannelId"    # Ljava/lang/String;

    .prologue
    .line 245
    iput-object p1, p0, Lc8/OHg;->mSChannelId:Ljava/lang/String;

    .line 246
    return-object p0
.end method

.method public setSPlaylistChannelId(Ljava/lang/String;)Lc8/OHg;
    .locals 0
    .param p1, "sPlaylistChannelId"    # Ljava/lang/String;

    .prologue
    .line 260
    iput-object p1, p0, Lc8/OHg;->mSPlaylistChannelId:Ljava/lang/String;

    .line 261
    return-object p0
.end method

.method public setSShowChannelId(Ljava/lang/String;)Lc8/OHg;
    .locals 0
    .param p1, "sShowChannelId"    # Ljava/lang/String;

    .prologue
    .line 275
    iput-object p1, p0, Lc8/OHg;->mSShowChannelId:Ljava/lang/String;

    .line 276
    return-object p0
.end method

.method public setShowChannelId(Ljava/lang/String;)Lc8/OHg;
    .locals 0
    .param p1, "showChannelId"    # Ljava/lang/String;

    .prologue
    .line 270
    iput-object p1, p0, Lc8/OHg;->mShowChannelId:Ljava/lang/String;

    .line 271
    return-object p0
.end method

.method public setShowId(Ljava/lang/String;)Lc8/OHg;
    .locals 0
    .param p1, "showId"    # Ljava/lang/String;

    .prologue
    .line 265
    iput-object p1, p0, Lc8/OHg;->mShowId:Ljava/lang/String;

    .line 266
    return-object p0
.end method

.method public setStartPlaytime(Ljava/lang/String;)Lc8/OHg;
    .locals 0
    .param p1, "startPlaytime"    # Ljava/lang/String;

    .prologue
    .line 225
    iput-object p1, p0, Lc8/OHg;->mStartPlaytime:Ljava/lang/String;

    .line 226
    return-object p0
.end method

.method public setTailers(Ljava/lang/String;)Lc8/OHg;
    .locals 0
    .param p1, "tailers"    # Ljava/lang/String;

    .prologue
    .line 310
    iput-object p1, p0, Lc8/OHg;->mTailers:Ljava/lang/String;

    .line 311
    return-object p0
.end method

.method public setVid(Ljava/lang/String;)Lc8/OHg;
    .locals 1
    .param p1, "vid"    # Ljava/lang/String;

    .prologue
    .line 200
    invoke-static {p1}, Lc8/WHg;->evaluate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/OHg;->mVid:Ljava/lang/String;

    .line 201
    return-object p0
.end method

.method public setVideoOwner(Ljava/lang/String;)Lc8/OHg;
    .locals 0
    .param p1, "videoOwner"    # Ljava/lang/String;

    .prologue
    .line 230
    iput-object p1, p0, Lc8/OHg;->mVideoOwner:Ljava/lang/String;

    .line 231
    return-object p0
.end method

.method public setVideoTime(Ljava/lang/String;)Lc8/OHg;
    .locals 1
    .param p1, "videoTime"    # Ljava/lang/String;

    .prologue
    .line 163
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lc8/WHg;->formatDouble(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/OHg;->mVideoTime:Ljava/lang/String;

    .line 164
    return-object p0
.end method

.method public setVip(Z)Lc8/OHg;
    .locals 0
    .param p1, "vip"    # Z

    .prologue
    .line 290
    iput-boolean p1, p0, Lc8/OHg;->isVip:Z

    .line 291
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Builder [mPlaysid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/OHg;->mPlaysid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mVid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/OHg;->mVid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPlaytype="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/OHg;->mPlaytype:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPlaycode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/OHg;->mPlaycode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mComplete="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/OHg;->mComplete:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mAdUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/OHg;->mAdUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/OHg;->mSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mAdvBeforeDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/OHg;->mAdvBeforeDuration:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mBeforeDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/OHg;->mBeforeDuration:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mVideoTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/OHg;->mVideoTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/OHg;->mDuration:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPlayLoadEvents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/OHg;->mPlayLoadEvents:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPlayRates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/OHg;->mPlayRates:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPlaySDTimes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/OHg;->mPlaySDTimes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPlaySDDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/OHg;->mPlaySDDuration:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPlayHDTimes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/OHg;->mPlayHDTimes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPlayHDDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/OHg;->mPlayHDDuration:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPlayHD2Times="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/OHg;->mPlayHD2Times:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPlayHD2Duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/OHg;->mPlayHD2Duration:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mSid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/OHg;->mSid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mCtype="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/OHg;->mCtype:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mEv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/OHg;->mEv:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/OHg;->mToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mOip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/OHg;->mOip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mFull="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/OHg;->mFull:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mCurrentFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/OHg;->mCurrentFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mCurrentPlaytime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/OHg;->mCurrentPlaytime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mContinuePlay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/OHg;->mContinuePlay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mStartPlaytime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/OHg;->mStartPlaytime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mVideoOwner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/OHg;->mVideoOwner:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mReplay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lc8/OHg;->mReplay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mChannelId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/OHg;->mChannelId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mSChannelId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/OHg;->mSChannelId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPlaylistId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/OHg;->mPlaylistId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPlaylistChannelId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/OHg;->mPlaylistChannelId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mSPlaylistChannelId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/OHg;->mSPlaylistChannelId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mShowId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/OHg;->mShowId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mShowChannelId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/OHg;->mShowChannelId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mSShowChannelId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/OHg;->mSShowChannelId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mLanguage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/OHg;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mScreenState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/OHg;->mScreenState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isVip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lc8/OHg;->isVip:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPayState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/OHg;->mPayState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPlayState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/OHg;->mPlayState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mCopyright="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/OHg;->mCopyright:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mTailers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/OHg;->mTailers:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPlayExperience="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/OHg;->mPlayExperience:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mP2PVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/OHg;->mP2PVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isP2P="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lc8/OHg;->isP2P:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/OHg;->mEvent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPlayGestures="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/OHg;->mPlayGestures:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mActionBegin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/OHg;->mActionBegin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mActionEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/OHg;->mActionEnd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mFreeTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/OHg;->mFreeTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mAutoPlay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/OHg;->mAutoPlay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", extMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/OHg;->extMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
