.class public Lc8/lfb;
.super Ljava/lang/Object;
.source "ShapeStroke.java"

# interfaces
.implements Lc8/Ceb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/kfb;,
        Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;,
        Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;
    }
.end annotation


# instance fields
.field private final capType:Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

.field private final color:Lc8/Ndb;

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

.field private final offset:Lc8/Rdb;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final opacity:Lc8/Zdb;

.field private final width:Lc8/Rdb;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lc8/Rdb;Ljava/util/List;Lc8/Ndb;Lc8/Zdb;Lc8/Rdb;Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "offset"    # Lc8/Rdb;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "color"    # Lc8/Ndb;
    .param p5, "opacity"    # Lc8/Zdb;
    .param p6, "width"    # Lc8/Rdb;
    .param p7, "capType"    # Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;
    .param p8, "joinType"    # Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lc8/Rdb;",
            "Ljava/util/List",
            "<",
            "Lc8/Rdb;",
            ">;",
            "Lc8/Ndb;",
            "Lc8/Zdb;",
            "Lc8/Rdb;",
            "Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;",
            "Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 70
    .local p3, "lineDashPattern":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lc8/lfb;->name:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lc8/lfb;->offset:Lc8/Rdb;

    .line 73
    iput-object p3, p0, Lc8/lfb;->lineDashPattern:Ljava/util/List;

    .line 74
    iput-object p4, p0, Lc8/lfb;->color:Lc8/Ndb;

    .line 75
    iput-object p5, p0, Lc8/lfb;->opacity:Lc8/Zdb;

    .line 76
    iput-object p6, p0, Lc8/lfb;->width:Lc8/Rdb;

    .line 77
    iput-object p7, p0, Lc8/lfb;->capType:Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    .line 78
    iput-object p8, p0, Lc8/lfb;->joinType:Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    .line 79
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lc8/Rdb;Ljava/util/List;Lc8/Ndb;Lc8/Zdb;Lc8/Rdb;Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;Lc8/jfb;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lc8/Rdb;
    .param p3, "x2"    # Ljava/util/List;
    .param p4, "x3"    # Lc8/Ndb;
    .param p5, "x4"    # Lc8/Zdb;
    .param p6, "x5"    # Lc8/Rdb;
    .param p7, "x6"    # Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;
    .param p8, "x7"    # Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;
    .param p9, "x8"    # Lc8/jfb;

    .prologue
    .line 21
    invoke-direct/range {p0 .. p8}, Lc8/lfb;-><init>(Ljava/lang/String;Lc8/Rdb;Ljava/util/List;Lc8/Ndb;Lc8/Zdb;Lc8/Rdb;Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;)V

    return-void
.end method


# virtual methods
.method public getCapType()Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lc8/lfb;->capType:Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    return-object v0
.end method

.method public getColor()Lc8/Ndb;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lc8/lfb;->color:Lc8/Ndb;

    return-object v0
.end method

.method public getDashOffset()Lc8/Rdb;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lc8/lfb;->offset:Lc8/Rdb;

    return-object v0
.end method

.method public getJoinType()Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lc8/lfb;->joinType:Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

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
    .line 142
    iget-object v0, p0, Lc8/lfb;->lineDashPattern:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lc8/lfb;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOpacity()Lc8/Zdb;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lc8/lfb;->opacity:Lc8/Zdb;

    return-object v0
.end method

.method public getWidth()Lc8/Rdb;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lc8/lfb;->width:Lc8/Rdb;

    return-object v0
.end method

.method public toContent(Lc8/tcb;Lc8/rfb;)Lc8/Icb;
    .locals 1
    .param p1, "drawable"    # Lc8/tcb;
    .param p2, "layer"    # Lc8/rfb;

    .prologue
    .line 82
    new-instance v0, Lc8/Zcb;

    invoke-direct {v0, p1, p2, p0}, Lc8/Zcb;-><init>(Lc8/tcb;Lc8/rfb;Lc8/lfb;)V

    return-object v0
.end method
