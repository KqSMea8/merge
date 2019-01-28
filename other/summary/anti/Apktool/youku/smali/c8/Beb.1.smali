.class public Lc8/Beb;
.super Ljava/lang/Object;
.source "CircleShape.java"

# interfaces
.implements Lc8/Ceb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Aeb;
    }
.end annotation


# instance fields
.field private final isReversed:Z

.field private final name:Ljava/lang/String;

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

.field private final size:Lc8/eeb;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lc8/veb;Lc8/eeb;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "size"    # Lc8/eeb;
    .param p4, "isReversed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lc8/veb",
            "<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Lc8/eeb;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p2, "position":Lc8/veb;, "Lcom/airbnb/lottie/model/animatable/AnimatableValue<Landroid/graphics/PointF;Landroid/graphics/PointF;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lc8/Beb;->name:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lc8/Beb;->position:Lc8/veb;

    .line 26
    iput-object p3, p0, Lc8/Beb;->size:Lc8/eeb;

    .line 27
    iput-boolean p4, p0, Lc8/Beb;->isReversed:Z

    .line 28
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lc8/veb;Lc8/eeb;ZLc8/zeb;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lc8/veb;
    .param p3, "x2"    # Lc8/eeb;
    .param p4, "x3"    # Z
    .param p5, "x4"    # Lc8/zeb;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Lc8/Beb;-><init>(Ljava/lang/String;Lc8/veb;Lc8/eeb;Z)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lc8/Beb;->name:Ljava/lang/String;

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
    .line 54
    iget-object v0, p0, Lc8/Beb;->position:Lc8/veb;

    return-object v0
.end method

.method public getSize()Lc8/eeb;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lc8/Beb;->size:Lc8/eeb;

    return-object v0
.end method

.method public isReversed()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lc8/Beb;->isReversed:Z

    return v0
.end method

.method public toContent(Lc8/tcb;Lc8/rfb;)Lc8/Icb;
    .locals 1
    .param p1, "drawable"    # Lc8/tcb;
    .param p2, "layer"    # Lc8/rfb;

    .prologue
    .line 31
    new-instance v0, Lc8/Lcb;

    invoke-direct {v0, p1, p2, p0}, Lc8/Lcb;-><init>(Lc8/tcb;Lc8/rfb;Lc8/Beb;)V

    return-object v0
.end method
