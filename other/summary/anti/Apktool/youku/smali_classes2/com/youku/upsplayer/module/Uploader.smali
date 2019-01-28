.class public Lcom/youku/upsplayer/module/Uploader;
.super Ljava/lang/Object;
.source "Uploader.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/youku/upsplayer/module/Uploader;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public avatar:Lcom/youku/upsplayer/module/Avatar;

.field public certification:Z

.field public fan_count:I

.field public homepage:Ljava/lang/String;

.field public reason:Ljava/lang/String;

.field public show_brand:Z

.field public subscription:I

.field public uid:Ljava/lang/String;

.field public username:Ljava/lang/String;

.field public zpd_url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lc8/vYn;

    invoke-direct {v0}, Lc8/vYn;-><init>()V

    sput-object v0, Lcom/youku/upsplayer/module/Uploader;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 42
    return-void
.end method
