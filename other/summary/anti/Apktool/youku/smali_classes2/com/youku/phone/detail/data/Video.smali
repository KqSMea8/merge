.class public Lcom/youku/phone/detail/data/Video;
.super Ljava/lang/Object;
.source "Video.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public idType:I

.field public playlistId:Ljava/lang/String;

.field public showId:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public videoId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v1, p0, Lcom/youku/phone/detail/data/Video;->videoId:Ljava/lang/String;

    .line 15
    iput-object v1, p0, Lcom/youku/phone/detail/data/Video;->title:Ljava/lang/String;

    .line 20
    iput-object v1, p0, Lcom/youku/phone/detail/data/Video;->showId:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/phone/detail/data/Video;->idType:I

    .line 30
    iput-object v1, p0, Lcom/youku/phone/detail/data/Video;->playlistId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/youku/phone/detail/data/Video;->videoId:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/youku/phone/detail/data/Video;->title:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/youku/phone/detail/data/Video;->showId:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/youku/phone/detail/data/Video;->playlistId:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/phone/detail/data/Video;->idType:I

    .line 38
    return-void
.end method

.method public getShowid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/youku/phone/detail/data/Video;->showId:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/youku/phone/detail/data/Video;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/youku/phone/detail/data/Video;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method public setShowid(Ljava/lang/String;)V
    .locals 0
    .param p1, "showid"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/youku/phone/detail/data/Video;->showId:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/youku/phone/detail/data/Video;->title:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setVideoid(Ljava/lang/String;)V
    .locals 0
    .param p1, "videoid"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/youku/phone/detail/data/Video;->videoId:Ljava/lang/String;

    .line 54
    return-void
.end method
