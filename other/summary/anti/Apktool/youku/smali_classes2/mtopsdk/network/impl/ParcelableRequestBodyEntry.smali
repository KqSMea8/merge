.class public Lmtopsdk/network/impl/ParcelableRequestBodyEntry;
.super Ljava/lang/Object;
.source "ParcelableRequestBodyEntry.java"

# interfaces
.implements Lanet/channel/request/BodyEntry;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lmtopsdk/network/impl/ParcelableRequestBodyEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field requestBody:Lmtopsdk/network/domain/ParcelableRequestBodyImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lc8/XPp;

    invoke-direct {v0}, Lc8/XPp;-><init>()V

    sput-object v0, Lmtopsdk/network/impl/ParcelableRequestBodyEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-class v0, Lmtopsdk/network/domain/ParcelableRequestBodyImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lmtopsdk/network/domain/ParcelableRequestBodyImpl;

    iput-object v0, p0, Lmtopsdk/network/impl/ParcelableRequestBodyEntry;->requestBody:Lmtopsdk/network/domain/ParcelableRequestBodyImpl;

    .line 47
    return-void
.end method

.method public constructor <init>(Lmtopsdk/network/domain/ParcelableRequestBodyImpl;)V
    .locals 0
    .param p1, "requestBody"    # Lmtopsdk/network/domain/ParcelableRequestBodyImpl;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lmtopsdk/network/impl/ParcelableRequestBodyEntry;->requestBody:Lmtopsdk/network/domain/ParcelableRequestBodyImpl;

    .line 22
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lmtopsdk/network/impl/ParcelableRequestBodyEntry;->requestBody:Lmtopsdk/network/domain/ParcelableRequestBodyImpl;

    invoke-virtual {v0}, Lmtopsdk/network/domain/ParcelableRequestBodyImpl;->contentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)I
    .locals 2
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lmtopsdk/network/impl/ParcelableRequestBodyEntry;->requestBody:Lmtopsdk/network/domain/ParcelableRequestBodyImpl;

    invoke-virtual {v0, p1}, Lmtopsdk/network/domain/ParcelableRequestBodyImpl;->writeTo(Ljava/io/OutputStream;)V

    .line 32
    iget-object v0, p0, Lmtopsdk/network/impl/ParcelableRequestBodyEntry;->requestBody:Lmtopsdk/network/domain/ParcelableRequestBodyImpl;

    invoke-virtual {v0}, Lmtopsdk/network/domain/ParcelableRequestBodyImpl;->contentLength()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lmtopsdk/network/impl/ParcelableRequestBodyEntry;->requestBody:Lmtopsdk/network/domain/ParcelableRequestBodyImpl;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 43
    return-void
.end method
