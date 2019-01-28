.class public Lc8/Veb;
.super Ljava/lang/Object;
.source "RectangleShape.java"

# interfaces
.implements Lc8/Ceb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Ueb;
    }
.end annotation


# instance fields
.field private final cornerRadius:Lc8/Rdb;

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
.method private constructor <init>(Ljava/lang/String;Lc8/veb;Lc8/eeb;Lc8/Rdb;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "size"    # Lc8/eeb;
    .param p4, "cornerRadius"    # Lc8/Rdb;
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
            "Lc8/Rdb;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    .local p2, "position":Lc8/veb;, "Lcom/airbnb/lottie/model/animatable/AnimatableValue<Landroid/graphics/PointF;Landroid/graphics/PointF;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lc8/Veb;->name:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lc8/Veb;->position:Lc8/veb;

    .line 27
    iput-object p3, p0, Lc8/Veb;->size:Lc8/eeb;

    .line 28
    iput-object p4, p0, Lc8/Veb;->cornerRadius:Lc8/Rdb;

    .line 29
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lc8/veb;Lc8/eeb;Lc8/Rdb;Lc8/Teb;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lc8/veb;
    .param p3, "x2"    # Lc8/eeb;
    .param p4, "x3"    # Lc8/Rdb;
    .param p5, "x4"    # Lc8/Teb;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3, p4}, Lc8/Veb;-><init>(Ljava/lang/String;Lc8/veb;Lc8/eeb;Lc8/Rdb;)V

    return-void
.end method


# virtual methods
.method public getCornerRadius()Lc8/Rdb;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lc8/Veb;->cornerRadius:Lc8/Rdb;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lc8/Veb;->name:Ljava/lang/String;

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
    .line 58
    iget-object v0, p0, Lc8/Veb;->position:Lc8/veb;

    return-object v0
.end method

.method public getSize()Lc8/eeb;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lc8/Veb;->size:Lc8/eeb;

    return-object v0
.end method

.method public toContent(Lc8/tcb;Lc8/rfb;)Lc8/Icb;
    .locals 1
    .param p1, "drawable"    # Lc8/tcb;
    .param p2, "layer"    # Lc8/rfb;

    .prologue
    .line 62
    new-instance v0, Lc8/Wcb;

    invoke-direct {v0, p1, p2, p0}, Lc8/Wcb;-><init>(Lc8/tcb;Lc8/rfb;Lc8/Veb;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "RectangleShape{cornerRadius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/Veb;->cornerRadius:Lc8/Rdb;

    invoke-virtual {v1}, Lc8/Rdb;->getInitialValue()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/Veb;->position:Lc8/veb;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/Veb;->size:Lc8/eeb;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
