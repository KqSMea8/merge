.class public final Lc8/uVo;
.super Ljava/lang/Object;
.source "ChannelTabInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/ChannelTabInfo;
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
        "Lcom/youku/vo/ChannelTabInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/youku/vo/ChannelTabInfo;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 267
    new-instance v0, Lcom/youku/vo/ChannelTabInfo;

    invoke-direct {v0, p1}, Lcom/youku/vo/ChannelTabInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 264
    invoke-virtual {p0, p1}, Lc8/uVo;->createFromParcel(Landroid/os/Parcel;)Lcom/youku/vo/ChannelTabInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/youku/vo/ChannelTabInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 272
    new-array v0, p1, [Lcom/youku/vo/ChannelTabInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 264
    invoke-virtual {p0, p1}, Lc8/uVo;->newArray(I)[Lcom/youku/vo/ChannelTabInfo;

    move-result-object v0

    return-object v0
.end method
