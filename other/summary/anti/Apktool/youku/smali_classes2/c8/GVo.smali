.class public Lc8/GVo;
.super Ljava/lang/Object;
.source "HomeVideoLandItem.java"


# instance fields
.field public home_card_item_video:Landroid/view/View;

.field public home_video_land_item_img:Landroid/widget/ImageView;

.field public home_video_land_item_img_load_task:Ljava/lang/Runnable;

.field public home_video_land_item_overlay:Lc8/HVo;

.field public home_video_land_item_play_count:Landroid/widget/ImageView;

.field public home_video_land_item_title_first:Landroid/widget/TextView;

.field public home_video_land_item_title_second:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v0, p0, Lc8/GVo;->home_card_item_video:Landroid/view/View;

    .line 14
    iput-object v0, p0, Lc8/GVo;->home_video_land_item_img:Landroid/widget/ImageView;

    .line 16
    iput-object v0, p0, Lc8/GVo;->home_video_land_item_img_load_task:Ljava/lang/Runnable;

    .line 18
    iput-object v0, p0, Lc8/GVo;->home_video_land_item_title_first:Landroid/widget/TextView;

    .line 20
    iput-object v0, p0, Lc8/GVo;->home_video_land_item_title_second:Landroid/widget/TextView;

    .line 22
    iput-object v0, p0, Lc8/GVo;->home_video_land_item_play_count:Landroid/widget/ImageView;

    .line 24
    iput-object v0, p0, Lc8/GVo;->home_video_land_item_overlay:Lc8/HVo;

    return-void
.end method
