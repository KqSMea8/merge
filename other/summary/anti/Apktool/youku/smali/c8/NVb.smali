.class public final Lc8/NVb;
.super Ljava/lang/Object;
.source "Transaction.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mtl/appmonitor/Transaction;
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
        "Lcom/alibaba/mtl/appmonitor/Transaction;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/alibaba/mtl/appmonitor/Transaction;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 127
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/Transaction;->readFromParcel(Landroid/os/Parcel;)Lcom/alibaba/mtl/appmonitor/Transaction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lc8/NVb;->createFromParcel(Landroid/os/Parcel;)Lcom/alibaba/mtl/appmonitor/Transaction;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/alibaba/mtl/appmonitor/Transaction;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 132
    new-array v0, p1, [Lcom/alibaba/mtl/appmonitor/Transaction;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lc8/NVb;->newArray(I)[Lcom/alibaba/mtl/appmonitor/Transaction;

    move-result-object v0

    return-object v0
.end method
