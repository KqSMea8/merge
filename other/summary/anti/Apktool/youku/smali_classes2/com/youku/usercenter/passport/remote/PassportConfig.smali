.class public Lcom/youku/usercenter/passport/remote/PassportConfig;
.super Ljava/lang/Object;
.source "PassportConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/youku/usercenter/passport/remote/PassportConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final PASSPORT_THEME_TUDOU:Ljava/lang/String; = "tudou"

.field public static final PASSPORT_THEME_YOUKU:Ljava/lang/String; = "youku"


# instance fields
.field public mAlipayAppId:Ljava/lang/String;

.field public mAlipayLoginSupport:Z

.field public mAppId:Ljava/lang/String;

.field public mAppSecret:Ljava/lang/String;

.field public mDebug:Z

.field public mGuid:Ljava/lang/String;

.field public mMMAppId:Ljava/lang/String;

.field public mMMLoginSupport:Z

.field public mPid:Ljava/lang/String;

.field public mQQAppId:Ljava/lang/String;

.field public mQQLoginSupport:Z

.field public mTaobaoLoginSupport:Z

.field public mTheme:Ljava/lang/String;

.field private mThemeBundle:Landroid/os/Bundle;

.field public mUseMtop:Z

.field public mUseOrange:Z

.field public mWeiboAppId:Ljava/lang/String;

.field public mWeiboLoginSupport:Z

.field public mWeiboRedirectUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    new-instance v0, Lc8/Jpo;

    invoke-direct {v0}, Lc8/Jpo;-><init>()V

    sput-object v0, Lcom/youku/usercenter/passport/remote/PassportConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean v1, p0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mQQLoginSupport:Z

    .line 32
    iput-boolean v1, p0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mMMLoginSupport:Z

    .line 34
    iput-boolean v1, p0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mWeiboLoginSupport:Z

    .line 36
    iput-boolean v1, p0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mTaobaoLoginSupport:Z

    .line 38
    iput-boolean v1, p0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mAlipayLoginSupport:Z

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mDebug:Z

    .line 58
    iput-boolean v1, p0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mUseMtop:Z

    .line 60
    iput-boolean v1, p0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mUseOrange:Z

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean v1, p0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mQQLoginSupport:Z

    .line 32
    iput-boolean v1, p0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mMMLoginSupport:Z

    .line 34
    iput-boolean v1, p0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mWeiboLoginSupport:Z

    .line 36
    iput-boolean v1, p0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mTaobaoLoginSupport:Z

    .line 38
    iput-boolean v1, p0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mAlipayLoginSupport:Z

    .line 54
    iput-boolean v2, p0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mDebug:Z

    .line 58
    iput-boolean v1, p0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mUseMtop:Z

    .line 60
    iput-boolean v1, p0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mUseOrange:Z

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mAppId:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mAppSecret:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mQQLoginSupport:Z

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mMMLoginSupport:Z

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mWeiboLoginSupport:Z

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mTaobaoLoginSupport:Z

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mAlipayLoginSupport:Z

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mQQAppId:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mMMAppId:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mWeiboAppId:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mAlipayAppId:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mWeiboRedirectUrl:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mGuid:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mPid:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mDebug:Z

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mTheme:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mUseMtop:Z

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_7

    :goto_7
    iput-boolean v1, p0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mUseOrange:Z

    .line 101
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mThemeBundle:Landroid/os/Bundle;

    .line 102
    return-void

    :cond_0
    move v0, v2

    .line 85
    goto :goto_0

    :cond_1
    move v0, v2

    .line 86
    goto :goto_1

    :cond_2
    move v0, v2

    .line 87
    goto :goto_2

    :cond_3
    move v0, v2

    .line 88
    goto :goto_3

    :cond_4
    move v0, v2

    .line 89
    goto :goto_4

    :cond_5
    move v0, v2

    .line 97
    goto :goto_5

    :cond_6
    move v0, v2

    .line 99
    goto :goto_6

    :cond_7
    move v1, v2

    .line 100
    goto :goto_7
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public getThemeBundle()Lc8/Vpo;
    .locals 2

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, "tb":Lc8/Vpo;
    iget-object v1, p0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mThemeBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 77
    new-instance v0, Lc8/Vpo;

    .end local v0    # "tb":Lc8/Vpo;
    iget-object v1, p0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mThemeBundle:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Lc8/Vpo;-><init>(Landroid/os/Bundle;)V

    .line 79
    .restart local v0    # "tb":Lc8/Vpo;
    :cond_0
    return-object v0
