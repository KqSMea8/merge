.class public Lcom/youku/service/download/DownloadManager$CacheRequest$Item;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/service/download/DownloadManager$CacheRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/youku/service/download/DownloadManager$CacheRequest$Item;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public password:Ljava/lang/String;

.field public taskId:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public vid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 603
    new-instance v0, Lc8/Ydn;

    invoke-direct {v0}, Lc8/Ydn;-><init>()V

    sput-object v0, Lcom/youku/service/download/DownloadManager$CacheRequest$Item;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 597
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/service/download/DownloadManager$CacheRequest$Item;->title:Ljava/lang/String;

    .line 598
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/service/download/DownloadManager$CacheRequest$Item;->vid:Ljava/lang/String;

    .line 599
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/service/download/DownloadManager$CacheRequest$Item;->taskId:Ljava/lang/String;

    .line 600
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/service/download/DownloadManager$CacheRequest$Item;->password:Ljava/lang/String;

    .line 601
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    .line 590
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 591
    iput-object p1, p0, Lcom/youku/service/download/DownloadManager$CacheRequest$Item;->vid:Ljava/lang/String;

    .line 592
    iput-object p2, p0, Lcom/youku/service/download/DownloadManager$CacheRequest$Item;->title:Ljava/lang/String;

    .line 593
    iput-object p3, p0, Lcom/youku/service/download/DownloadManager$CacheRequest$Item;->password:Ljava/lang/String;

    .line 594
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/Rdn;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Lc8/Rdn;

    .prologue
    .line 584
    invoke-direct {p0, p1, p2, p3}, Lcom/youku/service/download/DownloadManager$CacheRequest$Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 617
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 622
    iget-object v0, p0, Lcom/youku/service/download/DownloadManager$CacheRequest$Item;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 623
    iget-object v0, p0, Lcom/youku/service/download/DownloadManager$CacheRequest$Item;->vid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 624
    iget-object v0, p0, Lcom/youku/service/download/DownloadManager$CacheRequest$Item;->taskId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 625
    iget-object v0, p0, Lcom/youku/service/download/DownloadManager$CacheRequest$Item;->password:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 626
    return-void
.end method
