.class public Lmtopsdk/network/domain/ParcelableRequestBodyImpl;
.super Lc8/HPp;
.source "ParcelableRequestBodyImpl.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lmtopsdk/network/domain/ParcelableRequestBodyImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private content:[B

.field private contentType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lc8/APp;

    invoke-direct {v0}, Lc8/APp;-><init>()V

    sput-object v0, Lmtopsdk/network/domain/ParcelableRequestBodyImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0}, Lc8/HPp;-><init>()V

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmtopsdk/network/domain/ParcelableRequestBodyImpl;->contentType:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lmtopsdk/network/domain/ParcelableRequestBodyImpl;->content:[B

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0
    .param p1, "contentType"    # Ljava/lang/String;
    .param p2, "content"    # [B

    .prologue
    .line 21
    invoke-direct {p0}, Lc8/HPp;-><init>()V

    .line 22
    iput-object p2, p0, Lmtopsdk/network/domain/ParcelableRequestBodyImpl;->content:[B

    .line 23
    iput-object p1, p0, Lmtopsdk/network/domain/ParcelableRequestBodyImpl;->contentType:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lmtopsdk/network/domain/ParcelableRequestBodyImpl;->content:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmtopsdk/network/domain/ParcelableRequestBodyImpl;->content:[B

    array-length v0, v0

    int-to-long v0, v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-super {p0}, Lc8/HPp;->contentLength()J

    move-result-wide v0

    goto :goto_0
.end method

.method public contentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lmtopsdk/network/domain/ParcelableRequestBodyImpl;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lmtopsdk/network/domain/ParcelableRequestBodyImpl;->content:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 39
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 49
    iget-object v0, p0, Lmtopsdk/network/domain/ParcelableRequestBodyImpl;->contentType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lmtopsdk/network/domain/ParcelableRequestBodyImpl;->content:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 51
    return-void
.end method
