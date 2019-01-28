.class public Lcom/youku/vo/Initial;
.super Ljava/lang/Object;
.source "Initial.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/vo/Initial$H5Config;,
        Lcom/youku/vo/Initial$PlayTip;,
        Lcom/youku/vo/Initial$HomeInit;,
        Lcom/youku/vo/Initial$FlowDistributionSwitch;,
        Lcom/youku/vo/Initial$StartImg;,
        Lcom/youku/vo/Initial$Vip;,
        Lcom/youku/vo/Initial$AllSwitchs;,
        Lcom/youku/vo/Initial$GameInformation;,
        Lcom/youku/vo/Initial$PopPage;,
        Lcom/youku/vo/Initial$P2p;,
        Lcom/youku/vo/Initial$Update;
    }
.end annotation


# static fields
.field public static all_switchs:Lcom/youku/vo/Initial$AllSwitchs; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public HEVC_whitelist:Ljava/lang/String;

.field public adv_message:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

.field public alipay_adv_message:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

.field public app_market_control:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public area_code:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public at_youku:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

.field public backgroundWaitSeconds:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

.field public blackList:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

.field public code:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public desc:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public detail_cooperation:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

.field public fetchServerConfigPeriodSeconds:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

.field public format:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public guid:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public h5_configs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/Initial$H5Config;",
            ">;"
        }
    .end annotation
.end field

.field public hard_decoding:I

.field public homeRefreshBgImage:Ljava/lang/String;

.field public home_init:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/Initial$HomeInit;",
            ">;"
        }
    .end annotation
.end field

.field public introduction:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

.field public is_abroad:I

.field public localpush:I

.field public middle_page_cooperation:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

.field public p2p:Lcom/youku/vo/Initial$P2p;

.field public periodSeconds:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

.field public play_tips:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/Initial$PlayTip;",
            ">;"
        }
    .end annotation
.end field

.field public player_h265:I

.field public player_qxd:I

.field public pop_page:Lcom/youku/vo/Initial$PopPage;

.field public recommanded_applications_switch:I

.field public search_global_network_switch:I

.field public server_time:J

.field public soft_decoder:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public start_img:Lcom/youku/vo/Initial$StartImg;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public status:Ljava/lang/String;

.field public subscribe_url:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public topic_weibo:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

.field public uc_browser:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

.field public uc_headline:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

.field public update:Lcom/youku/vo/Initial$Update;

.field public vioce_introduction:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

.field public vipcenter_url:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public vippay_url:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whiteList:Lcom/youku/vo/Initial$PlayTip$AdvMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 183
    new-instance v0, Lcom/youku/vo/Initial$AllSwitchs;

    invoke-direct {v0}, Lcom/youku/vo/Initial$AllSwitchs;-><init>()V

    sput-object v0, Lcom/youku/vo/Initial;->all_switchs:Lcom/youku/vo/Initial$AllSwitchs;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/vo/Initial;->HEVC_whitelist:Ljava/lang/String;

    .line 34
    iput-boolean v2, p0, Lcom/youku/vo/Initial;->soft_decoder:Z

    .line 43
    iput v1, p0, Lcom/youku/vo/Initial;->player_h265:I

    .line 48
    iput v1, p0, Lcom/youku/vo/Initial;->hard_decoding:I

    .line 50
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/vo/Initial;->homeRefreshBgImage:Ljava/lang/String;

    .line 60
    iput v1, p0, Lcom/youku/vo/Initial;->is_abroad:I

    .line 88
    iput v2, p0, Lcom/youku/vo/Initial;->localpush:I

    .line 93
    iput v1, p0, Lcom/youku/vo/Initial;->player_qxd:I

    .line 621
    return-void
.end method
