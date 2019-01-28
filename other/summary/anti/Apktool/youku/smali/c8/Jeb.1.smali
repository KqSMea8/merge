.class public Lc8/Jeb;
.super Ljava/lang/Object;
.source "GradientStroke.java"

# interfaces
.implements Lc8/Ceb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Ieb;
    }
.end annotation


# instance fields
.field private final capType:Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

.field private final dashOffset:Lc8/Rdb;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final endPoint:Lc8/eeb;

.field private final gradientColor:Lc8/Vdb;

.field private final gradientType:Lcom/airbnb/lottie/model/content/GradientType;

.field private final joinType:Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

.field private final lineDashPattern:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/Rdb;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final opacity:Lc8/Zdb;

.field private final startPoint:Lc8/eeb;

.field private final width:Lc8/Rdb;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/GradientType;Lc8/Vdb;Lc8/Zdb;Lc8/eeb;Lc8/eeb;Lc8/Rdb;Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;Ljava/util/List;Lc8/Rdb;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "gradientType"    # Lcom/airbnb/lottie/model/content/GradientType;
    .param p3, "gradientColor"    # Lc8/Vdb;
    .param p4, "opacity"    # Lc8/Zdb;
    .param p5, "startPoint"    # Lc8/eeb;
    .param p6, "endPoint"    # Lc8/eeb;
    .param p7, "width"    # Lc8/Rdb;
    .param p8, "capType"    # Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;
    .param p9, "joinType"    # Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;
    .param p11, "dashOffset"    # Lc8/Rdb;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/model/content/GradientType;",
            "Lc8/Vdb;",
            "Lc8/Zdb;",
            "Lc8/eeb;",
            "Lc8/eeb;",
            "Lc8/Rdb;",
            "Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;",
            "Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;",
            "Ljava/util/List",
            "<",
            "Lc8/Rdb;",
            ">;",
            "Lc8/Rdb;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    .local p10, "lineDashPattern":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lc8/Jeb;->name:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lc8/Jeb;->gradientType:Lcom/airbnb/lottie/model/content/GradientType;

    .line 43
    iput-object p3, p0, Lc8/Jeb;->gradientColor:Lc8/Vdb;

    .line 44
    iput-object p4, p0, Lc8/Jeb;->opacity:Lc8/Zdb;

    .line 45
    iput-object p5, p0, Lc8/Jeb;->startPoint:Lc8/eeb;

    .line 46
    iput-object p6, p0, Lc8/Jeb;->endPoint:Lc8/eeb;

    .line 47
    iput-object p7, p0, Lc8/Jeb;->width:Lc8/Rdb;

    .line 48
    iput-object p8, p0, Lc8/Jeb;->capType:Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    .line 49
    iput-object p9, p0, Lc8/Jeb;->joinType:Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    .line 50
    iput-object p10, p0, Lc8/Jeb;->lineDashPattern:Ljava/util/List;

    .line 51
    iput-object p11, p0, Lc8/Jeb;->dashOffset:Lc8/Rdb;

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/GradientType;Lc8/Vdb;Lc8/Zdb;Lc8/eeb;Lc8/eeb;Lc8/Rdb;Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;Ljava/util/List;Lc8/Rdb;Lc8/Heb;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/airbnb/lottie/model/content/GradientType;
    .param p3, "x2"    # Lc8/Vdb;
    .param p4, "x3"    # Lc8/Zdb;
    .param p5, "x4"    # Lc8/eeb;
    .param p6, "x5"    # Lc8/eeb;
    .param p7, "x6"    # Lc8/Rdb;
    .param p8, "x7"    # Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;
    .param p9, "x8"    # Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;
    .param p10, "x9"    # Ljava/util/List;
    .param p11, "x10"    # Lc8/Rdb;
    .param p12, "x11"    # Lc8/Heb;

    .prologue
    .line 21
    invoke-direct/range {p0 .. p11}, Lc8/Jeb;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/GradientType;Lc8/Vdb;Lc8/Zdb;Lc8/eeb;Lc8/eeb;Lc8/Rdb;Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;Ljava/util/List;Lc8/Rdb;)V

    return-void
.end method


# virtual methods
.method public getCapType()Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lc8/Jeb;->capType:Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    return-object v0
.end method

.method public getDashOffset()Lc8/Rdb;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lc8/Jeb;->dashOffset:Lc8/Rdb;

    return-object v0
.end method

.method public getEndPoint()Lc8/eeb;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lc8/Jeb;->endPoint:Lc8/eeb;

    return-object v0
.end method

.method public getGradientColor()Lc8/Vdb;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lc8/Jeb;->gradientColor:Lc8/Vdb;

    return-object v0
.end method

.method public getGradientType()Lcom/airbnb/lottie/model/content/GradientType;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lc8/Jeb;->gradientType:Lcom/airbnb/lottie/model/content/GradientType;

    return-object v0
.end method

.method public getJoinType()Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lc8/Jeb;->joinType:Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    return-object v0
.end method

.method public getLineDashPattern()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lc8/Rdb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lc8/Jeb;->lineDashPattern:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lc8/Jeb;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOpacity()Lc8/Zdb;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lc8/Jeb;->opacity:Lc8/Zdb;

    return-object v0
.end method

.method public getStartPoint()Lc8/eeb;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lc8/Jeb;->startPoint:Lc8/eeb;

    return-object v0
.end method

.method public getWidth()Lc8/Rdb;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lc8/Jeb;->width:Lc8/Rdb;

    return-object v0
.end method

.method public toContent(Lc8/tcb;Lc8/rfb;)Lc8/Icb;
    .locals 1
    .param p1, "drawable"    # Lc8/tcb;
    .param p2, "layer"    # Lc8/rfb;

    .prologue
    .line 99
    new-instance v0, Lc8/Ocb;

    invoke-direct {v0, p1, p2, p0}, Lc8/Ocb;-><init>(Lc8/tcb;Lc8/rfb;Lc8/Jeb;)V

    return-object v0
.end method
