.class public Lc8/ifb;
.super Ljava/lang/Object;
.source "ShapePath.java"

# interfaces
.implements Lc8/Ceb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/hfb;
    }
.end annotation


# instance fields
.field private final index:I

.field private final name:Ljava/lang/String;

.field private final shapePath:Lc8/keb;


# direct methods
.method private constructor <init>(Ljava/lang/String;ILc8/keb;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "shapePath"    # Lc8/keb;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lc8/ifb;->name:Ljava/lang/String;

    .line 19
    iput p2, p0, Lc8/ifb;->index:I

    .line 20
    iput-object p3, p0, Lc8/ifb;->shapePath:Lc8/keb;

    .line 21
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILc8/keb;Lc8/gfb;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lc8/keb;
    .param p4, "x3"    # Lc8/gfb;

    .prologue
    .line 12
    invoke-direct {p0, p1, p2, p3}, Lc8/ifb;-><init>(Ljava/lang/String;ILc8/keb;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lc8/ifb;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getShapePath()Lc8/keb;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lc8/ifb;->shapePath:Lc8/keb;

    return-object v0
.end method

.method public toContent(Lc8/tcb;Lc8/rfb;)Lc8/Icb;
    .locals 1
    .param p1, "drawable"    # Lc8/tcb;
    .param p2, "layer"    # Lc8/rfb;

    .prologue
    .line 32
    new-instance v0, Lc8/Ycb;

    invoke-direct {v0, p1, p2, p0}, Lc8/Ycb;-><init>(Lc8/tcb;Lc8/rfb;Lc8/ifb;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ShapePath{name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/ifb;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc8/ifb;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", hasAnimation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/ifb;->shapePath:Lc8/keb;

    .line 38
    invoke-virtual {v1}, Lc8/keb;->hasAnimation()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 36
    return-object v0
.end method
