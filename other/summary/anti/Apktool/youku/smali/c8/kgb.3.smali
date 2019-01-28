.class public Lc8/kgb;
.super Landroid/view/ViewOutlineProvider;
.source "CircleImageView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/lgb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OutlineProvider"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/lgb;


# direct methods
.method private constructor <init>(Lc8/lgb;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lc8/kgb;->this$0:Lc8/lgb;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/lgb;Lc8/jgb;)V
    .locals 0
    .param p1, "x0"    # Lc8/lgb;
    .param p2, "x1"    # Lc8/jgb;

    .prologue
    .line 314
    invoke-direct {p0, p1}, Lc8/kgb;-><init>(Lc8/lgb;)V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    .prologue
    .line 318
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 319
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lc8/kgb;->this$0:Lc8/lgb;

    invoke-static {v1}, Lc8/lgb;->access$100(Lc8/lgb;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 320
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    .line 321
    return-void
.end method
