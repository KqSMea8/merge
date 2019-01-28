.class public Lcom/youku/vip/entity/external/VipMovieInfo;
.super Ljava/lang/Object;
.source "VipMovieInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/youku/vip/entity/external/VipMovieInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private permit_duration:I

.field private show_vthumburl:Ljava/lang/String;

.field private showname:Ljava/lang/String;

.field private vod_price:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lc8/nCo;

    invoke-direct {v0}, Lc8/nCo;-><init>()V

    sput-object v0, Lcom/youku/vip/entity/external/VipMovieInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/vip/entity/external/VipMovieInfo;->showname:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/vip/entity/external/VipMovieInfo;->show_vthumburl:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/vip/entity/external/VipMovieInfo;->permit_duration:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/vip/entity/external/VipMovieInfo;->vod_price:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "showname"    # Ljava/lang/String;
    .param p2, "show_vthumburl"    # Ljava/lang/String;
    .param p3, "permit_duration"    # I
    .param p4, "vod_price"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/youku/vip/entity/external/VipMovieInfo;->showname:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/youku/vip/entity/external/VipMovieInfo;->show_vthumburl:Ljava/lang/String;

    .line 28
    iput p3, p0, Lcom/youku/vip/entity/external/VipMovieInfo;->permit_duration:I

    .line 29
    iput-object p4, p0, Lcom/youku/vip/entity/external/VipMovieInfo;->vod_price:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public getPermit_duration()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/youku/vip/entity/external/VipMovieInfo;->permit_duration:I

    return v0
.end method

.method public getShow_vthumburl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/youku/vip/entity/external/VipMovieInfo;->show_vthumburl:Ljava/lang/String;

    return-object v0
.end method

.method public getShowname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/youku/vip/entity/external/VipMovieInfo;->showname:Ljava/lang/String;

    return-object v0
.end method

.method public getVod_price()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/youku/vip/entity/external/VipMovieInfo;->vod_price:Ljava/lang/String;

    return-object v0
.end method

.method public setPermit_duration(I)V
    .locals 0
    .param p1, "permit_duration"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/youku/vip/entity/external/VipMovieInfo;->permit_duration:I

    .line 54
    return-void
.end method

.method public setShow_vthumburl(Ljava/lang/String;)V
    .locals 0
    .param p1, "show_vthumburl"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/youku/vip/entity/external/VipMovieInfo;->show_vthumburl:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setShowname(Ljava/lang/String;)V
    .locals 0
    .param p1, "showname"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/youku/vip/entity/external/VipMovieInfo;->showname:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setVod_price(Ljava/lang/String;)V
    .locals 0
    .param p1, "vod_price"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/youku/vip/entity/external/VipMovieInfo;->vod_price:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 72
    iget-object v0, p0, Lcom/youku/vip/entity/external/VipMovieInfo;->showname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/youku/vip/entity/external/VipMovieInfo;->show_vthumburl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget v0, p0, Lcom/youku/vip/entity/external/VipMovieInfo;->permit_duration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    iget-object v0, p0, Lcom/youku/vip/entity/external/VipMovieInfo;->vod_price:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    return-void
.end method
