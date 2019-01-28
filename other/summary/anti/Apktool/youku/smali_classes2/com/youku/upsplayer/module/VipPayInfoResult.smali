.class public Lcom/youku/upsplayer/module/VipPayInfoResult;
.super Ljava/lang/Object;
.source "VipPayInfoResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/youku/upsplayer/module/VipPayInfoResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public buy_desc:Ljava/lang/String;

.field public buy_link:Ljava/lang/String;

.field public discount_vod_price:I

.field public display_template:I

.field public endtime:Ljava/lang/String;

.field public ext_buy_desc:Ljava/lang/String;

.field public ext_buy_link:Ljava/lang/String;

.field public islogin:I

.field public link_jump_type:I

.field public movie_ticket_num:I

.field public permit_duration:I

.field public play_bar_desc:Ljava/lang/String;

.field public play_bar_link:Ljava/lang/String;

.field public play_bar_link_text:Ljava/lang/String;

.field public play_big_icon:Ljava/lang/String;

.field public play_small_icon:Ljava/lang/String;

.field public product:I

.field public product_desc:Ljava/lang/String;

.field public product_name:Ljava/lang/String;

.field public qrcodeid_link:Ljava/lang/String;

.field public service_desc:Ljava/lang/String;

.field public show_vthumburl:Ljava/lang/String;

.field public showname:Ljava/lang/String;

.field public tab_ext_desc:Ljava/lang/String;

.field public tcode:Ljava/lang/String;

.field public vod_price:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lc8/GYn;

    invoke-direct {v0}, Lc8/GYn;-><init>()V

    sput-object v0, Lcom/youku/upsplayer/module/VipPayInfoResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/upsplayer/module/VipPayInfoResult;->service_desc:Ljava/lang/String;

    .line 17
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/upsplayer/module/VipPayInfoResult;->play_bar_link:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/upsplayer/module/VipPayInfoResult;->tcode:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/upsplayer/module/VipPayInfoResult;->ext_buy_link:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/upsplayer/module/VipPayInfoResult;->showname:Ljava/lang/String;

    .line 25
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/upsplayer/module/VipPayInfoResult;->tab_ext_desc:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/upsplayer/module/VipPayInfoResult;->show_vthumburl:Ljava/lang/String;

    .line 33
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/upsplayer/module/VipPayInfoResult;->play_bar_desc:Ljava/lang/String;

    .line 36
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/upsplayer/module/VipPayInfoResult;->play_small_icon:Ljava/lang/String;

    .line 39
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/upsplayer/module/VipPayInfoResult;->play_big_icon:Ljava/lang/String;

    .line 48
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/upsplayer/module/VipPayInfoResult;->product_name:Ljava/lang/String;

    .line 52
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/upsplayer/module/VipPayInfoResult;->product_desc:Ljava/lang/String;

    .line 58
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/upsplayer/module/VipPayInfoResult;->qrcodeid_link:Ljava/lang/String;

    .line 60
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/upsplayer/module/VipPayInfoResult;->ext_buy_desc:Ljava/lang/String;

    .line 62
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/upsplayer/module/VipPayInfoResult;->buy_desc:Ljava/lang/String;

    .line 64
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/upsplayer/module/VipPayInfoResult;->play_bar_link_text:Ljava/lang/String;

    .line 66
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/upsplayer/module/VipPayInfoResult;->buy_link:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/upsplayer/module/VipPayInfoResult;->service_desc:Ljava/lang/String;

    .line 17
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/upsplayer/module/VipPayInfoResult;->play_bar_link:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/upsplayer/module/VipPayInfoResult;->tcode:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/upsplayer/module/VipPayInfoResult;->ext_buy_link:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/upsplayer/module/VipPayInfoResult;->showname:Ljava/lang/String;

    .line 25
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/upsplayer/module/VipPayInfoResult;->tab_ext_desc:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/upsplayer/module/VipPayInfoResult;->show_vthumburl:Ljava/lang/String;

    .line 33
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/upsplayer/module/VipPayInfoResult;->play_bar_desc:Ljava/lang/String;

    .line 36
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/upsplayer/module/VipPayInfoResult;->play_small_icon:Ljava/lang/String;

    .line 39
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/upsplayer/module/VipPayInfoResult;->play_big_icon:Ljava/lang/String;

    .line 48
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/upsplayer/module/VipPayInfoResult;->product_name:Ljava/lang/String;

    .line 52
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/upsplayer/module/VipPayInfoResult;->product_desc:Ljava/lang/String;

    .line 58
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/upsplayer/module/VipPayInfoResult;->qrcodeid_link:Ljava/lang/String;

    .line 60
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/upsplayer/module/VipPayInfoResult;->ext_buy_desc:Ljava/lang/String;

    .line 62
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/upsplayer/module/VipPayInfoResult;->buy_desc:Ljava/lang/String;

    .line 64
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/upsplayer/module/VipPayInfoResult;->play_bar_link_text:Ljava/lang/String;

    .line 66
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/upsplayer/module/VipPayInfoResult;->buy_link:Ljava/lang/String;

    .line 75
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 85
    return-void
.end method
