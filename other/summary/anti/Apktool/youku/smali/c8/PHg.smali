.class public Lc8/PHg;
.super Ljava/lang/Object;
.source "PlayActionData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/analytics/data/PlayActionData$PlayGesture;,
        Lc8/OHg;
    }
.end annotation


# instance fields
.field protected isP2P:Z

.field protected isVip:Z

.field protected mActionBegin:Ljava/lang/String;

.field protected mActionEnd:Ljava/lang/String;

.field protected mAdurl:Ljava/lang/String;

.field protected mAdvBeforeDuration:Ljava/lang/String;

.field protected mBeforeDuration:Ljava/lang/String;

.field protected mChannelId:Ljava/lang/String;

.field protected mComplete:Ljava/lang/String;

.field protected mContinuePlay:Ljava/lang/String;

.field protected mCopyright:Ljava/lang/String;

.field protected mCtype:Ljava/lang/String;

.field protected mCurrentFormat:Ljava/lang/String;

.field protected mCurrentPlaytime:Ljava/lang/String;

.field protected mDuration:Ljava/lang/String;

.field protected mEv:Ljava/lang/String;

.field protected mEvent:Ljava/lang/String;

.field protected mFreeTime:Ljava/lang/String;

.field protected mFull:Ljava/lang/String;

.field protected mLanguage:Ljava/lang/String;

.field protected mOip:Ljava/lang/String;

.field protected mP2PVersion:Ljava/lang/String;

.field protected mPayState:Ljava/lang/String;

.field protected mPlayExperience:Ljava/lang/String;

.field protected mPlayGestures:Ljava/lang/String;

.field protected mPlayHD2Duration:Ljava/lang/String;

.field protected mPlayHD2Times:Ljava/lang/String;

.field protected mPlayHDDuration:Ljava/lang/String;

.field protected mPlayHDTimes:Ljava/lang/String;

.field protected mPlayLoadEvents:Ljava/lang/String;

.field protected mPlayRates:Ljava/lang/String;

.field protected mPlaySDDuration:Ljava/lang/String;

.field protected mPlaySDTimes:Ljava/lang/String;

.field protected mPlayState:Ljava/lang/String;

.field protected mPlaycode:Ljava/lang/String;

.field protected mPlaylistChannelId:Ljava/lang/String;

.field protected mPlaylistId:Ljava/lang/String;

.field protected mPlaysid:Ljava/lang/String;

.field mPlaytype:Ljava/lang/String;

.field protected mReplay:Z

.field protected mSChannelId:Ljava/lang/String;

.field protected mSPlaylistChannelId:Ljava/lang/String;

.field protected mSShowChannelId:Ljava/lang/String;

.field protected mScreenState:Ljava/lang/String;

.field protected mShowChannelId:Ljava/lang/String;

.field protected mShowId:Ljava/lang/String;

.field protected mSid:Ljava/lang/String;

.field protected mSource:Ljava/lang/String;

.field protected mStartPlaytime:Ljava/lang/String;

.field protected mTailers:Ljava/lang/String;

.field protected mToken:Ljava/lang/String;

.field protected mVid:Ljava/lang/String;

.field protected mVideoOwner:Ljava/lang/String;

