.class public final Lc8/ebk;
.super Ljava/lang/Object;
.source "CollectionInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/phone/collection/module/CollectionInfo;
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
        "Lcom/youku/phone/collection/module/CollectionInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/youku/phone/collection/module/CollectionInfo;
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 196
    new-instance v1, Lcom/youku/phone/collection/module/CollectionInfo;

    invoke-direct {v1}, Lcom/youku/phone/collection/module/CollectionInfo;-><init>()V

    .line 197
    .local v1, "collectionInfo":Lcom/youku/phone/collection/module/CollectionInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 198
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/youku/phone/collection/module/CollectionInfo;->id:Ljava/lang/String;

    .line 199
    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/youku/phone/collection/module/CollectionInfo;->title:Ljava/lang/String;

    .line 200
    const-string/jumbo v2, "description"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/youku/phone/collection/module/CollectionInfo;->description:Ljava/lang/String;

    .line 201
    const-string/jumbo v2, "uid"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/youku/phone/collection/module/CollectionInfo;->uid:Ljava/lang/String;

    .line 202
    const-string/jumbo v2, "videoCount"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/youku/phone/collection/module/CollectionInfo;->videoCount:I

    .line 203
    const-string/jumbo v2, "viewCount"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/youku/phone/collection/module/CollectionInfo;->viewCount:Ljava/lang/String;

    .line 204
    const-string/jumbo v2, "thumbnail"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/youku/phone/collection/module/CollectionInfo;->thumbnail:Ljava/lang/String;

    .line 205
    const-string/jumbo v2, "seconds"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/youku/phone/collection/module/CollectionInfo;->seconds:I

    .line 206
    const-string/jumbo v2, "weburl"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/youku/phone/collection/module/CollectionInfo;->webUrl:Ljava/lang/String;

    .line 207
    const-string/jumbo v2, "shareTitle"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/youku/phone/collection/module/CollectionInfo;->shareTitle:Ljava/lang/String;

    .line 208
    const-string/jumbo v2, "lastViewVid"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/youku/phone/collection/module/CollectionInfo;->lastViewVid:Ljava/lang/String;

    .line 209
    const-string/jumbo v2, "change"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/youku/phone/collection/module/CollectionInfo;->change:I

    .line 210
    const-string/jumbo v2, "deleted"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/youku/phone/collection/module/CollectionInfo;->deleted:Z

    .line 211
    const-string/jumbo v2, "videos"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v1, Lcom/youku/phone/collection/module/CollectionInfo;->videos:Ljava/util/ArrayList;

    .line 212
    new-instance v2, Lc8/fbk;

    invoke-direct {v2}, Lc8/fbk;-><init>()V

    iput-object v2, v1, Lcom/youku/phone/collection/module/CollectionInfo;->creator:Lc8/fbk;

    .line 213
    iget-object v2, v1, Lcom/youku/phone/collection/module/CollectionInfo;->creator:Lc8/fbk;

    const-string/jumbo v3, "creator.id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lc8/fbk;->id:Ljava/lang/String;

    .line 214
    iget-object v2, v1, Lcom/youku/phone/collection/module/CollectionInfo;->creator:Lc8/fbk;

    const-string/jumbo v3, "creator.verified"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lc8/fbk;->verified:I

    .line 215
    iget-object v2, v1, Lcom/youku/phone/collection/module/CollectionInfo;->creator:Lc8/fbk;

    const-string/jumbo v3, "creator.name"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lc8/fbk;->name:Ljava/lang/String;

    .line 216
    iget-object v2, v1, Lcom/youku/phone/collection/module/CollectionInfo;->creator:Lc8/fbk;

    const-string/jumbo v3, "creator.followersCount"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lc8/fbk;->followersCount:Ljava/lang/String;

    .line 217
    iget-object v2, v1, Lcom/youku/phone/collection/module/CollectionInfo;->creator:Lc8/fbk;

    const-string/jumbo v3, "creator.avatar"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lc8/fbk;->avatar:Ljava/lang/String;

    .line 218
    const-string/jumbo v2, "isLiked"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/youku/phone/collection/module/CollectionInfo;->isLiked:Z

    .line 219
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p0, p1}, Lc8/ebk;->createFromParcel(Landroid/os/Parcel;)Lcom/youku/phone/collection/module/CollectionInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/youku/phone/collection/module/CollectionInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 224
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/youku/phone/collection/module/CollectionInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p0, p1}, Lc8/ebk;->newArray(I)[Lcom/youku/phone/collection/module/CollectionInfo;

    move-result-object v0

    return-object v0
.end method
