.class public Lc8/Seb;
.super Ljava/lang/Object;
.source "PolystarShape.java"

# interfaces
.implements Lc8/Ceb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Reb;,
        Lcom/airbnb/lottie/model/content/PolystarShape$Type;
    }
.end annotation


# instance fields
.field private final innerRadius:Lc8/Rdb;

.field private final innerRoundedness:Lc8/Rdb;

.field private final name:Ljava/lang/String;

.field private final outerRadius:Lc8/Rdb;

.field private final outerRoundedness:Lc8/Rdb;

.field private final points:Lc8/Rdb;

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

.field private final type:Lcom/airbnb/lottie/model/content/PolystarShape$Type;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/PolystarShape$Type;Lc8/Rdb;Lc8/veb;Lc8/Rdb;Lc8/Rdb;Lc8/Rdb;Lc8/Rdb;Lc8/Rdb;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/airbnb/lottie/model/content/PolystarShape$Type;
    .param p3, "points"    # Lc8/Rdb;
    .param p5, "rotation"    # Lc8/Rdb;
    .param p6, "innerRadius"    # Lc8/Rdb;
    .param p7, "outerRadius"    # Lc8/Rdb;
    .param p8, "innerRoundedness"    # Lc8/Rdb;
    .param p9, "outerRoundedness"    # Lc8/Rdb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/model/content/PolystarShape$Type;",
            "Lc8/Rdb;",
            "Lc8/veb",
            "<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Lc8/Rdb;",
            "Lc8/Rdb;",
            "Lc8/Rdb;",
            "Lc8/Rdb;",
            "Lc8/Rdb;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    .local p4, "position":Lc8/veb;, "Lcom/airbnb/lottie/model/animatable/AnimatableValue<Landroid/graphics/PointF;Landroid/graphics/PointF;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lc8/Seb;->name:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lc8/Seb;->type:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    .line 54
    iput-object p3, p0, Lc8/Seb;->points:Lc8/Rdb;

    .line 55
    iput-object p4, p0, Lc8/Seb;->position:Lc8/veb;

    .line 56
    iput-object p5, p0, Lc8/Seb;->rotation:Lc8/Rdb;

    .line 57
    iput-object p6, p0, Lc8/Seb;->innerRadius:Lc8/Rdb;

    .line 58
    iput-object p7, p0, Lc8/Seb;->outerRadius:Lc8/Rdb;

    .line 59
    iput-object p8, p0, Lc8/Seb;->innerRoundedness:Lc8/Rdb;

    .line 60
    iput-object p9, p0, Lc8/Seb;->outerRoundedness:Lc8/Rdb;

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/PolystarShape$Type;Lc8/Rdb;Lc8/veb;Lc8/Rdb;Lc8/Rdb;Lc8/Rdb;Lc8/Rdb;Lc8/Rdb;Lc8/Qeb;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/airbnb/lottie/model/content/PolystarShape$Type;
    .param p3, "x2"    # Lc8/Rdb;
    .param p4, "x3"    # Lc8/veb;
    .param p5, "x4"    # Lc8/Rdb;
    .param p6, "x5"    # Lc8/Rdb;
    .param p7, "x6"    # Lc8/Rdb;
    .param p8, "x7"    # Lc8/Rdb;
    .param p9, "x8"    # Lc8/Rdb;
    .param p10, "x9"    # Lc8/Qeb;

    .prologue
    .line 16
    invoke-direct/range {p0 .. p9}, Lc8/Seb;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/PolystarShape$Type;Lc8/Rdb;Lc8/veb;Lc8/Rdb;Lc8/Rdb;Lc8/Rdb;Lc8/Rdb;Lc8/Rdb;)V

    return-void
.end method


# virtual methods
.method public getInnerRadius()Lc8/Rdb;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lc8/Seb;->innerRadius:Lc8/Rdb;

    return-object v0
.end method

.method public getInnerRoundedness()Lc8/Rdb;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lc8/Seb;->innerRoundedness:Lc8/Rdb;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lc8/Seb;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOuterRadius()Lc8/Rdb;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lc8/Seb;->outerRadius:Lc8/Rdb;

    return-object v0
.end method

.method public getOuterRoundedness()Lc8/Rdb;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lc8/Seb;->outerRoundedness:Lc8/Rdb;

    return-object v0
.end method

.method public getPoints()Lc8/Rdb;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lc8/Seb;->points:Lc8/Rdb;

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
    .line 76
    iget-object v0, p0, Lc8/Seb;->position:Lc8/veb;

    return-object v0
.end method

.method public getRotation()Lc8/Rdb;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lc8/Seb;->rotation:Lc8/Rdb;

    return-object v0
.end method

.method public getType()Lcom/airbnb/lottie/model/content/PolystarShape$Type;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lc8/Seb;->type:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    return-object v0
.end method

.method public toContent(Lc8/tcb;Lc8/rfb;)Lc8/Icb;
    .locals 1
    .param p1, "drawable"    # Lc8/tcb;
    .param p2, "layer"    # Lc8/rfb;

    .prologue
    .line 100
    new-instance v0, Lc8/Vcb;

    invoke-direct {v0, p1, p2, p0}, Lc8/Vcb;-><init>(Lc8/tcb;Lc8/rfb;Lc8/Seb;)V

    return-object v0
.end method
