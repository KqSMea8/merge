.class public Lc8/Tdf;
.super Ljava/lang/Object;
.source "ImageOption.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Sdf;
    }
.end annotation


# instance fields
.field public bizId:I

.field public enableSharpen:Z

.field public failureImageScaleType:Landroid/widget/ImageView$ScaleType;

.field public failurePlaceholderResId:I

.field public height:I

.field public isFixHeight:Z

.field public isFixWidth:Z

.field public isOriginalPic:Z

.field public loadingImageScaleType:Landroid/widget/ImageView$ScaleType;

.field public loadingPlaceholderResId:I

.field public moduleName:Ljava/lang/String;

.field public successImageScaleType:Landroid/widget/ImageView$ScaleType;

.field public tag:Ljava/lang/Object;

.field public width:I


# direct methods
.method public constructor <init>(Lc8/Sdf;)V
    .locals 1
    .param p1, "builder"    # Lc8/Sdf;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1}, Lc8/Sdf;->access$000(Lc8/Sdf;)I

    move-result v0

    iput v0, p0, Lc8/Tdf;->bizId:I

    .line 37
    invoke-static {p1}, Lc8/Sdf;->access$100(Lc8/Sdf;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/Tdf;->moduleName:Ljava/lang/String;

    .line 38
    invoke-static {p1}, Lc8/Sdf;->access$200(Lc8/Sdf;)Z

    move-result v0

    iput-boolean v0, p0, Lc8/Tdf;->enableSharpen:Z

    .line 39
    invoke-static {p1}, Lc8/Sdf;->access$300(Lc8/Sdf;)I

    move-result v0

    iput v0, p0, Lc8/Tdf;->loadingPlaceholderResId:I

    .line 40
    invoke-static {p1}, Lc8/Sdf;->access$400(Lc8/Sdf;)I

    move-result v0

    iput v0, p0, Lc8/Tdf;->failurePlaceholderResId:I

    .line 41
    invoke-static {p1}, Lc8/Sdf;->access$500(Lc8/Sdf;)Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    iput-object v0, p0, Lc8/Tdf;->successImageScaleType:Landroid/widget/ImageView$ScaleType;

    .line 42
    invoke-static {p1}, Lc8/Sdf;->access$600(Lc8/Sdf;)Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    iput-object v0, p0, Lc8/Tdf;->failureImageScaleType:Landroid/widget/ImageView$ScaleType;

    .line 43
    invoke-static {p1}, Lc8/Sdf;->access$700(Lc8/Sdf;)Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    iput-object v0, p0, Lc8/Tdf;->loadingImageScaleType:Landroid/widget/ImageView$ScaleType;

    .line 44
    invoke-static {p1}, Lc8/Sdf;->access$800(Lc8/Sdf;)I

    move-result v0

    iput v0, p0, Lc8/Tdf;->width:I

    .line 45
    invoke-static {p1}, Lc8/Sdf;->access$900(Lc8/Sdf;)I

    move-result v0

    iput v0, p0, Lc8/Tdf;->height:I

    .line 46
    invoke-static {p1}, Lc8/Sdf;->access$1000(Lc8/Sdf;)Z

    move-result v0

    iput-boolean v0, p0, Lc8/Tdf;->isFixHeight:Z

    .line 47
    invoke-static {p1}, Lc8/Sdf;->access$1100(Lc8/Sdf;)Z

    move-result v0

    iput-boolean v0, p0, Lc8/Tdf;->isFixWidth:Z

    .line 48
    invoke-static {p1}, Lc8/Sdf;->access$1200(Lc8/Sdf;)Z

    move-result v0

    iput-boolean v0, p0, Lc8/Tdf;->isOriginalPic:Z

    .line 49
    return-void
.end method
