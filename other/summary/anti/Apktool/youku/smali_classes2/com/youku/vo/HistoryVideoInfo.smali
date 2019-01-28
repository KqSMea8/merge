.class public Lcom/youku/vo/HistoryVideoInfo;
.super Lcom/youku/vo/YoukuVideo;
.source "HistoryVideoInfo.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/youku/vo/HistoryVideoInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public album_video_count:I

.field public cg:Ljava/lang/String;

.field public duration:I

.field public hwclass:I

.field private hwclassStr:Ljava/lang/String;

.field public img_hd:Ljava/lang/String;

.field public isCached:Z

.field public is_panorama:I

.field public isstage:I

.field public lang:I

.field public lastupdate:J

.field public paid:I

.field public playend:I

.field private playtype:I

.field public point:I

.field public pointStr:Ljava/lang/String;

.field public shid:Ljava/lang/String;

.field public stage:I

.field public tp:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    new-instance v0, Lc8/BVo;

    invoke-direct {v0}, Lc8/BVo;-><init>()V

    sput-object v0, Lcom/youku/vo/HistoryVideoInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 55
    invoke-direct {p0}, Lcom/youku/vo/YoukuVideo;-><init>()V

    .line 34
    iput v2, p0, Lcom/youku/vo/HistoryVideoInfo;->album_video_count:I

    .line 35
    iput v2, p0, Lcom/youku/vo/HistoryVideoInfo;->point:I

    .line 36
    iput v2, p0, Lcom/youku/vo/HistoryVideoInfo;->duration:I

    .line 37
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/vo/HistoryVideoInfo;->pointStr:Ljava/lang/String;

    .line 38
    iput v2, p0, Lcom/youku/vo/HistoryVideoInfo;->playend:I

    .line 39
    iput v2, p0, Lcom/youku/vo/HistoryVideoInfo;->isstage:I

    .line 40
    iput v2, p0, Lcom/youku/vo/HistoryVideoInfo;->stage:I

    .line 41
    iput v2, p0, Lcom/youku/vo/HistoryVideoInfo;->playtype:I

    .line 42
    iput v2, p0, Lcom/youku/vo/HistoryVideoInfo;->hwclass:I

    .line 43
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/vo/HistoryVideoInfo;->hwclassStr:Ljava/lang/String;

    .line 44
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/vo/HistoryVideoInfo;->img_hd:Ljava/lang/String;

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/youku/vo/HistoryVideoInfo;->lastupdate:J

    .line 46
    iput-boolean v2, p0, Lcom/youku/vo/HistoryVideoInfo;->isCached:Z

    .line 47
    iput v2, p0, Lcom/youku/vo/HistoryVideoInfo;->paid:I

    .line 51
    iput v2, p0, Lcom/youku/vo/HistoryVideoInfo;->is_panorama:I

    .line 53
    const/4 v0, 0x1

    iput v0, p0, Lcom/youku/vo/HistoryVideoInfo;->lang:I

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Lcom/youku/vo/YoukuVideo;-><init>()V

    .line 34
    iput v1, p0, Lcom/youku/vo/HistoryVideoInfo;->album_video_count:I

    .line 35
    iput v1, p0, Lcom/youku/vo/HistoryVideoInfo;->point:I

    .line 36
    iput v1, p0, Lcom/youku/vo/HistoryVideoInfo;->duration:I

    .line 37
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/youku/vo/HistoryVideoInfo;->pointStr:Ljava/lang/String;

    .line 38
    iput v1, p0, Lcom/youku/vo/HistoryVideoInfo;->playend:I

    .line 39
    iput v1, p0, Lcom/youku/vo/HistoryVideoInfo;->isstage:I

    .line 40
    iput v1, p0, Lcom/youku/vo/HistoryVideoInfo;->stage:I

    .line 41
    iput v1, p0, Lcom/youku/vo/HistoryVideoInfo;->playtype:I

    .line 42
    iput v1, p0, Lcom/youku/vo/HistoryVideoInfo;->hwclass:I

    .line 43
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/youku/vo/HistoryVideoInfo;->hwclassStr:Ljava/lang/String;

    .line 44
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/youku/vo/HistoryVideoInfo;->img_hd:Ljava/lang/String;

    .line 45
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/youku/vo/HistoryVideoInfo;->lastupdate:J

    .line 46
    iput-boolean v1, p0, Lcom/youku/vo/HistoryVideoInfo;->isCached:Z

    .line 47
    iput v1, p0, Lcom/youku/vo/HistoryVideoInfo;->paid:I

    .line 51
    iput v1, p0, Lcom/youku/vo/HistoryVideoInfo;->is_panorama:I

    .line 53
    iput v0, p0, Lcom/youku/vo/HistoryVideoInfo;->lang:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/vo/HistoryVideoInfo;->videoId:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/vo/HistoryVideoInfo;->title:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/vo/HistoryVideoInfo;->showId:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/vo/HistoryVideoInfo;->playlistId:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/youku/vo/HistoryVideoInfo;->album_video_count:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/youku/vo/HistoryVideoInfo;->point:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/youku/vo/HistoryVideoInfo;->duration:I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/vo/HistoryVideoInfo;->pointStr:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/youku/vo/HistoryVideoInfo;->playend:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/youku/vo/HistoryVideoInfo;->isstage:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/youku/vo/HistoryVideoInfo;->stage:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/youku/vo/HistoryVideoInfo;->playtype:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/youku/vo/HistoryVideoInfo;->hwclass:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/vo/HistoryVideoInfo;->hwclassStr:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/youku/vo/HistoryVideoInfo;->img_hd:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/youku/vo/HistoryVideoInfo;->lastupdate:J

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/youku/vo/HistoryVideoInfo;->isCached:Z

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/vo/HistoryVideoInfo;->paid:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/vo/HistoryVideoInfo;->is_panorama:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/vo/HistoryVideoInfo;->lang:I

    .line 79
    return-void

    :cond_0
    move v0, v1

    .line 75
    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public getHwclassStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/youku/vo/HistoryVideoInfo;->hwclassStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/youku/vo/HistoryVideoInfo;->hwclassStr:Ljava/lang/String;

    .line 160
    :goto_0
    return-object v0

    .line 139
    :cond_0
    iget v0, p0, Lcom/youku/vo/HistoryVideoInfo;->hwclass:I

    packed-switch v0, :pswitch_data_0

    .line 156
    :pswitch_0
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/vo/HistoryVideoInfo;->hwclassStr:Ljava/lang/String;

    .line 160
    :goto_1
    iget-object v0, p0, Lcom/youku/vo/HistoryVideoInfo;->hwclassStr:Ljava/lang/String;

    goto :goto_0

    .line 141
    :pswitch_1
    const-string/jumbo v0, "\u7535\u8111"

    iput-object v0, p0, Lcom/youku/vo/HistoryVideoInfo;->hwclassStr:Ljava/lang/String;

    goto :goto_1

    .line 144
    :pswitch_2
    const-string/jumbo v0, "\u7535\u89c6"

    iput-object v0, p0, Lcom/youku/vo/HistoryVideoInfo;->hwclassStr:Ljava/lang/String;

    goto :goto_1

    .line 147
    :pswitch_3
    const-string/jumbo v0, "\u5e73\u677f"

    iput-object v0, p0, Lcom/youku/vo/HistoryVideoInfo;->hwclassStr:Ljava/lang/String;

    goto :goto_1

    .line 150
    :pswitch_4
    const-string/jumbo v0, "\u624b\u673a"

    iput-object v0, p0, Lcom/youku/vo/HistoryVideoInfo;->hwclassStr:Ljava/lang/String;

    goto :goto_1

    .line 153
    :pswitch_5
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/vo/HistoryVideoInfo;->hwclassStr:Ljava/lang/String;

    goto :goto_1

    .line 139
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public getIsPlaytEnd()Z
    .locals 2

    .prologue
    .line 194
    iget v0, p0, Lcom/youku/vo/HistoryVideoInfo;->playend:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/youku/vo/HistoryVideoInfo;->duration:I

    iget v1, p0, Lcom/youku/vo/HistoryVideoInfo;->point:I

    sub-int/2addr v0, v1

    const/16 v1, 0x3c

    if-gt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPlaytype()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 167
    iget v0, p0, Lcom/youku/vo/HistoryVideoInfo;->playend:I

    if-nez v0, :cond_1

    .line 168
    iget v0, p0, Lcom/youku/vo/HistoryVideoInfo;->duration:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/youku/vo/HistoryVideoInfo;->duration:I

    iget v1, p0, Lcom/youku/vo/HistoryVideoInfo;->point:I

    sub-int/2addr v0, v1

    const/16 v1, 0x3c

    if-gt v0, v1, :cond_0

    .line 169
    iput v2, p0, Lcom/youku/vo/HistoryVideoInfo;->playtype:I

    .line 180
    :goto_0
    iget v0, p0, Lcom/youku/vo/HistoryVideoInfo;->playtype:I

    return v0

    .line 171
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/vo/HistoryVideoInfo;->playtype:I

    goto :goto_0

    .line 174
    :cond_1
    iget v0, p0, Lcom/youku/vo/HistoryVideoInfo;->isstage:I

    if-nez v0, :cond_2

    .line 175
    iput v2, p0, Lcom/youku/vo/HistoryVideoInfo;->playtype:I

    goto :goto_0

    .line 177
    :cond_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/youku/vo/HistoryVideoInfo;->playtype:I

    goto :goto_0
