.class public Lcom/youku/upsplayer/module/Dvd;
.super Ljava/lang/Object;
.source "Dvd.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/youku/upsplayer/module/Dvd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public attachment:[Lcom/youku/upsplayer/module/Attachment;

.field public audiolang:[Lcom/youku/upsplayer/module/AudioLang;

.field public head:Ljava/lang/String;

.field public notsharing:Ljava/lang/String;

.field public point:[Lcom/youku/upsplayer/module/Point;

.field public tail:Ljava/lang/String;

.field public threed:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lc8/cYn;

    invoke-direct {v0}, Lc8/cYn;-><init>()V

    sput-object v0, Lcom/youku/upsplayer/module/Dvd;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 37
    return-void
.end method
