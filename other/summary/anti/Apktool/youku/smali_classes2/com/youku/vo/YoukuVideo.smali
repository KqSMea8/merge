.class public Lcom/youku/vo/YoukuVideo;
.super Ljava/lang/Object;
.source "YoukuVideo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/youku/vo/YoukuVideo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public playlistId:Ljava/lang/String;

.field public showId:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public videoId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lc8/QVo;

    invoke-direct {v0}, Lc8/QVo;-><init>()V

    sput-object v0, Lcom/youku/vo/YoukuVideo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/youku/vo/YoukuVideo;->videoId:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/youku/vo/YoukuVideo;->title:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/youku/vo/YoukuVideo;->showId:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/youku/vo/YoukuVideo;->playlistId:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/youku/vo/YoukuVideo;->videoId:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/youku/vo/YoukuVideo;->title:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/youku/vo/YoukuVideo;->showId:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/youku/vo/YoukuVideo;->playlistId:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/vo/YoukuVideo;->videoId:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/vo/YoukuVideo;->title:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/vo/YoukuVideo;->showId:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/vo/YoukuVideo;->playlistId:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "videoId"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/youku/vo/YoukuVideo;->videoId:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/youku/vo/YoukuVideo;->title:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/youku/vo/YoukuVideo;->showId:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/youku/vo/YoukuVideo;->playlistId:Ljava/lang/String;

    .line 77
    iput-object p1, p0, Lcom/youku/vo/YoukuVideo;->videoId:Ljava/lang/String;

    .line 78
    iput-object p2, p0, Lcom/youku/vo/YoukuVideo;->title:Ljava/lang/String;

    .line 79
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/youku/vo/YoukuVideo;->videoId:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/youku/vo/YoukuVideo;->title:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/youku/vo/YoukuVideo;->showId:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/youku/vo/YoukuVideo;->playlistId:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 95
    iget-object v0, p0, Lcom/youku/vo/YoukuVideo;->videoId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/youku/vo/YoukuVideo;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/youku/vo/YoukuVideo;->showId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/youku/vo/YoukuVideo;->playlistId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    return-void
.end method
