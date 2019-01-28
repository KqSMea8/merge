.class public final Lc8/Mdn;
.super Ljava/lang/Object;
.source "DownloadInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/service/download/DownloadInfo;
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
        "Lcom/youku/service/download/DownloadInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/youku/service/download/DownloadInfo;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 473
    new-instance v0, Lcom/youku/service/download/DownloadInfo;

    invoke-direct {v0, p1}, Lcom/youku/service/download/DownloadInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 470
    invoke-virtual {p0, p1}, Lc8/Mdn;->createFromParcel(Landroid/os/Parcel;)Lcom/youku/service/download/DownloadInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/youku/service/download/DownloadInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 478
    new-array v0, p1, [Lcom/youku/service/download/DownloadInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 470
    invoke-virtual {p0, p1}, Lc8/Mdn;->newArray(I)[Lcom/youku/service/download/DownloadInfo;

    move-result-object v0

    return-object v0
.end method
