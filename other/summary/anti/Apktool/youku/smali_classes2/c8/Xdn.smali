.class public final Lc8/Xdn;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/service/download/DownloadManager$CacheRequest;
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
        "Lcom/youku/service/download/DownloadManager$CacheRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/youku/service/download/DownloadManager$CacheRequest;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 561
    new-instance v0, Lcom/youku/service/download/DownloadManager$CacheRequest;

    invoke-direct {v0, p1}, Lcom/youku/service/download/DownloadManager$CacheRequest;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 558
    invoke-virtual {p0, p1}, Lc8/Xdn;->createFromParcel(Landroid/os/Parcel;)Lcom/youku/service/download/DownloadManager$CacheRequest;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/youku/service/download/DownloadManager$CacheRequest;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 566
    new-array v0, p1, [Lcom/youku/service/download/DownloadManager$CacheRequest;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 558
    invoke-virtual {p0, p1}, Lc8/Xdn;->newArray(I)[Lcom/youku/service/download/DownloadManager$CacheRequest;

    move-result-object v0

    return-object v0
.end method