.end method

.method public setThemeBundle(Lc8/Vpo;)V
    .locals 1
    .param p1, "aThemeBundle"    # Lc8/Vpo;

    .prologue
    .line 69
    if-eqz p1, :cond_0

    .line 70
    invoke-virtual {p1}, Lc8/Vpo;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mThemeBundle:Landroid/os/Bundle;

    .line 72
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 123
    iget-object v0, p0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mAppId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mAppSecret:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    iget-boolean v0, p0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mQQLoginSupport:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 126
    iget-boolean v0, p0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mMMLoginSupport:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 127
    iget-boolean v0, p0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mWeiboLoginSupport:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 128
    iget-boolean v0, p0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mTaobaoLoginSupport:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 129
    iget-boolean v0, p0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mAlipayLoginSupport:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 130
    iget-object v0, p0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mQQAppId:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string/jumbo v0, ""

    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mMMAppId:Ljava/lang/String;

    if-nez v0, :cond_8

    const-string/jumbo v0, ""

    :goto_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mWeiboAppId:Ljava/lang/String;

    if-nez v0, :cond_9

    const-string/jumbo v0, ""

    :goto_9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mAlipayAppId:Ljava/lang/String;

    if-nez v0, :cond_a

    const-string/jumbo v0, ""

    :goto_a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mWeiboRedirectUrl:Ljava/lang/String;

    if-nez v0, :cond_b

    const-string/jumbo v0, ""

    :goto_b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mGuid:Ljava/lang/String;

    if-nez v0, :cond_c

    const-string/jumbo v0, ""

    :goto_c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mPid:Ljava/lang/String;

    if-nez v0, :cond_d

    const-string/jumbo v0, ""

    :goto_d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    iget-boolean v0, p0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mDebug:Z

    if-eqz v0, :cond_e

    move v0, v1

    :goto_e
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 138
    iget-object v0, p0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mTheme:Ljava/lang/String;

    if-nez v0, :cond_f

    const-string/jumbo v0, ""

    :goto_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget-boolean v0, p0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mUseMtop:Z

    if-eqz v0, :cond_10

    move v0, v1

    :goto_10
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 140
    iget-boolean v0, p0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mUseOrange:Z

    if-eqz v0, :cond_11

    :goto_11
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 141
    iget-object v0, p0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mThemeBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 142
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mAppId:Ljava/lang/String;

    goto/16 :goto_0

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mAppSecret:Ljava/lang/String;

    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 125
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 126
    goto/16 :goto_3

    :cond_4
    move v0, v2

    .line 127
    goto/16 :goto_4

    :cond_5
    move v0, v2

    .line 128
    goto/16 :goto_5

    :cond_6
    move v0, v2

    .line 129
    goto/16 :goto_6

    .line 130
    :cond_7
    iget-object v0, p0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mQQAppId:Ljava/lang/String;

    goto/16 :goto_7

    .line 131
    :cond_8
    iget-object v0, p0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mMMAppId:Ljava/lang/String;

    goto/16 :goto_8

    .line 132
    :cond_9
    iget-object v0, p0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mWeiboAppId:Ljava/lang/String;

    goto :goto_9

    .line 133
    :cond_a
    iget-object v0, p0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mAlipayAppId:Ljava/lang/String;

    goto :goto_a

    .line 134
    :cond_b
    iget-object v0, p0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mWeiboRedirectUrl:Ljava/lang/String;

    goto :goto_b

    .line 135
    :cond_c
    iget-object v0, p0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mGuid:Ljava/lang/String;

    goto :goto_c

    .line 136
    :cond_d
    iget-object v0, p0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mPid:Ljava/lang/String;

    goto :goto_d

    :cond_e
    move v0, v2

    .line 137
    goto :goto_e

    .line 138
    :cond_f
    iget-object v0, p0, Lcom/youku/usercenter/passport/remote/PassportConfig;->mTheme:Ljava/lang/String;

    goto :goto_f

    :cond_10
    move v0, v2

    .line 139
    goto :goto_10

    :cond_11
    move v1, v2

    .line 140
    goto :goto_11
.end method
