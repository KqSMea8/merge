.class public final Lc8/SVb;
.super Ljava/lang/Object;
.source "Measure.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mtl/appmonitor/model/Measure;
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
        "Lcom/alibaba/mtl/appmonitor/model/Measure;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/alibaba/mtl/appmonitor/model/Measure;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 191
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/model/Measure;->readFromParcel(Landroid/os/Parcel;)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 188
    invoke-virtual {p0, p1}, Lc8/SVb;->createFromParcel(Landroid/os/Parcel;)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/alibaba/mtl/appmonitor/model/Measure;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 196
    new-array v0, p1, [Lcom/alibaba/mtl/appmonitor/model/Measure;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 188
    invoke-virtual {p0, p1}, Lc8/SVb;->newArray(I)[Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v0

    return-object v0
.end method
