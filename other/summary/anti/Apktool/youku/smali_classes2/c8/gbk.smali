.class public final Lc8/gbk;
.super Ljava/lang/Object;
.source "CollectionInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 98
    new-instance v1, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;

    invoke-direct {v1}, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;-><init>()V

    .line 99
    .local v1, "videoInfo":Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 100
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;->id:Ljava/lang/String;

    .line 101
    const-string/jumbo v2, "duration"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;->duration:Ljava/lang/String;

    .line 102
    const-string/jumbo v2, "thumbnail"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;->thumbnail:Ljava/lang/String;

    .line 103
    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;->title:Ljava/lang/String;

    .line 104
    const-string/jumbo v2, "limit"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;->limit:I

    .line 105
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lc8/gbk;->createFromParcel(Landroid/os/Parcel;)Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 110
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lc8/gbk;->newArray(I)[Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;

    move-result-object v0

    return-object v0
.end method
