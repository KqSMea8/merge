.class public Lcom/youku/usercenter/passport/remote/UserInfo;
.super Ljava/lang/Object;
.source "UserInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/youku/usercenter/passport/remote/UserInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAvatarUrl:Ljava/lang/String;

.field public mEmail:Ljava/lang/String;

.field public mMobile:Ljava/lang/String;

.field public mNickName:Ljava/lang/String;

.field public mRegion:Ljava/lang/String;

.field public mUid:Ljava/lang/String;

.field public mUserName:Ljava/lang/String;

.field public mYid:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public mYoukuUid:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lc8/Wpo;

    invoke-direct {v0}, Lc8/Wpo;-><init>()V

    sput-object v0, Lcom/youku/usercenter/passport/remote/UserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/usercenter/passport/remote/UserInfo;->mUserName:Ljava/lang/String;

    .line 45
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/usercenter/passport/remote/UserInfo;->mUid:Ljava/lang/String;

    .line 46
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/usercenter/passport/remote/UserInfo;->mYoukuUid:Ljava/lang/String;

    .line 47
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/usercenter/passport/remote/UserInfo;->mYid:Ljava/lang/String;

    .line 48
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/usercenter/passport/remote/UserInfo;->mNickName:Ljava/lang/String;

    .line 49
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/usercenter/passport/remote/UserInfo;->mEmail:Ljava/lang/String;

    .line 50
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/usercenter/passport/remote/UserInfo;->mRegion:Ljava/lang/String;

    .line 51
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/usercenter/passport/remote/UserInfo;->mMobile:Ljava/lang/String;

    .line 52
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/usercenter/passport/remote/UserInfo;->mAvatarUrl:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/usercenter/passport/remote/UserInfo;->mUserName:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/usercenter/passport/remote/UserInfo;->mUid:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/usercenter/passport/remote/UserInfo;->mYoukuUid:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/usercenter/passport/remote/UserInfo;->mYid:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/usercenter/passport/remote/UserInfo;->mNickName:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/usercenter/passport/remote/UserInfo;->mEmail:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/usercenter/passport/remote/UserInfo;->mRegion:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/usercenter/passport/remote/UserInfo;->mMobile:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/usercenter/passport/remote/UserInfo;->mAvatarUrl:Ljava/lang/String;

    .line 65
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public parseFrom(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "aObj"    # Lorg/json/JSONObject;

    .prologue
    .line 98
    if-nez p1, :cond_0

    .line 113
    :goto_0
    return-void

    .line 103
    :cond_0
    :try_start_0
    const-string/jumbo v1, "username"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/usercenter/passport/remote/UserInfo;->mUserName:Ljava/lang/String;

    .line 104
    const-string/jumbo v1, "uid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/usercenter/passport/remote/UserInfo;->mUid:Ljava/lang/String;

    .line 105
    const-string/jumbo v1, "nickname"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/usercenter/passport/remote/UserInfo;->mNickName:Ljava/lang/String;

    .line 106
    const-string/jumbo v1, "email"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/usercenter/passport/remote/UserInfo;->mEmail:Ljava/lang/String;

    .line 107
    const-string/jumbo v1, "region"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/usercenter/passport/remote/UserInfo;->mRegion:Ljava/lang/String;

    .line 108
    const-string/jumbo v1, "mobile"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/usercenter/passport/remote/UserInfo;->mMobile:Ljava/lang/String;

    .line 109
    const-string/jumbo v1, "avatar"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/usercenter/passport/remote/UserInfo;->mAvatarUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lcom/youku/usercenter/passport/remote/UserInfo;->mUserName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/youku/usercenter/passport/remote/UserInfo;->mUid:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/youku/usercenter/passport/remote/UserInfo;->mYoukuUid:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string/jumbo v0, ""

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/youku/usercenter/passport/remote/UserInfo;->mYid:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string/jumbo v0, ""

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/youku/usercenter/passport/remote/UserInfo;->mNickName:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string/jumbo v0, ""

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/youku/usercenter/passport/remote/UserInfo;->mEmail:Ljava/lang/String;

    if-nez v0, :cond_5

    const-string/jumbo v0, ""

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/youku/usercenter/passport/remote/UserInfo;->mRegion:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string/jumbo v0, ""

    :goto_6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/youku/usercenter/passport/remote/UserInfo;->mMobile:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string/jumbo v0, ""

    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/youku/usercenter/passport/remote/UserInfo;->mAvatarUrl:Ljava/lang/String;

    if-nez v0, :cond_8

    const-string/jumbo v0, ""

    :goto_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/youku/usercenter/passport/remote/UserInfo;->mUserName:Ljava/lang/String;

    goto :goto_0

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/youku/usercenter/passport/remote/UserInfo;->mUid:Ljava/lang/String;

    goto :goto_1

    .line 88
    :cond_2
    iget-object v0, p0, Lcom/youku/usercenter/passport/remote/UserInfo;->mYoukuUid:Ljava/lang/String;

    goto :goto_2

    .line 89
    :cond_3
    iget-object v0, p0, Lcom/youku/usercenter/passport/remote/UserInfo;->mYid:Ljava/lang/String;

    goto :goto_3

    .line 90
    :cond_4
    iget-object v0, p0, Lcom/youku/usercenter/passport/remote/UserInfo;->mNickName:Ljava/lang/String;

    goto :goto_4

    .line 91
    :cond_5
    iget-object v0, p0, Lcom/youku/usercenter/passport/remote/UserInfo;->mEmail:Ljava/lang/String;

    goto :goto_5

    .line 92
    :cond_6
    iget-object v0, p0, Lcom/youku/usercenter/passport/remote/UserInfo;->mRegion:Ljava/lang/String;

    goto :goto_6

    .line 93
    :cond_7
    iget-object v0, p0, Lcom/youku/usercenter/passport/remote/UserInfo;->mMobile:Ljava/lang/String;

    goto :goto_7

    .line 94
    :cond_8
    iget-object v0, p0, Lcom/youku/usercenter/passport/remote/UserInfo;->mAvatarUrl:Ljava/lang/String;

    goto :goto_8
.end method
