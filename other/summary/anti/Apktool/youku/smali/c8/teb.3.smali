.class public Lc8/teb;
.super Ljava/lang/Object;
.source "AnimatableTransform.java"

# interfaces
.implements Lc8/Ceb;
.implements Lc8/Scb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/seb;
    }
.end annotation


# instance fields
.field private final anchorPoint:Lc8/beb;

.field private final endOpacity:Lc8/Rdb;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final opacity:Lc8/Zdb;

.field private final position:Lc8/veb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/veb",
            "<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final rotation:Lc8/Rdb;

.field private final scale:Lc8/heb;

.field private final startOpacity:Lc8/Rdb;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lc8/beb;Lc8/veb;Lc8/heb;Lc8/Rdb;Lc8/Zdb;Lc8/Rdb;Lc8/Rdb;)V
    .locals 0
    .param p1, "anchorPoint"    # Lc8/beb;
    .param p3, "scale"    # Lc8/heb;
    .param p4, "rotation"    # Lc8/Rdb;
    .param p5, "opacity"    # Lc8/Zdb;
    .param p6, "startOpacity"    # Lc8/Rdb;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "endOpacity"    # Lc8/Rdb;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/beb;",
            "Lc8/veb",
            "<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Lc8/heb;",
            "Lc8/Rdb;",
            "Lc8/Zdb;",
            "Lc8/Rdb;",
            "Lc8/Rdb;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    .local p2, "position":Lc8/veb;, "Lcom/airbnb/lottie/model/animatable/AnimatableValue<Landroid/graphics/PointF;Landroid/graphics/PointF;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lc8/teb;->anchorPoint:Lc8/beb;

    .line 38
    iput-object p2, p0, Lc8/teb;->position:Lc8/veb;

    .line 39
    iput-object p3, p0, Lc8/teb;->scale:Lc8/heb;

    .line 40
    iput-object p4, p0, Lc8/teb;->rotation:Lc8/Rdb;

    .line 41
    iput-object p5, p0, Lc8/teb;->opacity:Lc8/Zdb;

    .line 42
    iput-object p6, p0, Lc8/teb;->startOpacity:Lc8/Rdb;

    .line 43
    iput-object p7, p0, Lc8/teb;->endOpacity:Lc8/Rdb;

    .line 44
    return-void
.end method

.method synthetic constructor <init>(Lc8/beb;Lc8/veb;Lc8/heb;Lc8/Rdb;Lc8/Zdb;Lc8/Rdb;Lc8/Rdb;Lc8/reb;)V
    .locals 0
    .param p1, "x0"    # Lc8/beb;
    .param p2, "x1"    # Lc8/veb;
    .param p3, "x2"    # Lc8/heb;
    .param p4, "x3"    # Lc8/Rdb;
    .param p5, "x4"    # Lc8/Zdb;
    .param p6, "x5"    # Lc8/Rdb;
    .param p7, "x6"    # Lc8/Rdb;
    .param p8, "x7"    # Lc8/reb;

    .prologue
    .line 22
    invoke-direct/range {p0 .. p7}, Lc8/teb;-><init>(Lc8/beb;Lc8/veb;Lc8/heb;Lc8/Rdb;Lc8/Zdb;Lc8/Rdb;Lc8/Rdb;)V

    return-void
.end method


# virtual methods
.method public createAnimation()Lc8/tdb;
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lc8/tdb;

    invoke-direct {v0, p0}, Lc8/tdb;-><init>(Lc8/teb;)V

    return-object v0
.end method

.method public getAnchorPoint()Lc8/beb;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lc8/teb;->anchorPoint:Lc8/beb;

    return-object v0
.end method

.method public getEndOpacity()Lc8/Rdb;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lc8/teb;->endOpacity:Lc8/Rdb;

    return-object v0
.end method

.method public getOpacity()Lc8/Zdb;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lc8/teb;->opacity:Lc8/Zdb;

    return-object v0
.end method

.method public getPosition()Lc8/veb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/veb",
            "<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lc8/teb;->position:Lc8/veb;

    return-object v0
.end method

.method public getRotation()Lc8/Rdb;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lc8/teb;->rotation:Lc8/Rdb;

    return-object v0
.end method

.method public getScale()Lc8/heb;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lc8/teb;->scale:Lc8/heb;

    return-object v0
.end method

.method public getStartOpacity()Lc8/Rdb;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lc8/teb;->startOpacity:Lc8/Rdb;

    return-object v0
.end method

.method public toContent(Lc8/tcb;Lc8/rfb;)Lc8/Icb;
    .locals 1
    .param p1, "drawable"    # Lc8/tcb;
    .param p2, "layer"    # Lc8/rfb;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 79
    const/4 v0, 0x0

    return-object v0
.end method
