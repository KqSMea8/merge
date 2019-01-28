.class public Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;
.super Ljava/lang/Object;
.source "CollectionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/phone/collection/module/CollectionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CollectionVideoInfo"
.end annotation


# static fields
.field public static final COLLECTION_VIDEO_MEMBER:I = 0x1

.field public static final COLLECTION_VIDEO_NORMAL:I

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public category:Ljava/lang/String;

.field public deleted:Z

.field public desc:Ljava/lang/String;

.field public duration:Ljava/lang/String;

.field public hasRcTitle:Z

.field public id:Ljava/lang/String;

.field public isCached:Z

.field public isFavorite:Z

.field public isPlaying:Z

.field public limit:I

.field public paidFlag:I

.field public publicTye:I

.field public rcTitle:Ljava/lang/String;

.field public readableDuration:Ljava/lang/String;

.field public readableViewCount:Ljava/lang/String;

.field public showId:Ljava/lang/String;

.field public thumbnail:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public ugcTitle:Ljava/lang/String;

.field public viewCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    new-instance v0, Lc8/gbk;

    invoke-direct {v0}, Lc8/gbk;-><init>()V

    sput-object v0, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;->id:Ljava/lang/String;

    .line 58
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;->duration:Ljava/lang/String;

    .line 59
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;->thumbnail:Ljava/lang/String;

    .line 60
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;->title:Ljava/lang/String;

    .line 63
    iput-boolean v1, p0, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;->deleted:Z

    .line 64
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;->readableViewCount:Ljava/lang/String;

    .line 65
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;->readableDuration:Ljava/lang/String;

    .line 66
    iput-boolean v1, p0, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;->isCached:Z

    .line 67
    iput-boolean v1, p0, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;->isFavorite:Z

    .line 68
    iput v1, p0, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;->paidFlag:I

    .line 69
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;->showId:Ljava/lang/String;

    .line 71
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;->desc:Ljava/lang/String;

    .line 72
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;->rcTitle:Ljava/lang/String;

    .line 74
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;->category:Ljava/lang/String;

    .line 75
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;->ugcTitle:Ljava/lang/String;

    .line 76
    iput-boolean v1, p0, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;->isPlaying:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 116
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;

    if-nez v0, :cond_1

    .line 117
    :cond_0
    const/4 v0, 0x0

    .line 121
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v0

    .line 118
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;->id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;

    iget-object v0, v0, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;->id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 119
    :cond_2
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 121
    :cond_3
    iget-object v0, p0, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;->id:Ljava/lang/String;

    check-cast p1, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 85
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 86
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "id"

    iget-object v2, p0, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string/jumbo v1, "duration"

    iget-object v2, p0, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;->duration:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string/jumbo v1, "thumbnail"

    iget-object v2, p0, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;->thumbnail:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string/jumbo v1, "title"

    iget-object v2, p0, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string/jumbo v1, "limit"

    iget v2, p0, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;->limit:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 91
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 92
    return-void
.end method
