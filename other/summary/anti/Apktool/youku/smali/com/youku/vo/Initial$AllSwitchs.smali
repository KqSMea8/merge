.class public Lcom/youku/vo/Initial$AllSwitchs;
.super Ljava/lang/Object;
.source "Initial.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/vo/Initial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AllSwitchs"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7125b78c0026c6e6L


# instance fields
.field public ad_time_interval:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public ad_time_interval_norepeat:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public adv_switch:I

.field public alipay_push_sdk:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public allow_play_audio:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public android_account_modify:I

.field public android_account_wakeup_interval:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public barrage:I

.field public cms_playpage_switch:I

.field public cms_switch:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public create_desktop_icon_switch:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public discover_switch:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public flow_distribution_switch:Lcom/youku/vo/Initial$FlowDistributionSwitch;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public flow_package_switch:I

.field public game_center_icon_switch:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public game_switch:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public h5_personal_channel_switch:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public h5_subscription_switch:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public h5_subscription_tab_switch:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public intropush:I

.field public isHotStartEnabled:I

.field public login_frequency_for_download:I

.field public login_frequency_for_video_play:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public navigation_game_entrance:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public offline_ad_switch:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public p2p_download:I

.field public p2p_switch:I

.field public p2p_vod:I

.field public personal_center_game_card:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public personalized_homepage_switch:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public planet_switch:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public player_switch:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public push_service_recover_switch:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public scan_app:I

.field public search_page_game_card:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public sm_statistics_switch:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public subscribe_bubble:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public subscribe_update_info_switch:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public switch_for_playerChange:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public tv_telecontroller_switch:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public uc_content:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public unicom_message:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public video_player_monitor_switch:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public vip:Lcom/youku/vo/Initial$Vip;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public vip_tab_style:I

.field public xiaomi_push:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public xiaomi_push_wakeup:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public yi_plus:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public youku_guess:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput v1, p0, Lcom/youku/vo/Initial$AllSwitchs;->vip_tab_style:I

    .line 203
    iput v1, p0, Lcom/youku/vo/Initial$AllSwitchs;->p2p_switch:I

    .line 208
    iput v1, p0, Lcom/youku/vo/Initial$AllSwitchs;->p2p_download:I

    .line 213
    iput v1, p0, Lcom/youku/vo/Initial$AllSwitchs;->p2p_vod:I

    .line 218
    iput v2, p0, Lcom/youku/vo/Initial$AllSwitchs;->adv_switch:I

    .line 223
    iput v2, p0, Lcom/youku/vo/Initial$AllSwitchs;->barrage:I

    .line 228
    iput v2, p0, Lcom/youku/vo/Initial$AllSwitchs;->ad_time_interval:I

    .line 234
    iput v2, p0, Lcom/youku/vo/Initial$AllSwitchs;->ad_time_interval_norepeat:I

    .line 369
    iput v3, p0, Lcom/youku/vo/Initial$AllSwitchs;->offline_ad_switch:I

    .line 394
    iput v3, p0, Lcom/youku/vo/Initial$AllSwitchs;->android_account_modify:I

    .line 399
    const/16 v0, 0x1e

    iput v0, p0, Lcom/youku/vo/Initial$AllSwitchs;->android_account_wakeup_interval:I

    .line 423
    iput v2, p0, Lcom/youku/vo/Initial$AllSwitchs;->discover_switch:I

    .line 430
    iput v3, p0, Lcom/youku/vo/Initial$AllSwitchs;->isHotStartEnabled:I

    .line 435
    iput v3, p0, Lcom/youku/vo/Initial$AllSwitchs;->cms_switch:I

    .line 442
    iput v1, p0, Lcom/youku/vo/Initial$AllSwitchs;->cms_playpage_switch:I

    .line 449
    iput v3, p0, Lcom/youku/vo/Initial$AllSwitchs;->planet_switch:I

    return-void
.end method
