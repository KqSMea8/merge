.class public Lcom/youku/upsplayer/module/Videos;
.super Ljava/lang/Object;
.source "Videos.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/youku/upsplayer/module/Videos;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public list:[Lcom/youku/upsplayer/module/ItemVideo;

.field public next:Lcom/youku/upsplayer/module/ItemVideo;

.field public previous:Lcom/youku/upsplayer/module/ItemVideo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lc8/DYn;

    invoke-direct {v0}, Lc8/DYn;-><init>()V

    sput-object v0, Lcom/youku/upsplayer/module/Videos;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 33
    return-void
.end method
