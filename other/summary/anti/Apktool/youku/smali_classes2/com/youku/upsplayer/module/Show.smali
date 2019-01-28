.class public Lcom/youku/upsplayer/module/Show;
.super Ljava/lang/Object;
.source "Show.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/youku/upsplayer/module/Show;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public copyright:Ljava/lang/String;

.field public encodeid:Ljava/lang/String;

.field public episode_total:I

.field public exclusive:Z

.field public id:I

.field public license_num:Ljava/lang/String;

.field public pay:I

.field public pay_type:[Ljava/lang/String;

.field public show_icon:I

.field public show_thumburl:Ljava/lang/String;

.field public show_thumburl_huge:Ljava/lang/String;

.field public show_videotype:Ljava/lang/String;

.field public show_vthumburl:Ljava/lang/String;

.field public show_vthumburl_huge:Ljava/lang/String;

.field public showcategory:Ljava/lang/String;

.field public showkind:[Ljava/lang/String;

.field public stage:I

.field public title:Ljava/lang/String;

.field public tudou_register_num:Ljava/lang/String;

.field public video_pay:I

.field public video_type:I

.field public youku_register_num:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lc8/oYn;

    invoke-direct {v0}, Lc8/oYn;-><init>()V

    sput-object v0, Lcom/youku/upsplayer/module/Show;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 69
    return-void
.end method
