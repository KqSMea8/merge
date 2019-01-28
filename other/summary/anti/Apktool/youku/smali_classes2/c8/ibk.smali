.class public Lc8/ibk;
.super Ljava/lang/Object;
.source "ShareDescItem.java"


# instance fields
.field private mCollInfo:Lcom/youku/phone/collection/module/CollectionInfo;

.field private mIsSharedAsVideo:Z

.field private mVideoInfo:Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;


# direct methods
.method public constructor <init>(Lcom/youku/phone/collection/module/CollectionInfo;Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;Z)V
    .locals 0
    .param p1, "collInfo"    # Lcom/youku/phone/collection/module/CollectionInfo;
    .param p2, "videoInfo"    # Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;
    .param p3, "isSharedAsVideo"    # Z

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lc8/ibk;->mCollInfo:Lcom/youku/phone/collection/module/CollectionInfo;

    .line 17
    iput-object p2, p0, Lc8/ibk;->mVideoInfo:Lcom/youku/phone/collection/module/CollectionInfo$CollectionVideoInfo;

    .line 18
    iput-boolean p3, p0, Lc8/ibk;->mIsSharedAsVideo:Z

    .line 19
    return-void
.end method
