.class public Lc8/HVo;
.super Ljava/lang/Object;
.source "HomeVideoLandItemOverlay.java"


# instance fields
.field public bInflated:Z

.field public home_video_avatar_img:Landroid/widget/ImageView;

.field public home_video_land_item_stripe_middle:Landroid/widget/TextView;

.field public home_video_overlay_viewstub:Landroid/view/ViewStub;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/HVo;->bInflated:Z

    .line 14
    iput-object v1, p0, Lc8/HVo;->home_video_overlay_viewstub:Landroid/view/ViewStub;

    .line 16
    iput-object v1, p0, Lc8/HVo;->home_video_avatar_img:Landroid/widget/ImageView;

    .line 18
    iput-object v1, p0, Lc8/HVo;->home_video_land_item_stripe_middle:Landroid/widget/TextView;

    return-void
.end method
