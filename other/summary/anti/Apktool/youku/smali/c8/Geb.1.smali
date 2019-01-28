.class public Lc8/Geb;
.super Ljava/lang/Object;
.source "GradientFill.java"

# interfaces
.implements Lc8/Ceb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Feb;
    }
.end annotation


# instance fields
.field private final endPoint:Lc8/eeb;

.field private final fillType:Landroid/graphics/Path$FillType;

.field private final gradientColor:Lc8/Vdb;

.field private final gradientType:Lcom/airbnb/lottie/model/content/GradientType;

.field private final highlightAngle:Lc8/Rdb;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final highlightLength:Lc8/Rdb;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final opacity:Lc8/Zdb;

.field private final startPoint:Lc8/eeb;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/GradientType;Landroid/graphics/Path$FillType;Lc8/Vdb;Lc8/Zdb;Lc8/eeb;Lc8/eeb;Lc8/Rdb;Lc8/Rdb;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "gradientType"    # Lcom/airbnb/lottie/model/content/GradientType;
    .param p3, "fillType"    # Landroid/graphics/Path$FillType;
    .param p4, "gradientColor"    # Lc8/Vdb;
    .param p5, "opacity"    # Lc8/Zdb;
    .param p6, "startPoint"    # Lc8/eeb;
    .param p7, "endPoint"    # Lc8/eeb;
    .param p8, "highlightLength"    # Lc8/Rdb;
    .param p9, "highlightAngle"    # Lc8/Rdb;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p2, p0, Lc8/Geb;->gradientType:Lcom/airbnb/lottie/model/content/GradientType;

    .line 37
    iput-object p3, p0, Lc8/Geb;->fillType:Landroid/graphics/Path$FillType;

    .line 38
    iput-object p4, p0, Lc8/Geb;->gradientColor:Lc8/Vdb;

    .line 39
    iput-object p5, p0, Lc8/Geb;->opacity:Lc8/Zdb;

    .line 40
    iput-object p6, p0, Lc8/Geb;->startPoint:Lc8/eeb;

    .line 41
    iput-object p7, p0, Lc8/Geb;->endPoint:Lc8/eeb;

    .line 42
    iput-object p1, p0, Lc8/Geb;->name:Ljava/lang/String;

    .line 43
    iput-object p8, p0, Lc8/Geb;->highlightLength:Lc8/Rdb;

    .line 44
    iput-object p9, p0, Lc8/Geb;->highlightAngle:Lc8/Rdb;

    .line 45
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/GradientType;Landroid/graphics/Path$FillType;Lc8/Vdb;Lc8/Zdb;Lc8/eeb;Lc8/eeb;Lc8/Rdb;Lc8/Rdb;Lc8/Eeb;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/airbnb/lottie/model/content/GradientType;
    .param p3, "x2"    # Landroid/graphics/Path$FillType;
    .param p4, "x3"    # Lc8/Vdb;
    .param p5, "x4"    # Lc8/Zdb;
    .param p6, "x5"    # Lc8/eeb;
    .param p7, "x6"    # Lc8/eeb;
    .param p8, "x7"    # Lc8/Rdb;
    .param p9, "x8"    # Lc8/Rdb;
    .param p10, "x9"    # Lc8/Eeb;

    .prologue
    .line 19
    invoke-direct/range {p0 .. p9}, Lc8/Geb;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/GradientType;Landroid/graphics/Path$FillType;Lc8/Vdb;Lc8/Zdb;Lc8/eeb;Lc8/eeb;Lc8/Rdb;Lc8/Rdb;)V

    return-void
.end method


# virtual methods
.method public getEndPoint()Lc8/eeb;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lc8/Geb;->endPoint:Lc8/eeb;

    return-object v0
.end method

.method public getFillType()Landroid/graphics/Path$FillType;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lc8/Geb;->fillType:Landroid/graphics/Path$FillType;

    return-object v0
.end method

.method public getGradientColor()Lc8/Vdb;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lc8/Geb;->gradientColor:Lc8/Vdb;

    return-object v0
.end method

.method public getGradientType()Lcom/airbnb/lottie/model/content/GradientType;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lc8/Geb;->gradientType:Lcom/airbnb/lottie/model/content/GradientType;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lc8/Geb;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOpacity()Lc8/Zdb;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lc8/Geb;->opacity:Lc8/Zdb;

    return-object v0
.end method

.method public getStartPoint()Lc8/eeb;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lc8/Geb;->startPoint:Lc8/eeb;

    return-object v0
.end method

.method public toContent(Lc8/tcb;Lc8/rfb;)Lc8/Icb;
    .locals 1
    .param p1, "drawable"    # Lc8/tcb;
    .param p2, "layer"    # Lc8/rfb;

    .prologue
    .line 84
    new-instance v0, Lc8/Ncb;

    invoke-direct {v0, p1, p2, p0}, Lc8/Ncb;-><init>(Lc8/tcb;Lc8/rfb;Lc8/Geb;)V

    return-object v0
.end method
