.class public Lcom/youku/phone/collection/module/CollectionInfo;
.super Ljava/lang/Object;
.source "CollectionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/fbk;,
        Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/youku/phone/collection/module/CollectionInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final MEMBER:I = 0x1

.field public static final NOT_MEMBER:I


# instance fields
.field public change:I

.field public createdTime:J

.field public creator:Lc8/fbk;

.field public deleted:Z

.field public description:Ljava/lang/String;

.field public editTitle:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public isEditorCtrl:Z

.field public isLiked:Z

.field public lastViewVid:Ljava/lang/String;

.field public offset:I

.field public seconds:I

.field public shareTitle:Ljava/lang/String;

.field public shouldShareVideoTitle:Z

.field public subTitle:Ljava/lang/String;

.field public thumbnail:Ljava/lang/String;

.field public thumbnailMedium:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public uid:Ljava/lang/String;

.field public updatedTime:J

.field public videoCount:I

.field public videos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;",
            ">;"
        }
    .end annotation
.end field

.field public viewCount:Ljava/lang/String;

.field public webUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 192
    new-instance v0, Lc8/ebk;

    invoke-direct {v0}, Lc8/ebk;-><init>()V

    sput-object v0, Lcom/youku/phone/collection/module/CollectionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/phone/collection/module/CollectionInfo;->videos:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Lc8/fbk;

    invoke-direct {v0}, Lc8/fbk;-><init>()V

    iput-object v0, p0, Lcom/youku/phone/collection/module/CollectionInfo;->creator:Lc8/fbk;

    .line 36
    iput-boolean v1, p0, Lcom/youku/phone/collection/module/CollectionInfo;->deleted:Z

    .line 38
    iput-boolean v1, p0, Lcom/youku/phone/collection/module/CollectionInfo;->isLiked:Z

    .line 43
    iput v1, p0, Lcom/youku/phone/collection/module/CollectionInfo;->offset:I

    .line 126
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public isFavorite()Z
    .locals 3

    .prologue
    .line 159
    :try_start_0
    iget-object v1, p0, Lcom/youku/phone/collection/module/CollectionInfo;->id:Ljava/lang/String;

    const-string/jumbo v2, "favorite_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 163
    :goto_0
    return v1

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 163
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSelfCreated()Z
    .locals 3

    .prologue
    .line 146
    :try_start_0
    iget-object v1, p0, Lcom/youku/phone/collection/module/CollectionInfo;->creator:Lc8/fbk;

    iget-object v1, v1, Lc8/fbk;->id:Ljava/lang/String;

    const-string/jumbo v2, "uid"

    invoke-static {v2}, Lc8/tSh;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 149
    :goto_0
    return v1

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 149
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 168
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 169
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "id"

    iget-object v2, p0, Lcom/youku/phone/collection/module/CollectionInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string/jumbo v1, "title"

    iget-object v2, p0, Lcom/youku/phone/collection/module/CollectionInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string/jumbo v1, "description"

    iget-object v2, p0, Lcom/youku/phone/collection/module/CollectionInfo;->description:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string/jumbo v1, "uid"

    iget-object v2, p0, Lcom/youku/phone/collection/module/CollectionInfo;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string/jumbo v1, "videoCount"

    iget v2, p0, Lcom/youku/phone/collection/module/CollectionInfo;->videoCount:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 174
    const-string/jumbo v1, "viewCount"

    iget-object v2, p0, Lcom/youku/phone/collection/module/CollectionInfo;->viewCount:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string/jumbo v1, "thumbnail"

    iget-object v2, p0, Lcom/youku/phone/collection/module/CollectionInfo;->thumbnail:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string/jumbo v1, "seconds"

    iget v2, p0, Lcom/youku/phone/collection/module/CollectionInfo;->seconds:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 177
    const-string/jumbo v1, "weburl"

    iget-object v2, p0, Lcom/youku/phone/collection/module/CollectionInfo;->webUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string/jumbo v1, "shareTitle"

    iget-object v2, p0, Lcom/youku/phone/collection/module/CollectionInfo;->shareTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string/jumbo v1, "lastViewVid"

    iget-object v2, p0, Lcom/youku/phone/collection/module/CollectionInfo;->lastViewVid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string/jumbo v1, "change"

    iget v2, p0, Lcom/youku/phone/collection/module/CollectionInfo;->change:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 181
    const-string/jumbo v1, "deleted"

    iget-boolean v2, p0, Lcom/youku/phone/collection/module/CollectionInfo;->deleted:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 182
    const-string/jumbo v1, "videos"

    iget-object v2, p0, Lcom/youku/phone/collection/module/CollectionInfo;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 183
    const-string/jumbo v1, "creator.id"

    iget-object v2, p0, Lcom/youku/phone/collection/module/CollectionInfo;->creator:Lc8/fbk;

    iget-object v2, v2, Lc8/fbk;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string/jumbo v1, "creator.verified"

    iget-object v2, p0, Lcom/youku/phone/collection/module/CollectionInfo;->creator:Lc8/fbk;

    iget v2, v2, Lc8/fbk;->verified:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 185
    const-string/jumbo v1, "creator.name"

    iget-object v2, p0, Lcom/youku/phone/collection/module/CollectionInfo;->creator:Lc8/fbk;

    iget-object v2, v2, Lc8/fbk;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string/jumbo v1, "creator.followersCount"

    iget-object v2, p0, Lcom/youku/phone/collection/module/CollectionInfo;->creator:Lc8/fbk;

    iget-object v2, v2, Lc8/fbk;->followersCount:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string/jumbo v1, "creator.avatar"

    iget-object v2, p0, Lcom/youku/phone/collection/module/CollectionInfo;->creator:Lc8/fbk;

    iget-object v2, v2, Lc8/fbk;->avatar:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string/jumbo v1, "isLiked"

    iget-boolean v2, p0, Lcom/youku/phone/collection/module/CollectionInfo;->isLiked:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 189
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 190
    return-void
.end method
