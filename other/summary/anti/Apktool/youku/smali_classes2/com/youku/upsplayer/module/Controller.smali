.class public Lcom/youku/upsplayer/module/Controller;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/youku/upsplayer/module/Controller;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public app_disable:Z

.field public circle:Z

.field public continuous:Z

.field public download_disable:Z

.field public html5_disable:Z

.field public is_phone_stream:Ljava/lang/String;

.field public like_disabled:Z

.field public new_core:Z

.field public play_mode:I

.field public play_u_state:I

.field public share_disable:Z

.field public stream_mode:I

.field public video_capture:Z

.field public yi_plus:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lc8/aYn;

    invoke-direct {v0}, Lc8/aYn;-><init>()V

    sput-object v0, Lcom/youku/upsplayer/module/Controller;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 48
    return-void
.end method