.end method

.method public getPointStr()Ljava/lang/String;
    .locals 4

    .prologue
    .line 121
    iget-object v0, p0, Lcom/youku/vo/HistoryVideoInfo;->pointStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/youku/vo/HistoryVideoInfo;->pointStr:Ljava/lang/String;

    .line 129
    :goto_0
    return-object v0

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/youku/vo/HistoryVideoInfo;->getIsPlaytEnd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/youku/vo/HistoryVideoInfo;->duration:I

    int-to-double v2, v1

    invoke-static {v2, v3}, Lc8/Iin;->formatTimeForHistory(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/vo/HistoryVideoInfo;->pointStr:Ljava/lang/String;

    .line 129
    :goto_1
    iget-object v0, p0, Lcom/youku/vo/HistoryVideoInfo;->pointStr:Ljava/lang/String;

    goto :goto_0

    .line 127
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/youku/vo/HistoryVideoInfo;->point:I

    int-to-double v2, v1

    invoke-static {v2, v3}, Lc8/Iin;->formatTimeForHistory(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/youku/vo/HistoryVideoInfo;->duration:I

    int-to-double v2, v1

    invoke-static {v2, v3}, Lc8/Iin;->formatTimeForHistory(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/vo/HistoryVideoInfo;->pointStr:Ljava/lang/String;

    goto :goto_1
.end method

.method public hasNextVideo()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 187
    iget v1, p0, Lcom/youku/vo/HistoryVideoInfo;->isstage:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCached()Z
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/youku/vo/HistoryVideoInfo;->isCached:Z

    return v0
.end method

.method public isPanorama()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 210
    iget v1, p0, Lcom/youku/vo/HistoryVideoInfo;->is_panorama:I

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPay()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 206
    iget v1, p0, Lcom/youku/vo/HistoryVideoInfo;->paid:I

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCached(Z)V
    .locals 0
    .param p1, "isCached"    # Z

    .prologue
    .line 202
    iput-boolean p1, p0, Lcom/youku/vo/HistoryVideoInfo;->isCached:Z

    .line 203
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 88
    invoke-super {p0, p1, p2}, Lcom/youku/vo/YoukuVideo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 89
    iget v0, p0, Lcom/youku/vo/HistoryVideoInfo;->album_video_count:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget v0, p0, Lcom/youku/vo/HistoryVideoInfo;->point:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget v0, p0, Lcom/youku/vo/HistoryVideoInfo;->duration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget-object v0, p0, Lcom/youku/vo/HistoryVideoInfo;->pointStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget v0, p0, Lcom/youku/vo/HistoryVideoInfo;->playend:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget v0, p0, Lcom/youku/vo/HistoryVideoInfo;->isstage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget v0, p0, Lcom/youku/vo/HistoryVideoInfo;->stage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget v0, p0, Lcom/youku/vo/HistoryVideoInfo;->playtype:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget v0, p0, Lcom/youku/vo/HistoryVideoInfo;->hwclass:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget-object v0, p0, Lcom/youku/vo/HistoryVideoInfo;->hwclassStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/youku/vo/HistoryVideoInfo;->img_hd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-wide v0, p0, Lcom/youku/vo/HistoryVideoInfo;->lastupdate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 101
    iget-boolean v0, p0, Lcom/youku/vo/HistoryVideoInfo;->isCached:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 102
    iget v0, p0, Lcom/youku/vo/HistoryVideoInfo;->paid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget v0, p0, Lcom/youku/vo/HistoryVideoInfo;->is_panorama:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget v0, p0, Lcom/youku/vo/HistoryVideoInfo;->lang:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    return-void

    .line 101
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
