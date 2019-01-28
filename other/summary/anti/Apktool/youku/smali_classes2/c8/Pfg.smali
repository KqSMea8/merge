.class public Lc8/Pfg;
.super Ljava/lang/Object;
.source "BoxShadowUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Sfg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BoxShadowOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Ofg;
    }
.end annotation


# instance fields
.field public blur:F

.field public color:I

.field public hShadow:F

.field public isClear:Z

.field public isInset:Z

.field private optionParamParsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/Ofg;",
            ">;"
        }
    .end annotation
.end field

.field public radii:[F

.field public spread:F

.field public vShadow:F

.field public viewHeight:I

.field public viewWidth:I

.field private viewport:I


# direct methods
.method private constructor <init>(I)V
    .locals 5
    .param p1, "vp"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 470
    const/16 v2, 0x2ee

    iput v2, p0, Lc8/Pfg;->viewport:I

    .line 474
    iput v4, p0, Lc8/Pfg;->blur:F

    .line 475
    iput v4, p0, Lc8/Pfg;->spread:F

    .line 476
    const/16 v2, 0x8

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    iput-object v2, p0, Lc8/Pfg;->radii:[F

    .line 477
    const/high16 v2, -0x1000000

    iput v2, p0, Lc8/Pfg;->color:I

    .line 478
    iput-boolean v3, p0, Lc8/Pfg;->isInset:Z

    .line 480
    iput-boolean v3, p0, Lc8/Pfg;->isClear:Z

    .line 481
    iput v3, p0, Lc8/Pfg;->viewWidth:I

    .line 482
    iput v3, p0, Lc8/Pfg;->viewHeight:I

    .line 485
    iget v2, p0, Lc8/Pfg;->viewport:I

    if-eqz v2, :cond_0

    .line 486
    iput p1, p0, Lc8/Pfg;->viewport:I

    .line 488
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lc8/Pfg;->optionParamParsers:Ljava/util/List;

    .line 490
    new-instance v1, Lc8/Mfg;

    invoke-direct {v1, p0}, Lc8/Mfg;-><init>(Lc8/Pfg;)V

    .line 501
    .local v1, "spreadParser":Lc8/Ofg;
    new-instance v0, Lc8/Nfg;

    invoke-direct {v0, p0}, Lc8/Nfg;-><init>(Lc8/Pfg;)V

    .line 511
    .local v0, "blurParser":Lc8/Ofg;
    iget-object v2, p0, Lc8/Pfg;->optionParamParsers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 512
    iget-object v2, p0, Lc8/Pfg;->optionParamParsers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 513
    return-void

    .line 476
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method synthetic constructor <init>(ILc8/Lfg;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Lc8/Lfg;

    .prologue
    .line 468
    invoke-direct {p0, p1}, Lc8/Pfg;-><init>(I)V

    return-void
.end method

.method static synthetic access$500(Lc8/Pfg;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lc8/Pfg;

    .prologue
    .line 468
    iget-object v0, p0, Lc8/Pfg;->optionParamParsers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lc8/Pfg;)I
    .locals 1
    .param p0, "x0"    # Lc8/Pfg;

    .prologue
    .line 468
    iget v0, p0, Lc8/Pfg;->viewport:I

    return v0
.end method


# virtual methods
.method public scale(F)Lc8/Pfg;
    .locals 5
    .param p1, "scale"    # F

    .prologue
    .line 516
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_1

    .line 517
    new-instance v1, Lc8/Pfg;

    iget v2, p0, Lc8/Pfg;->viewport:I

    invoke-direct {v1, v2}, Lc8/Pfg;-><init>(I)V

    .line 518
    .local v1, "scaledOptions":Lc8/Pfg;
    iget v2, p0, Lc8/Pfg;->hShadow:F

    mul-float/2addr v2, p1

    iput v2, v1, Lc8/Pfg;->hShadow:F

    .line 519
    iget v2, p0, Lc8/Pfg;->vShadow:F

    mul-float/2addr v2, p1

    iput v2, v1, Lc8/Pfg;->vShadow:F

    .line 520
    iget v2, p0, Lc8/Pfg;->blur:F

    mul-float/2addr v2, p1

    iput v2, v1, Lc8/Pfg;->blur:F

    .line 521
    iget v2, p0, Lc8/Pfg;->spread:F

    mul-float/2addr v2, p1

    iput v2, v1, Lc8/Pfg;->spread:F

    .line 522
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lc8/Pfg;->radii:[F

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 523
    iget-object v2, v1, Lc8/Pfg;->radii:[F

    iget-object v3, p0, Lc8/Pfg;->radii:[F

    aget v3, v3, v0

    mul-float/2addr v3, p1

    aput v3, v2, v0

    .line 522
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 525
    :cond_0
    iget v2, p0, Lc8/Pfg;->viewHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    iput v2, v1, Lc8/Pfg;->viewHeight:I

    .line 526
    iget v2, p0, Lc8/Pfg;->viewWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    iput v2, v1, Lc8/Pfg;->viewWidth:I

    .line 528
    iget v2, p0, Lc8/Pfg;->color:I

    iput v2, v1, Lc8/Pfg;->color:I

    .line 529
    iget-boolean v2, p0, Lc8/Pfg;->isInset:Z

    iput-boolean v2, v1, Lc8/Pfg;->isInset:Z

    .line 530
    iget-boolean v2, p0, Lc8/Pfg;->isClear:Z

    iput-boolean v2, v1, Lc8/Pfg;->isClear:Z

    .line 531
    const-string/jumbo v2, "BoxShadowUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Scaled BoxShadowOptions: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    .end local v0    # "i":I
    .end local v1    # "scaledOptions":Lc8/Pfg;
    :goto_1
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 540
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/Pfg;->radii:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/Pfg;->radii:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/Pfg;->radii:[F

    const/4 v4, 0x4

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/Pfg;->radii:[F

    const/4 v4, 0x6

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 542
    .local v0, "r":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    const-string/jumbo v2, "BoxShadowOptions{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 543
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v2, "h-shadow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lc8/Pfg;->hShadow:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 544
    const-string/jumbo v2, ", v-shadow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lc8/Pfg;->vShadow:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 545
    const-string/jumbo v2, ", blur="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lc8/Pfg;->blur:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 546
    const-string/jumbo v2, ", spread="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lc8/Pfg;->spread:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 547
    const-string/jumbo v2, ", corner-radius="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 548
    const-string/jumbo v2, ", color=#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lc8/Pfg;->color:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 549
    const-string/jumbo v2, ", inset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-boolean v3, p0, Lc8/Pfg;->isInset:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 550
    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 551
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
