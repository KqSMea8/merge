.class public Lc8/Ckk;
.super Ljava/lang/Object;
.source "PlayRelatedVideoCardInfo.java"


# instance fields
.field public displayLayout:I

.field public displayNum:I

.field public drawerName:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public layout:I

.field private playRelatedVideos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/phone/detail/data/PlayRelatedVideo;",
            ">;"
        }
    .end annotation
.end field

.field public testId:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/Ckk;->playRelatedVideos:Ljava/util/ArrayList;

    .line 14
    return-void
.end method


# virtual methods
.method public getPlayRelatedVideos()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/phone/detail/data/PlayRelatedVideo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lc8/Ckk;->playRelatedVideos:Ljava/util/ArrayList;

    return-object v0
.end method
