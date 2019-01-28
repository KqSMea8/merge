.class public Lc8/Pf;
.super Ljava/lang/Object;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Tf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VPath"
.end annotation


# instance fields
.field mChangingConfigurations:I

.field protected mNodes:[Lc8/If;

.field mPathName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1543
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Pf;->mNodes:[Lc8/If;

    .line 1549
    return-void
.end method

.method public constructor <init>(Lc8/Pf;)V
    .locals 1
    .param p1, "copy"    # Lc8/Pf;

    .prologue
    .line 1573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1543
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Pf;->mNodes:[Lc8/If;

    .line 1574
    iget-object v0, p1, Lc8/Pf;->mPathName:Ljava/lang/String;

    iput-object v0, p0, Lc8/Pf;->mPathName:Ljava/lang/String;

    .line 1575
    iget v0, p1, Lc8/Pf;->mChangingConfigurations:I

    iput v0, p0, Lc8/Pf;->mChangingConfigurations:I

    .line 1576
    iget-object v0, p1, Lc8/Pf;->mNodes:[Lc8/If;

    invoke-static {v0}, Lc8/Jf;->deepCopyNodes([Lc8/If;)[Lc8/If;

    move-result-object v0

    iput-object v0, p0, Lc8/Pf;->mNodes:[Lc8/If;

    .line 1577
    return-void
.end method


# virtual methods
.method public NodesToString([Lc8/If;)Ljava/lang/String;
    .locals 6
    .param p1, "nodes"    # [Lc8/If;

    .prologue
    .line 1562
    const-string/jumbo v3, " "

    .line 1563
    .local v3, "result":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_1

    .line 1564
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p1, v0

    iget-char v5, v5, Lc8/If;->type:C

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1565
    aget-object v4, p1, v0

    iget-object v2, v4, Lc8/If;->params:[F

    .line 1566
    .local v2, "params":[F
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 1567
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v2, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1566
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1563
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1570
    .end local v1    # "j":I
    .end local v2    # "params":[F
    :cond_1
    return-object v3
.end method

.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 0
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 1595
    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    .prologue
    .line 1591
    const/4 v0, 0x0

    return v0
.end method

.method public getPathData()[Lc8/If;
    .locals 1

    .prologue
    .line 1604
    iget-object v0, p0, Lc8/Pf;->mNodes:[Lc8/If;

    return-object v0
.end method

.method public getPathName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1587
    iget-object v0, p0, Lc8/Pf;->mPathName:Ljava/lang/String;

    return-object v0
.end method

.method public isClipPath()Z
    .locals 1

    .prologue
    .line 1598
    const/4 v0, 0x0

    return v0
.end method

.method public printVPath(I)V
    .locals 4
    .param p1, "level"    # I

    .prologue
    .line 1552
    const-string/jumbo v1, ""

    .line 1553
    .local v1, "indent":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 1554
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1553
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1556
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "current path is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/Pf;->mPathName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " pathData is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/Pf;->mNodes:[Lc8/If;

    .line 1557
    invoke-virtual {p0, v3}, Lc8/Pf;->NodesToString([Lc8/If;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1559
    return-void
.end method

.method public setPathData([Lc8/If;)V
    .locals 1
    .param p1, "nodes"    # [Lc8/If;

    .prologue
    .line 1609
    iget-object v0, p0, Lc8/Pf;->mNodes:[Lc8/If;

    invoke-static {v0, p1}, Lc8/Jf;->canMorph([Lc8/If;[Lc8/If;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1611
    invoke-static {p1}, Lc8/Jf;->deepCopyNodes([Lc8/If;)[Lc8/If;

    move-result-object v0

    iput-object v0, p0, Lc8/Pf;->mNodes:[Lc8/If;

    .line 1615
    :goto_0
    return-void

    .line 1613
    :cond_0
    iget-object v0, p0, Lc8/Pf;->mNodes:[Lc8/If;

    invoke-static {v0, p1}, Lc8/Jf;->updateNodes([Lc8/If;[Lc8/If;)V

    goto :goto_0
.end method

.method public toPath(Landroid/graphics/Path;)V
    .locals 1
    .param p1, "path"    # Landroid/graphics/Path;

    .prologue
    .line 1580
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 1581
    iget-object v0, p0, Lc8/Pf;->mNodes:[Lc8/If;

    if-eqz v0, :cond_0

    .line 1582
    iget-object v0, p0, Lc8/Pf;->mNodes:[Lc8/If;

    invoke-static {v0, p1}, Lc8/If;->nodesToPath([Lc8/If;Landroid/graphics/Path;)V

    .line 1584
    :cond_0
    return-void
.end method
