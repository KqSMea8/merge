.class public Lc8/dfb;
.super Ljava/lang/Object;
.source "ShapeFill.java"

# interfaces
.implements Lc8/Ceb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/cfb;
    }
.end annotation


# instance fields
.field private final color:Lc8/Ndb;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final fillEnabled:Z

.field private final fillType:Landroid/graphics/Path$FillType;

.field private final name:Ljava/lang/String;

.field private final opacity:Lc8/Zdb;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Lc8/Ndb;Lc8/Zdb;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fillEnabled"    # Z
    .param p3, "fillType"    # Landroid/graphics/Path$FillType;
    .param p4, "color"    # Lc8/Ndb;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "opacity"    # Lc8/Zdb;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lc8/dfb;->name:Ljava/lang/String;

    .line 26
    iput-boolean p2, p0, Lc8/dfb;->fillEnabled:Z

    .line 27
    iput-object p3, p0, Lc8/dfb;->fillType:Landroid/graphics/Path$FillType;

    .line 28
    iput-object p4, p0, Lc8/dfb;->color:Lc8/Ndb;

    .line 29
    iput-object p5, p0, Lc8/dfb;->opacity:Lc8/Zdb;

    .line 30
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Lc8/Ndb;Lc8/Zdb;Lc8/bfb;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Landroid/graphics/Path$FillType;
    .param p4, "x3"    # Lc8/Ndb;
    .param p5, "x4"    # Lc8/Zdb;
    .param p6, "x5"    # Lc8/bfb;

    .prologue
    .line 16
    invoke-direct/range {p0 .. p5}, Lc8/dfb;-><init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Lc8/Ndb;Lc8/Zdb;)V

    return-void
.end method


# virtual methods
.method public getColor()Lc8/Ndb;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lc8/dfb;->color:Lc8/Ndb;

    return-object v0
.end method

.method public getFillType()Landroid/graphics/Path$FillType;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lc8/dfb;->fillType:Landroid/graphics/Path$FillType;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lc8/dfb;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOpacity()Lc8/Zdb;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lc8/dfb;->opacity:Lc8/Zdb;

    return-object v0
.end method

.method public toContent(Lc8/tcb;Lc8/rfb;)Lc8/Icb;
    .locals 1
    .param p1, "drawable"    # Lc8/tcb;
    .param p2, "layer"    # Lc8/rfb;

    .prologue
    .line 77
    new-instance v0, Lc8/Mcb;

    invoke-direct {v0, p1, p2, p0}, Lc8/Mcb;-><init>(Lc8/tcb;Lc8/rfb;Lc8/dfb;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ShapeFill{color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lc8/dfb;->color:Lc8/Ndb;

    if-nez v0, :cond_0

    const-string/jumbo v0, "null"

    .line 83
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", fillEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lc8/dfb;->fillEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", opacity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lc8/dfb;->opacity:Lc8/Zdb;

    if-nez v0, :cond_1

    const-string/jumbo v0, "null"

    .line 85
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    return-object v0

    :cond_0
    iget-object v0, p0, Lc8/dfb;->color:Lc8/Ndb;

    .line 83
    invoke-virtual {v0}, Lc8/Ndb;->getInitialValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lc8/dfb;->opacity:Lc8/Zdb;

    .line 85
    invoke-virtual {v0}, Lc8/Zdb;->getInitialValue()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1
.end method
