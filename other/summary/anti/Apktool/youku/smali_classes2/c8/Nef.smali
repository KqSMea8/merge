.class public Lc8/Nef;
.super Ljava/lang/Object;


# instance fields
.field public mAppSecret:Ljava/lang/String;

.field public mAppkey:Ljava/lang/String;

.field public mBackUrl:Ljava/lang/String;

.field public mPid:Ljava/lang/String;

.field public mSource:Ljava/lang/String;

.field public mTag:Ljava/lang/String;

.field public mTtid:Ljava/lang/String;

.field public mUtdid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc8/Nef;->mAppkey:Ljava/lang/String;

    iput-object p2, p0, Lc8/Nef;->mAppSecret:Ljava/lang/String;

    iput-object p3, p0, Lc8/Nef;->mBackUrl:Ljava/lang/String;

    iput-object p4, p0, Lc8/Nef;->mPid:Ljava/lang/String;

    invoke-direct {p0, p1}, Lc8/Nef;->setDefaultTTID(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc8/Nef;->mAppkey:Ljava/lang/String;

    iput-object p2, p0, Lc8/Nef;->mBackUrl:Ljava/lang/String;

    iput-object p3, p0, Lc8/Nef;->mPid:Ljava/lang/String;

    iput-object p4, p0, Lc8/Nef;->mSource:Ljava/lang/String;

    iput-object p5, p0, Lc8/Nef;->mTtid:Ljava/lang/String;

    iput-object p6, p0, Lc8/Nef;->mTag:Ljava/lang/String;

    iput-object p7, p0, Lc8/Nef;->mUtdid:Ljava/lang/String;

    iget-object v0, p0, Lc8/Nef;->mTtid:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lc8/Nef;->setDefaultTTID(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setDefaultTTID(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "2014_0_%s@baichuan_android_%s_linkout"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "2.0.0"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/Nef;->mTtid:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public setAppSecret(Ljava/lang/String;)Lc8/Nef;
    .locals 0

    iput-object p1, p0, Lc8/Nef;->mAppSecret:Ljava/lang/String;

    return-object p0
.end method

.method public setAppkey(Ljava/lang/String;)Lc8/Nef;
    .locals 0

    iput-object p1, p0, Lc8/Nef;->mAppkey:Ljava/lang/String;

    return-object p0
.end method

.method public setBackUrl(Ljava/lang/String;)Lc8/Nef;
    .locals 0

    iput-object p1, p0, Lc8/Nef;->mBackUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setPid(Ljava/lang/String;)Lc8/Nef;
    .locals 0

    iput-object p1, p0, Lc8/Nef;->mPid:Ljava/lang/String;

    return-object p0
.end method

.method public setSource(Ljava/lang/String;)Lc8/Nef;
    .locals 0

    iput-object p1, p0, Lc8/Nef;->mSource:Ljava/lang/String;

    return-object p0
.end method

.method public setTTID(Ljava/lang/String;)Lc8/Nef;
    .locals 0

    iput-object p1, p0, Lc8/Nef;->mTtid:Ljava/lang/String;

    return-object p0
.end method

.method public setTag(Ljava/lang/String;)Lc8/Nef;
    .locals 0

    iput-object p1, p0, Lc8/Nef;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method public setUtdid(Ljava/lang/String;)Lc8/Nef;
    .locals 0

    iput-object p1, p0, Lc8/Nef;->mUtdid:Ljava/lang/String;

    return-object p0
.end method