.field protected mVideoTime:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lc8/OHg;)V
    .locals 1
    .param p1, "builder"    # Lc8/OHg;

    .prologue
    .line 612
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 613
    invoke-static {p1}, Lc8/OHg;->access$000(Lc8/OHg;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/PHg;->mVid:Ljava/lang/String;

    .line 614
    invoke-static {p1}, Lc8/OHg;->access$100(Lc8/OHg;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/PHg;->mPlaysid:Ljava/lang/String;

    .line 615
    invoke-static {p1}, Lc8/OHg;->access$200(Lc8/OHg;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/PHg;->mPlaytype:Ljava/lang/String;

    .line 616
    invoke-static {p1}, Lc8/OHg;->access$300(Lc8/OHg;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/PHg;->mPlaycode:Ljava/lang/String;

    .line 617
    invoke-static {p1}, Lc8/OHg;->access$400(Lc8/OHg;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/PHg;->mComplete:Ljava/lang/String;

    .line 618
    invoke-static {p1}, Lc8/OHg;->access$500(Lc8/OHg;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/PHg;->mAdurl:Ljava/lang/String;

    .line 619
    invoke-static {p1}, Lc8/OHg;->access$600(Lc8/OHg;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/PHg;->mAdvBeforeDuration:Ljava/lang/String;

    .line 620
    invoke-static {p1}, Lc8/OHg;->access$700(Lc8/OHg;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/PHg;->mBeforeDuration:Ljava/lang/String;

    .line 621
    invoke-static {p1}, Lc8/OHg;->access$800(Lc8/OHg;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/PHg;->mVideoTime:Ljava/lang/String;

    .line 622
    invoke-static {p1}, Lc8/OHg;->access$900(Lc8/OHg;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/PHg;->mDuration:Ljava/lang/String;

    .line 623
    invoke-static {p1}, Lc8/OHg;->access$1000(Lc8/OHg;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/PHg;->mPlayLoadEvents:Ljava/lang/String;

    .line 624
    invoke-static {p1}, Lc8/OHg;->access$1100(Lc8/OHg;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/PHg;->mPlayRates:Ljava/lang/String;

    .line 625
    invoke-static {p1}, Lc8/OHg;->access$1200(Lc8/OHg;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/PHg;->mPlaySDTimes:Ljava/lang/String;

    .line 626
    invoke-static {p1}, Lc8/OHg;->access$1300(Lc8/OHg;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/PHg;->mPlaySDDuration:Ljava/lang/String;

    .line 627
    invoke-static {p1}, Lc8/OHg;->access$1400(Lc8/OHg;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/PHg;->mPlayHDTimes:Ljava/lang/String;

    .line 628
    invoke-static {p1}, Lc8/OHg;->access$1500(Lc8/OHg;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/PHg;->mPlayHDDuration:Ljava/lang/String;

    .line 629
    invoke-static {p1}, Lc8/OHg;->access$1600(Lc8/OHg;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/PHg;->mPlayHD2Times:Ljava/lang/String;

    .line 630
    invoke-static {p1}, Lc8/OHg;->access$1700(Lc8/OHg;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/PHg;->mPlayHD2Duration:Ljava/lang/String;

    .line 631
    invoke-static {p1}, Lc8/OHg;->access$1800(Lc8/OHg;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/PHg;->mSource:Ljava/lang/String;

    .line 632
    invoke-static {p1}, Lc8/OHg;->access$1900(Lc8/OHg;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/PHg;->mSid:Ljava/lang/String;

    .line 633
    invoke-static {p1}, Lc8/OHg;->access$2000(Lc8/OHg;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/PHg;->mCtype:Ljava/lang/String;

    .line 634
    invoke-static {p1}, Lc8/OHg;->access$2100(Lc8/OHg;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/PHg;->mEv:Ljava/lang/String;

    .line 635
    invoke-static {p1}, Lc8/OHg;->access$2200(Lc8/OHg;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/PHg;->mToken:Ljava/lang/String;

    .line 636
    invoke-static {p1}, Lc8/OHg;->access$2300(Lc8/OHg;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/PHg;->mOip:Ljava/lang/String;

    .line 637
    invoke-static {p1}, Lc8/OHg;->access$2400(Lc8/OHg;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/PHg;->mContinuePlay:Ljava/lang/String;

    .line 638
    invoke-static {p1}, Lc8/OHg;->access$2500(Lc8/OHg;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/PHg;->mCurrentFormat:Ljava/lang/String;

    .line 639
    invoke-static {p1}, Lc8/OHg;->access$2600(Lc8/OHg;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/PHg;->mCurrentPlaytime:Ljava/lang/String;

    .line 640
    invoke-static {p1}, Lc8/OHg;->access$2700(Lc8/OHg;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/PHg;->mFull:Ljava/lang/String;

    .line 641
    invoke-static {p1}, Lc8/OHg;->access$2800(Lc8/OHg;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/PHg;->mStartPlaytime:Ljava/lang/String;

    .line 643
    invoke-static {p1}, Lc8/OHg;->access$2900(Lc8/OHg;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/PHg;->mVideoOwner:Ljava/lang/String;

    .line 644
    invoke-static {p1}, Lc8/OHg;->access$3000(Lc8/OHg;)Z

    move-result v0

    iput-boolean v0, p0, Lc8/PHg;->mReplay:Z

    .line 645
    invoke-static {p1}, Lc8/OHg;->access$3100(Lc8/OHg;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/PHg;->mChannelId:Ljava/lang/String;

    .line 646
    invoke-static {p1}, Lc8/OHg;->access$3200(Lc8/OHg;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/PHg;->mSChannelId:Ljava/lang/String;

    .line 647
    invoke-static {p1}, Lc8/OHg;->access$3300(Lc8/OHg;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/PHg;->mPlaylistId:Ljava/lang/String;

    .line 648
    invoke-static {p1}, Lc8/OHg;->access$3400(Lc8/OHg;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/PHg;->mPlaylistChannelId:Ljava/lang/String;

    .line 649
    invoke-static {p1}, Lc8/OHg;->access$3500(Lc8/OHg;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/PHg;->mSPlaylistChannelId:Ljava/lang/String;

    .line 650
    invoke-static {p1}, Lc8/OHg;->access$3600(Lc8/OHg;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/PHg;->mShowId:Ljava/lang/String;

    .line 651
    invoke-static {p1}, Lc8/OHg;->access$3700(Lc8/OHg;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/PHg;->mShowChannelId:Ljava/lang/String;

    .line 652
    invoke-static {p1}, Lc8/OHg;->access$3800(Lc8/OHg;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/PHg;->mSShowChannelId:Ljava/lang/String;

    .line 653
    invoke-static {p1}, Lc8/OHg;->access$3900(Lc8/OHg;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/PHg;->mLanguage:Ljava/lang/String;

    .line 654
    invoke-static {p1}, Lc8/OHg;->access$4000(Lc8/OHg;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/PHg;->mScreenState:Ljava/lang/String;

    .line 655
    invoke-static {p1}, Lc8/OHg;->access$4100(Lc8/OHg;)Z

    move-result v0

    iput-boolean v0, p0, Lc8/PHg;->isVip:Z

    .line 656
    invoke-static {p1}, Lc8/OHg;->access$4200(Lc8/OHg;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/PHg;->mPayState:Ljava/lang/String;

    .line 657
    invoke-static {p1}, Lc8/OHg;->access$4300(Lc8/OHg;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/PHg;->mPlayState:Ljava/lang/String;

    .line 658
    invoke-static {p1}, Lc8/OHg;->access$4400(Lc8/OHg;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/PHg;->mCopyright:Ljava/lang/String;

    .line 659
    invoke-static {p1}, Lc8/OHg;->access$4500(Lc8/OHg;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/PHg;->mTailers:Ljava/lang/String;

    .line 660
    invoke-static {p1}, Lc8/OHg;->access$4600(Lc8/OHg;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/PHg;->mPlayExperience:Ljava/lang/String;

    .line 661
    invoke-static {p1}, Lc8/OHg;->access$4700(Lc8/OHg;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/PHg;->mP2PVersion:Ljava/lang/String;

    .line 662
    invoke-static {p1}, Lc8/OHg;->access$4800(Lc8/OHg;)Z

    move-result v0

    iput-boolean v0, p0, Lc8/PHg;->isP2P:Z

    .line 663
    invoke-static {p1}, Lc8/OHg;->access$4900(Lc8/OHg;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/PHg;->mEvent:Ljava/lang/String;

    .line 664
    invoke-static {p1}, Lc8/OHg;->access$5000(Lc8/OHg;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/PHg;->mPlayGestures:Ljava/lang/String;

    .line 665
    invoke-static {p1}, Lc8/OHg;->access$5100(Lc8/OHg;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/PHg;->mActionBegin:Ljava/lang/String;

    .line 666
    invoke-static {p1}, Lc8/OHg;->access$5200(Lc8/OHg;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/PHg;->mActionEnd:Ljava/lang/String;

    .line 667
    invoke-static {p1}, Lc8/OHg;->access$5300(Lc8/OHg;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/PHg;->mFreeTime:Ljava/lang/String;

    .line 668
    return-void
.end method
