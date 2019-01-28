.class public Lc8/bb;
.super Ljava/lang/Object;
.source "LinearSystem.java"


# static fields
.field private static final DEBUG:Z

.field private static POOL_SIZE:I


# instance fields
.field private TABLE_SIZE:I

.field private mAlreadyTestedCandidates:[Z

.field final mCache:Lc8/Z;

.field private mGoal:Lc8/ab;

.field private mMaxColumns:I

.field private mMaxRows:I

.field mNumColumns:I

.field private mNumRows:I

.field private mPoolVariables:[Lc8/gb;

.field private mPoolVariablesCount:I

.field private mRows:[Lc8/Y;

.field private mVariables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lc8/gb;",
            ">;"
        }
    .end annotation
.end field

.field mVariablesID:I

.field private tempClientsCopy:[Lc8/Y;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/16 v0, 0x3e8

    sput v0, Lc8/bb;->POOL_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v1, p0, Lc8/bb;->mVariablesID:I

    .line 44
    iput-object v2, p0, Lc8/bb;->mVariables:Ljava/util/HashMap;

    .line 49
    new-instance v0, Lc8/ab;

    invoke-direct {v0}, Lc8/ab;-><init>()V

    iput-object v0, p0, Lc8/bb;->mGoal:Lc8/ab;

    .line 51
    const/16 v0, 0x20

    iput v0, p0, Lc8/bb;->TABLE_SIZE:I

    .line 52
    iget v0, p0, Lc8/bb;->TABLE_SIZE:I

    iput v0, p0, Lc8/bb;->mMaxColumns:I

    .line 53
    iput-object v2, p0, Lc8/bb;->mRows:[Lc8/Y;

    .line 56
    iget v0, p0, Lc8/bb;->TABLE_SIZE:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lc8/bb;->mAlreadyTestedCandidates:[Z

    .line 58
    const/4 v0, 0x1

    iput v0, p0, Lc8/bb;->mNumColumns:I

    .line 59
    iput v1, p0, Lc8/bb;->mNumRows:I

    .line 60
    iget v0, p0, Lc8/bb;->TABLE_SIZE:I

    iput v0, p0, Lc8/bb;->mMaxRows:I

    .line 64
    sget v0, Lc8/bb;->POOL_SIZE:I

    new-array v0, v0, [Lc8/gb;

    iput-object v0, p0, Lc8/bb;->mPoolVariables:[Lc8/gb;

    .line 65
    iput v1, p0, Lc8/bb;->mPoolVariablesCount:I

    .line 67
    iget v0, p0, Lc8/bb;->TABLE_SIZE:I

    new-array v0, v0, [Lc8/Y;

    iput-object v0, p0, Lc8/bb;->tempClientsCopy:[Lc8/Y;

    .line 70
    iget v0, p0, Lc8/bb;->TABLE_SIZE:I

    new-array v0, v0, [Lc8/Y;

    iput-object v0, p0, Lc8/bb;->mRows:[Lc8/Y;

    .line 71
    invoke-direct {p0}, Lc8/bb;->releaseRows()V

    .line 72
    new-instance v0, Lc8/Z;

    invoke-direct {v0}, Lc8/Z;-><init>()V

    iput-object v0, p0, Lc8/bb;->mCache:Lc8/Z;

    .line 73
    return-void
.end method

.method private acquireSolverVariable(Landroid/support/constraint/solver/SolverVariable$Type;)Lc8/gb;
    .locals 4
    .param p1, "type"    # Landroid/support/constraint/solver/SolverVariable$Type;

    .prologue
    .line 235
    iget-object v1, p0, Lc8/bb;->mCache:Lc8/Z;

    iget-object v1, v1, Lc8/Z;->solverVariablePool:Lc8/cb;

    invoke-interface {v1}, Lc8/cb;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/gb;

    .line 236
    .local v0, "variable":Lc8/gb;
    if-nez v0, :cond_1

    .line 237
    new-instance v0, Lc8/gb;

    .end local v0    # "variable":Lc8/gb;
    invoke-direct {v0, p1}, Lc8/gb;-><init>(Landroid/support/constraint/solver/SolverVariable$Type;)V

    .line 242
    .restart local v0    # "variable":Lc8/gb;
    :goto_0
    iget v1, p0, Lc8/bb;->mPoolVariablesCount:I

    sget v2, Lc8/bb;->POOL_SIZE:I

    if-lt v1, v2, :cond_0

    .line 243
    sget v1, Lc8/bb;->POOL_SIZE:I

    shl-int/lit8 v1, v1, 0x1

    sput v1, Lc8/bb;->POOL_SIZE:I

    .line 244
    iget-object v1, p0, Lc8/bb;->mPoolVariables:[Lc8/gb;

    sget v2, Lc8/bb;->POOL_SIZE:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lc8/gb;

    iput-object v1, p0, Lc8/bb;->mPoolVariables:[Lc8/gb;

    .line 246
    :cond_0
    iget-object v1, p0, Lc8/bb;->mPoolVariables:[Lc8/gb;

    iget v2, p0, Lc8/bb;->mPoolVariablesCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lc8/bb;->mPoolVariablesCount:I

    aput-object v0, v1, v2

    .line 247
    return-object v0

    .line 239
    :cond_1
    invoke-virtual {v0}, Lc8/gb;->reset()V

    .line 240
    invoke-virtual {v0, p1}, Lc8/gb;->setType(Landroid/support/constraint/solver/SolverVariable$Type;)V

    goto :goto_0
.end method

.method private addError(Lc8/Y;)V
    .locals 2
    .param p1, "row"    # Lc8/Y;

    .prologue
    .line 189
    invoke-virtual {p0}, Lc8/bb;->createErrorVariable()Lc8/gb;

    move-result-object v0

    .line 190
    .local v0, "error1":Lc8/gb;
    invoke-virtual {p0}, Lc8/bb;->createErrorVariable()Lc8/gb;

    move-result-object v1

    .line 192
    .local v1, "error2":Lc8/gb;
    invoke-virtual {p1, v0, v1}, Lc8/Y;->addError(Lc8/gb;Lc8/gb;)Lc8/Y;

    .line 193
    return-void
.end method

.method private addSingleError(Lc8/Y;I)V
    .locals 1
    .param p1, "row"    # Lc8/Y;
    .param p2, "sign"    # I

    .prologue
    .line 196
    invoke-virtual {p0}, Lc8/bb;->createErrorVariable()Lc8/gb;

    move-result-object v0

    .line 197
    .local v0, "error":Lc8/gb;
    invoke-virtual {p1, v0, p2}, Lc8/Y;->addSingleError(Lc8/gb;I)Lc8/Y;

    .line 198
    return-void
.end method

.method private computeValues()V
    .locals 4

    .prologue
    .line 680
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lc8/bb;->mNumRows:I

    if-ge v0, v2, :cond_0

    .line 681
    iget-object v2, p0, Lc8/bb;->mRows:[Lc8/Y;

    aget-object v1, v2, v0

    .line 682
    .local v1, "row":Lc8/Y;
    iget-object v2, v1, Lc8/Y;->variable:Lc8/gb;

    iget v3, v1, Lc8/Y;->constantValue:F

    iput v3, v2, Lc8/gb;->computedValue:F

    .line 680
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 684
    .end local v1    # "row":Lc8/Y;
    :cond_0
    return-void
.end method

.method public static createRowCentering(Lc8/bb;Lc8/gb;Lc8/gb;IFLc8/gb;Lc8/gb;IZ)Lc8/Y;
    .locals 10
    .param p0, "linearSystem"    # Lc8/bb;
    .param p1, "variableA"    # Lc8/gb;
    .param p2, "variableB"    # Lc8/gb;
    .param p3, "marginA"    # I
    .param p4, "bias"    # F
    .param p5, "variableC"    # Lc8/gb;
    .param p6, "variableD"    # Lc8/gb;
    .param p7, "marginB"    # I
    .param p8, "withError"    # Z

    .prologue
    .line 1015
    invoke-virtual {p0}, Lc8/bb;->createRow()Lc8/Y;

    move-result-object v0

    .local v0, "row":Lc8/Y;
    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    .line 1016
    invoke-virtual/range {v0 .. v7}, Lc8/Y;->createRowCentering(Lc8/gb;Lc8/gb;IFLc8/gb;Lc8/gb;I)Lc8/Y;

    .line 1018
    if-eqz p8, :cond_0

    .line 1019
    invoke-virtual {p0}, Lc8/bb;->createErrorVariable()Lc8/gb;

    move-result-object v8

    .line 1020
    .local v8, "error1":Lc8/gb;
    invoke-virtual {p0}, Lc8/bb;->createErrorVariable()Lc8/gb;

    move-result-object v9

    .line 1021
    .local v9, "error2":Lc8/gb;
    const/4 v1, 0x4

    iput v1, v8, Lc8/gb;->strength:I

    .line 1022
    const/4 v1, 0x4

    iput v1, v9, Lc8/gb;->strength:I

    .line 1023
    invoke-virtual {v0, v8, v9}, Lc8/Y;->addError(Lc8/gb;Lc8/gb;)Lc8/Y;

    .line 1037
    .end local v8    # "error1":Lc8/gb;
    .end local v9    # "error2":Lc8/gb;
    :cond_0
    return-object v0
.end method

.method public static createRowDimensionPercent(Lc8/bb;Lc8/gb;Lc8/gb;Lc8/gb;FZ)Lc8/Y;
    .locals 2
    .param p0, "linearSystem"    # Lc8/bb;
    .param p1, "variableA"    # Lc8/gb;
    .param p2, "variableB"    # Lc8/gb;
    .param p3, "variableC"    # Lc8/gb;
    .param p4, "percent"    # F
    .param p5, "withError"    # Z

    .prologue
    .line 948
    invoke-virtual {p0}, Lc8/bb;->createRow()Lc8/Y;

    move-result-object v0

    .line 949
    .local v0, "row":Lc8/Y;
    if-eqz p5, :cond_0

    .line 950
    invoke-direct {p0, v0}, Lc8/bb;->addError(Lc8/Y;)V

    .line 952
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lc8/Y;->createRowDimensionPercent(Lc8/gb;Lc8/gb;Lc8/gb;F)Lc8/Y;

    move-result-object v1

    return-object v1
.end method

.method public static createRowEquals(Lc8/bb;Lc8/gb;Lc8/gb;IZ)Lc8/Y;
    .locals 2
    .param p0, "linearSystem"    # Lc8/bb;
    .param p1, "variableA"    # Lc8/gb;
    .param p2, "variableB"    # Lc8/gb;
    .param p3, "margin"    # I
    .param p4, "withError"    # Z

    .prologue
    .line 919
    invoke-virtual {p0}, Lc8/bb;->createRow()Lc8/Y;

    move-result-object v0

    .line 920
    .local v0, "row":Lc8/Y;
    invoke-virtual {v0, p1, p2, p3}, Lc8/Y;->createRowEquals(Lc8/gb;Lc8/gb;I)Lc8/Y;

    .line 921
    if-eqz p4, :cond_0

    .line 922
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lc8/bb;->addSingleError(Lc8/Y;I)V

    .line 933
    :cond_0
    return-object v0
.end method

.method public static createRowGreaterThan(Lc8/bb;Lc8/gb;Lc8/gb;IZ)Lc8/Y;
    .locals 4
    .param p0, "linearSystem"    # Lc8/bb;
    .param p1, "variableA"    # Lc8/gb;
    .param p2, "variableB"    # Lc8/gb;
    .param p3, "margin"    # I
    .param p4, "withError"    # Z

    .prologue
    .line 960
    invoke-virtual {p0}, Lc8/bb;->createSlackVariable()Lc8/gb;

    move-result-object v1

    .line 961
    .local v1, "slack":Lc8/gb;
    invoke-virtual {p0}, Lc8/bb;->createRow()Lc8/Y;

    move-result-object v0

    .line 962
    .local v0, "row":Lc8/Y;
    invoke-virtual {v0, p1, p2, v1, p3}, Lc8/Y;->createRowGreaterThan(Lc8/gb;Lc8/gb;Lc8/gb;I)Lc8/Y;

    .line 963
    if-eqz p4, :cond_0

    .line 964
    iget-object v3, v0, Lc8/Y;->variables:Lc8/X;

    invoke-virtual {v3, v1}, Lc8/X;->get(Lc8/gb;)F

    move-result v2

    .line 965
    .local v2, "slackValue":F
    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    invoke-direct {p0, v0, v3}, Lc8/bb;->addSingleError(Lc8/Y;I)V

    .line 978
    .end local v2    # "slackValue":F
    :cond_0
    return-object v0
.end method

.method public static createRowLowerThan(Lc8/bb;Lc8/gb;Lc8/gb;IZ)Lc8/Y;
    .locals 4
    .param p0, "linearSystem"    # Lc8/bb;
    .param p1, "variableA"    # Lc8/gb;
    .param p2, "variableB"    # Lc8/gb;
    .param p3, "margin"    # I
    .param p4, "withError"    # Z

    .prologue
    .line 986
    invoke-virtual {p0}, Lc8/bb;->createSlackVariable()Lc8/gb;

    move-result-object v1

    .line 987
    .local v1, "slack":Lc8/gb;
    invoke-virtual {p0}, Lc8/bb;->createRow()Lc8/Y;

    move-result-object v0

    .line 988
    .local v0, "row":Lc8/Y;
    invoke-virtual {v0, p1, p2, v1, p3}, Lc8/Y;->createRowLowerThan(Lc8/gb;Lc8/gb;Lc8/gb;I)Lc8/Y;

    .line 989
    if-eqz p4, :cond_0

    .line 990
    iget-object v3, v0, Lc8/Y;->variables:Lc8/X;

    invoke-virtual {v3, v1}, Lc8/X;->get(Lc8/gb;)F

    move-result v2

    .line 991
    .local v2, "slackValue":F
    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    invoke-direct {p0, v0, v3}, Lc8/bb;->addSingleError(Lc8/Y;I)V

    .line 1004
    .end local v2    # "slackValue":F
    :cond_0
    return-object v0
.end method

.method private createVariable(Ljava/lang/String;Landroid/support/constraint/solver/SolverVariable$Type;)Lc8/gb;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Landroid/support/constraint/solver/SolverVariable$Type;

    .prologue
    .line 201
    iget v1, p0, Lc8/bb;->mNumColumns:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lc8/bb;->mMaxColumns:I

    if-lt v1, v2, :cond_0

    .line 202
    invoke-direct {p0}, Lc8/bb;->increaseTableSize()V

    .line 204
    :cond_0
    invoke-direct {p0, p2}, Lc8/bb;->acquireSolverVariable(Landroid/support/constraint/solver/SolverVariable$Type;)Lc8/gb;

    move-result-object v0

    .line 205
    .local v0, "variable":Lc8/gb;
    invoke-virtual {v0, p1}, Lc8/gb;->setName(Ljava/lang/String;)V

    .line 206
    iget v1, p0, Lc8/bb;->mVariablesID:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lc8/bb;->mVariablesID:I

    .line 207
    iget v1, p0, Lc8/bb;->mNumColumns:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lc8/bb;->mNumColumns:I

    .line 208
    iget v1, p0, Lc8/bb;->mVariablesID:I

    iput v1, v0, Lc8/gb;->id:I

    .line 209
    iget-object v1, p0, Lc8/bb;->mVariables:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 210
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lc8/bb;->mVariables:Ljava/util/HashMap;

    .line 212
    :cond_1
    iget-object v1, p0, Lc8/bb;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    iget-object v1, p0, Lc8/bb;->mCache:Lc8/Z;

    iget-object v1, v1, Lc8/Z;->mIndexedVariables:[Lc8/gb;

    iget v2, p0, Lc8/bb;->mVariablesID:I

    aput-object v0, v1, v2

    .line 214
    return-object v0
.end method

.method private displayRows()V
    .locals 4

    .prologue
    .line 692
    invoke-direct {p0}, Lc8/bb;->displaySolverVariables()V

    .line 693
    const-string/jumbo v1, ""

    .line 694
    .local v1, "s":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lc8/bb;->mNumRows:I

    if-ge v0, v2, :cond_0

    .line 695
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/bb;->mRows:[Lc8/Y;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 696
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 694
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 698
    :cond_0
    iget-object v2, p0, Lc8/bb;->mGoal:Lc8/ab;

    iget-object v2, v2, Lc8/ab;->variables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 699
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/bb;->mGoal:Lc8/ab;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 701
    :cond_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 702
    return-void
.end method

.method private displaySolverVariables()V
    .locals 5

    .prologue
    .line 778
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Display Rows ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lc8/bb;->mNumRows:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lc8/bb;->mNumColumns:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") :\n\t | C | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 779
    .local v1, "s":Ljava/lang/String;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lc8/bb;->mNumColumns:I

    if-gt v0, v3, :cond_0

    .line 780
    iget-object v3, p0, Lc8/bb;->mCache:Lc8/Z;

    iget-object v3, v3, Lc8/Z;->mIndexedVariables:[Lc8/gb;

    aget-object v2, v3, v0

    .line 781
    .local v2, "v":Lc8/gb;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 782
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 779
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 784
    .end local v2    # "v":Lc8/gb;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 785
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 786
    return-void
.end method

.method private enforceBFS(Lc8/ab;)I
    .locals 20
    .param p1, "goal"    # Lc8/ab;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 552
    const/4 v15, 0x0

    .line 558
    .local v15, "tries":I
    const/4 v7, 0x0

    .line 559
    .local v7, "infeasibleSystem":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lc8/bb;->mNumRows:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v6, v0, :cond_0

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/bb;->mRows:[Lc8/Y;

    move-object/from16 v18, v0

    aget-object v18, v18, v6

    move-object/from16 v0, v18

    iget-object v0, v0, Lc8/Y;->variable:Lc8/gb;

    move-object/from16 v17, v0

    .line 561
    .local v17, "variable":Lc8/gb;
    move-object/from16 v0, v17

    iget-object v0, v0, Lc8/gb;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    move-object/from16 v18, v0

    sget-object v19, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_4

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/bb;->mRows:[Lc8/Y;

    move-object/from16 v18, v0

    aget-object v18, v18, v6

    move-object/from16 v0, v18

    iget v0, v0, Lc8/Y;->constantValue:F

    move/from16 v18, v0

    const/16 v19, 0x0

    cmpg-float v18, v18, v19

    if-gez v18, :cond_4

    .line 565
    const/4 v7, 0x1

    .line 571
    .end local v17    # "variable":Lc8/gb;
    :cond_0
    if-eqz v7, :cond_a

    .line 579
    const/4 v5, 0x0

    .line 580
    .local v5, "done":Z
    const/4 v15, 0x0

    .line 581
    :goto_1
    if-nez v5, :cond_a

    .line 582
    add-int/lit8 v15, v15, 0x1

    .line 586
    const v10, 0x7f7fffff    # Float.MAX_VALUE

    .line 587
    .local v10, "min":F
    const/4 v14, 0x0

    .line 588
    .local v14, "strength":I
    const/4 v13, -0x1

    .line 589
    .local v13, "pivotRowIndex":I
    const/4 v11, -0x1

    .line 591
    .local v11, "pivotColumnIndex":I
    const/4 v6, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lc8/bb;->mNumRows:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v6, v0, :cond_7

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/bb;->mRows:[Lc8/Y;

    move-object/from16 v18, v0

    aget-object v4, v18, v6

    .line 593
    .local v4, "current":Lc8/Y;
    iget-object v0, v4, Lc8/Y;->variable:Lc8/gb;

    move-object/from16 v17, v0

    .line 594
    .restart local v17    # "variable":Lc8/gb;
    move-object/from16 v0, v17

    iget-object v0, v0, Lc8/gb;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    move-object/from16 v18, v0

    sget-object v19, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_6

    .line 599
    iget v0, v4, Lc8/Y;->constantValue:F

    move/from16 v18, v0

    const/16 v19, 0x0

    cmpg-float v18, v18, v19

    if-gez v18, :cond_6

    .line 604
    const/4 v8, 0x1

    .local v8, "j":I
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lc8/bb;->mNumColumns:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v8, v0, :cond_6

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/bb;->mCache:Lc8/Z;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lc8/Z;->mIndexedVariables:[Lc8/gb;

    move-object/from16 v18, v0

    aget-object v3, v18, v8

    .line 606
    .local v3, "candidate":Lc8/gb;
    iget-object v0, v4, Lc8/Y;->variables:Lc8/X;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lc8/X;->get(Lc8/gb;)F

    move-result v2

    .line 607
    .local v2, "a_j":F
    const/16 v18, 0x0

    cmpg-float v18, v2, v18

    if-lez v18, :cond_5

    .line 613
    const/4 v9, 0x0

    .local v9, "k":I
    :goto_4
    const/16 v18, 0x6

    move/from16 v0, v18

    if-ge v9, v0, :cond_5

    .line 614
    iget-object v0, v3, Lc8/gb;->strengthVector:[F

    move-object/from16 v18, v0

    aget v18, v18, v9

    div-float v16, v18, v2

    .line 615
    .local v16, "value":F
    cmpg-float v18, v16, v10

    if-gez v18, :cond_1

    if-eq v9, v14, :cond_2

    :cond_1
    if-le v9, v14, :cond_3

    .line 616
    :cond_2
    move/from16 v10, v16

    .line 617
    move v13, v6

    .line 618
    move v11, v8

    .line 619
    move v14, v9

    .line 613
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 559
    .end local v2    # "a_j":F
    .end local v3    # "candidate":Lc8/gb;
    .end local v4    # "current":Lc8/Y;
    .end local v5    # "done":Z
    .end local v8    # "j":I
    .end local v9    # "k":I
    .end local v10    # "min":F
    .end local v11    # "pivotColumnIndex":I
    .end local v13    # "pivotRowIndex":I
    .end local v14    # "strength":I
    .end local v16    # "value":F
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 604
    .restart local v2    # "a_j":F
    .restart local v3    # "candidate":Lc8/gb;
    .restart local v4    # "current":Lc8/Y;
    .restart local v5    # "done":Z
    .restart local v8    # "j":I
    .restart local v10    # "min":F
    .restart local v11    # "pivotColumnIndex":I
    .restart local v13    # "pivotRowIndex":I
    .restart local v14    # "strength":I
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 591
    .end local v2    # "a_j":F
    .end local v3    # "candidate":Lc8/gb;
    .end local v8    # "j":I
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 626
    .end local v4    # "current":Lc8/Y;
    .end local v17    # "variable":Lc8/gb;
    :cond_7
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v13, v0, :cond_9

    .line 628
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/bb;->mRows:[Lc8/Y;

    move-object/from16 v18, v0

    aget-object v12, v18, v13

    .line 633
    .local v12, "pivotEquation":Lc8/Y;
    iget-object v0, v12, Lc8/Y;->variable:Lc8/gb;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lc8/gb;->definitionId:I

    .line 634
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/bb;->mCache:Lc8/Z;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lc8/Z;->mIndexedVariables:[Lc8/gb;

    move-object/from16 v18, v0

    aget-object v18, v18, v11

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lc8/Y;->pivot(Lc8/gb;)V

    .line 635
    iget-object v0, v12, Lc8/Y;->variable:Lc8/gb;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput v13, v0, Lc8/gb;->definitionId:I

    .line 637
    const/4 v6, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lc8/bb;->mNumRows:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v6, v0, :cond_8

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/bb;->mRows:[Lc8/Y;

    move-object/from16 v18, v0

    aget-object v18, v18, v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lc8/Y;->updateRowWithEquation(Lc8/Y;)Z

    .line 637
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 641
    :cond_8
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lc8/ab;->updateFromSystem(Lc8/bb;)V

    goto/16 :goto_1

    .line 647
    .end local v12    # "pivotEquation":Lc8/Y;
    :cond_9
    const/4 v5, 0x1

    .line 649
    goto/16 :goto_1

    .line 660
    .end local v5    # "done":Z
    .end local v10    # "min":F
    .end local v11    # "pivotColumnIndex":I
    .end local v13    # "pivotRowIndex":I
    .end local v14    # "strength":I
    :cond_a
    const/4 v6, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lc8/bb;->mNumRows:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v6, v0, :cond_c

    .line 661
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/bb;->mRows:[Lc8/Y;

    move-object/from16 v18, v0

    aget-object v18, v18, v6

    move-object/from16 v0, v18

    iget-object v0, v0, Lc8/Y;->variable:Lc8/gb;

    move-object/from16 v17, v0

    .line 662
    .restart local v17    # "variable":Lc8/gb;
    move-object/from16 v0, v17

    iget-object v0, v0, Lc8/gb;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    move-object/from16 v18, v0

    sget-object v19, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_b

    .line 665
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/bb;->mRows:[Lc8/Y;

    move-object/from16 v18, v0

    aget-object v18, v18, v6

    move-object/from16 v0, v18

    iget v0, v0, Lc8/Y;->constantValue:F

    move/from16 v18, v0

    const/16 v19, 0x0

    cmpg-float v18, v18, v19

    if-ltz v18, :cond_c

    .line 660
    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 676
    .end local v17    # "variable":Lc8/gb;
    :cond_c
    return v15
.end method

.method private getDisplaySize(I)Ljava/lang/String;
    .locals 4
    .param p1, "n"    # I

    .prologue
    .line 789
    shl-int/lit8 v2, p1, 0x2

    div-int/lit16 v2, v2, 0x400

    div-int/lit16 v1, v2, 0x400

    .line 790
    .local v1, "mb":I
    if-lez v1, :cond_0

    .line 791
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " Mb"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 797
    :goto_0
    return-object v2

    .line 793
    :cond_0
    shl-int/lit8 v2, p1, 0x2

    div-int/lit16 v0, v2, 0x400

    .line 794
    .local v0, "kb":I
    if-lez v0, :cond_1

    .line 795
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " Kb"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 797
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    shl-int/lit8 v3, p1, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private increaseTableSize()V
    .locals 3

    .prologue
    .line 83
    iget v0, p0, Lc8/bb;->TABLE_SIZE:I

    shl-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc8/bb;->TABLE_SIZE:I

    .line 84
    iget-object v0, p0, Lc8/bb;->mRows:[Lc8/Y;

    iget v1, p0, Lc8/bb;->TABLE_SIZE:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc8/Y;

    iput-object v0, p0, Lc8/bb;->mRows:[Lc8/Y;

    .line 85
    iget-object v1, p0, Lc8/bb;->mCache:Lc8/Z;

    iget-object v0, p0, Lc8/bb;->mCache:Lc8/Z;

    iget-object v0, v0, Lc8/Z;->mIndexedVariables:[Lc8/gb;

    iget v2, p0, Lc8/bb;->TABLE_SIZE:I

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc8/gb;

    iput-object v0, v1, Lc8/Z;->mIndexedVariables:[Lc8/gb;

    .line 86
    iget v0, p0, Lc8/bb;->TABLE_SIZE:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lc8/bb;->mAlreadyTestedCandidates:[Z

    .line 87
    iget v0, p0, Lc8/bb;->TABLE_SIZE:I

    iput v0, p0, Lc8/bb;->mMaxColumns:I

    .line 88
    iget v0, p0, Lc8/bb;->TABLE_SIZE:I

    iput v0, p0, Lc8/bb;->mMaxRows:I

    .line 89
    iget-object v0, p0, Lc8/bb;->mGoal:Lc8/ab;

    iget-object v0, v0, Lc8/ab;->variables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 90
    return-void
.end method

.method private optimize(Lc8/ab;)I
    .locals 18
    .param p1, "goal"    # Lc8/ab;

    .prologue
    .line 437
    const/4 v4, 0x0

    .line 438
    .local v4, "done":Z
    const/4 v12, 0x0

    .line 439
    .local v12, "tries":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v15, v0, Lc8/bb;->mNumColumns:I

    if-ge v6, v15, :cond_0

    .line 440
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/bb;->mAlreadyTestedCandidates:[Z

    const/16 v16, 0x0

    aput-boolean v16, v15, v6

    .line 439
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 442
    :cond_0
    const/4 v11, 0x0

    .line 444
    .local v11, "tested":I
    :goto_1
    if-nez v4, :cond_8

    .line 445
    add-int/lit8 v12, v12, 0x1

    .line 450
    invoke-virtual/range {p1 .. p1}, Lc8/ab;->getPivotCandidate()Lc8/gb;

    move-result-object v8

    .line 454
    .local v8, "pivotCandidate":Lc8/gb;
    if-eqz v8, :cond_1

    .line 455
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/bb;->mAlreadyTestedCandidates:[Z

    iget v0, v8, Lc8/gb;->id:I

    move/from16 v16, v0

    aget-boolean v15, v15, v16

    if-eqz v15, :cond_3

    .line 456
    const/4 v8, 0x0

    .line 466
    :cond_1
    :goto_2
    if-eqz v8, :cond_7

    .line 480
    const v7, 0x7f7fffff    # Float.MAX_VALUE

    .line 481
    .local v7, "min":F
    const/4 v10, -0x1

    .line 483
    .local v10, "pivotRowIndex":I
    const/4 v6, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget v15, v0, Lc8/bb;->mNumRows:I

    if-ge v6, v15, :cond_4

    .line 484
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/bb;->mRows:[Lc8/Y;

    aget-object v3, v15, v6

    .line 485
    .local v3, "current":Lc8/Y;
    iget-object v14, v3, Lc8/Y;->variable:Lc8/gb;

    .line 486
    .local v14, "variable":Lc8/gb;
    iget-object v15, v14, Lc8/gb;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    sget-object v16, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_2

    .line 490
    invoke-virtual {v3, v8}, Lc8/Y;->hasVariable(Lc8/gb;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 493
    iget-object v15, v3, Lc8/Y;->variables:Lc8/X;

    invoke-virtual {v15, v8}, Lc8/X;->get(Lc8/gb;)F

    move-result v2

    .line 494
    .local v2, "a_j":F
    const/4 v15, 0x0

    cmpg-float v15, v2, v15

    if-gez v15, :cond_2

    .line 495
    iget v15, v3, Lc8/Y;->constantValue:F

    neg-float v15, v15

    div-float v13, v15, v2

    .line 496
    .local v13, "value":F
    cmpg-float v15, v13, v7

    if-gez v15, :cond_2

    .line 497
    move v7, v13

    .line 498
    move v10, v6

    .line 483
    .end local v2    # "a_j":F
    .end local v13    # "value":F
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 458
    .end local v3    # "current":Lc8/Y;
    .end local v7    # "min":F
    .end local v10    # "pivotRowIndex":I
    .end local v14    # "variable":Lc8/gb;
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/bb;->mAlreadyTestedCandidates:[Z

    iget v0, v8, Lc8/gb;->id:I

    move/from16 v16, v0

    const/16 v17, 0x1

    aput-boolean v17, v15, v16

    .line 459
    add-int/lit8 v11, v11, 0x1

    .line 460
    move-object/from16 v0, p0

    iget v15, v0, Lc8/bb;->mNumColumns:I

    if-lt v11, v15, :cond_1

    .line 461
    const/4 v4, 0x1

    goto :goto_2

    .line 506
    .restart local v7    # "min":F
    .restart local v10    # "pivotRowIndex":I
    :cond_4
    if-ltz v10, :cond_6

    .line 511
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/bb;->mRows:[Lc8/Y;

    aget-object v9, v15, v10

    .line 512
    .local v9, "pivotEquation":Lc8/Y;
    iget-object v15, v9, Lc8/Y;->variable:Lc8/gb;

    const/16 v16, -0x1

    move/from16 v0, v16

    iput v0, v15, Lc8/gb;->definitionId:I

    .line 513
    invoke-virtual {v9, v8}, Lc8/Y;->pivot(Lc8/gb;)V

    .line 514
    iget-object v15, v9, Lc8/Y;->variable:Lc8/gb;

    iput v10, v15, Lc8/gb;->definitionId:I

    .line 516
    const/4 v6, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget v15, v0, Lc8/bb;->mNumRows:I

    if-ge v6, v15, :cond_5

    .line 517
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/bb;->mRows:[Lc8/Y;

    aget-object v15, v15, v6

    invoke-virtual {v15, v9}, Lc8/Y;->updateRowWithEquation(Lc8/Y;)Z

    .line 516
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 520
    :cond_5
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lc8/ab;->updateFromSystem(Lc8/bb;)V

    .line 526
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lc8/bb;->enforceBFS(Lc8/ab;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 527
    :catch_0
    move-exception v5

    .line 528
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 534
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v9    # "pivotEquation":Lc8/Y;
    :cond_6
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 540
    .end local v7    # "min":F
    .end local v10    # "pivotRowIndex":I
    :cond_7
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 543
    .end local v8    # "pivotCandidate":Lc8/gb;
    :cond_8
    return v12
.end method

.method private releaseRows()V
    .locals 4

    .prologue
    .line 96
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lc8/bb;->mRows:[Lc8/Y;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 97
    iget-object v2, p0, Lc8/bb;->mRows:[Lc8/Y;

    aget-object v1, v2, v0

    .line 98
    .local v1, "row":Lc8/Y;
    if-eqz v1, :cond_0

    .line 99
    iget-object v2, p0, Lc8/bb;->mCache:Lc8/Z;

    iget-object v2, v2, Lc8/Z;->arrayRowPool:Lc8/cb;

    invoke-interface {v2, v1}, Lc8/cb;->release(Ljava/lang/Object;)Z

    .line 101
    :cond_0
    iget-object v2, p0, Lc8/bb;->mRows:[Lc8/Y;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    .end local v1    # "row":Lc8/Y;
    :cond_1
    return-void
.end method

.method private updateRowFromVariables(Lc8/Y;)V
    .locals 2
    .param p1, "row"    # Lc8/Y;

    .prologue
    .line 345
    iget v0, p0, Lc8/bb;->mNumRows:I

    if-lez v0, :cond_0

    .line 346
    iget-object v0, p1, Lc8/Y;->variables:Lc8/X;

    iget-object v1, p0, Lc8/bb;->mRows:[Lc8/Y;

    invoke-virtual {v0, p1, v1}, Lc8/X;->updateFromSystem(Lc8/Y;[Lc8/Y;)V

    .line 347
    iget-object v0, p1, Lc8/Y;->variables:Lc8/X;

    iget v0, v0, Lc8/X;->currentSize:I

    if-nez v0, :cond_0

    .line 348
    const/4 v0, 0x1

    iput-boolean v0, p1, Lc8/Y;->isSimpleDefinition:Z

    .line 351
    :cond_0
    return-void
.end method


# virtual methods
.method public addCentering(Lc8/gb;Lc8/gb;IFLc8/gb;Lc8/gb;II)V
    .locals 11
    .param p1, "a"    # Lc8/gb;
    .param p2, "b"    # Lc8/gb;
    .param p3, "m1"    # I
    .param p4, "bias"    # F
    .param p5, "c"    # Lc8/gb;
    .param p6, "d"    # Lc8/gb;
    .param p7, "m2"    # I
    .param p8, "strength"    # I

    .prologue
    .line 856
    invoke-virtual {p0}, Lc8/bb;->createRow()Lc8/Y;

    move-result-object v1

    .local v1, "row":Lc8/Y;
    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    .line 857
    invoke-virtual/range {v1 .. v8}, Lc8/Y;->createRowCentering(Lc8/gb;Lc8/gb;IFLc8/gb;Lc8/gb;I)Lc8/Y;

    .line 858
    invoke-virtual {p0}, Lc8/bb;->createErrorVariable()Lc8/gb;

    move-result-object v9

    .line 859
    .local v9, "error1":Lc8/gb;
    invoke-virtual {p0}, Lc8/bb;->createErrorVariable()Lc8/gb;

    move-result-object v10

    .line 860
    .local v10, "error2":Lc8/gb;
    move/from16 v0, p8

    iput v0, v9, Lc8/gb;->strength:I

    .line 861
    move/from16 v0, p8

    iput v0, v10, Lc8/gb;->strength:I

    .line 862
    invoke-virtual {v1, v9, v10}, Lc8/Y;->addError(Lc8/gb;Lc8/gb;)Lc8/Y;

    .line 863
    invoke-virtual {p0, v1}, Lc8/bb;->addConstraint(Lc8/Y;)V

    .line 864
    return-void
.end method

.method public addConstraint(Lc8/Y;)V
    .locals 7
    .param p1, "row"    # Lc8/Y;

    .prologue
    .line 358
    if-nez p1, :cond_1

    .line 429
    :cond_0
    return-void

    .line 361
    :cond_1
    iget v4, p0, Lc8/bb;->mNumRows:I

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, Lc8/bb;->mMaxRows:I

    if-ge v4, v5, :cond_2

    iget v4, p0, Lc8/bb;->mNumColumns:I

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, Lc8/bb;->mMaxColumns:I

    if-lt v4, v5, :cond_3

    .line 362
    :cond_2
    invoke-direct {p0}, Lc8/bb;->increaseTableSize()V

    .line 368
    :cond_3
    iget-boolean v4, p1, Lc8/Y;->isSimpleDefinition:Z

    if-nez v4, :cond_4

    .line 370
    invoke-direct {p0, p1}, Lc8/bb;->updateRowFromVariables(Lc8/Y;)V

    .line 373
    invoke-virtual {p1}, Lc8/Y;->ensurePositiveConstant()V

    .line 380
    invoke-virtual {p1}, Lc8/Y;->pickRowVariable()V

    .line 382
    invoke-virtual {p1}, Lc8/Y;->hasKeyVariable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 395
    :cond_4
    iget-object v4, p0, Lc8/bb;->mRows:[Lc8/Y;

    iget v5, p0, Lc8/bb;->mNumRows:I

    aget-object v4, v4, v5

    if-eqz v4, :cond_5

    .line 396
    iget-object v4, p0, Lc8/bb;->mCache:Lc8/Z;

    iget-object v4, v4, Lc8/Z;->arrayRowPool:Lc8/cb;

    iget-object v5, p0, Lc8/bb;->mRows:[Lc8/Y;

    iget v6, p0, Lc8/bb;->mNumRows:I

    aget-object v5, v5, v6

    invoke-interface {v4, v5}, Lc8/cb;->release(Ljava/lang/Object;)Z

    .line 398
    :cond_5
    iget-boolean v4, p1, Lc8/Y;->isSimpleDefinition:Z

    if-nez v4, :cond_6

    .line 399
    invoke-virtual {p1}, Lc8/Y;->updateClientEquations()V

    .line 401
    :cond_6
    iget-object v4, p0, Lc8/bb;->mRows:[Lc8/Y;

    iget v5, p0, Lc8/bb;->mNumRows:I

    aput-object p1, v4, v5

    .line 402
    iget-object v4, p1, Lc8/Y;->variable:Lc8/gb;

    iget v5, p0, Lc8/bb;->mNumRows:I

    iput v5, v4, Lc8/gb;->definitionId:I

    .line 403
    iget v4, p0, Lc8/bb;->mNumRows:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lc8/bb;->mNumRows:I

    .line 405
    iget-object v4, p1, Lc8/Y;->variable:Lc8/gb;

    iget v2, v4, Lc8/gb;->mClientEquationsCount:I

    .line 406
    .local v2, "count":I
    if-lez v2, :cond_0

    .line 407
    :goto_0
    iget-object v4, p0, Lc8/bb;->tempClientsCopy:[Lc8/Y;

    array-length v4, v4

    if-ge v4, v2, :cond_7

    .line 408
    iget-object v4, p0, Lc8/bb;->tempClientsCopy:[Lc8/Y;

    array-length v4, v4

    shl-int/lit8 v4, v4, 0x1

    new-array v4, v4, [Lc8/Y;

    iput-object v4, p0, Lc8/bb;->tempClientsCopy:[Lc8/Y;

    goto :goto_0

    .line 410
    :cond_7
    iget-object v1, p0, Lc8/bb;->tempClientsCopy:[Lc8/Y;

    .line 412
    .local v1, "clients":[Lc8/Y;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_8

    .line 413
    iget-object v4, p1, Lc8/Y;->variable:Lc8/gb;

    iget-object v4, v4, Lc8/gb;->mClientEquations:[Lc8/Y;

    aget-object v4, v4, v3

    aput-object v4, v1, v3

    .line 412
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 415
    :cond_8
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_0

    .line 416
    aget-object v0, v1, v3

    .line 417
    .local v0, "client":Lc8/Y;
    if-eq v0, p1, :cond_9

    .line 420
    iget-object v4, v0, Lc8/Y;->variables:Lc8/X;

    invoke-virtual {v4, v0, p1}, Lc8/X;->updateFromRow(Lc8/Y;Lc8/Y;)V

    .line 421
    invoke-virtual {v0}, Lc8/Y;->updateClientEquations()V

    .line 415
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public addEquality(Lc8/gb;Lc8/gb;II)Lc8/Y;
    .locals 3
    .param p1, "a"    # Lc8/gb;
    .param p2, "b"    # Lc8/gb;
    .param p3, "margin"    # I
    .param p4, "strength"    # I

    .prologue
    .line 877
    invoke-virtual {p0}, Lc8/bb;->createRow()Lc8/Y;

    move-result-object v2

    .line 878
    .local v2, "row":Lc8/Y;
    invoke-virtual {v2, p1, p2, p3}, Lc8/Y;->createRowEquals(Lc8/gb;Lc8/gb;I)Lc8/Y;

    .line 879
    invoke-virtual {p0}, Lc8/bb;->createErrorVariable()Lc8/gb;

    move-result-object v0

    .line 880
    .local v0, "error1":Lc8/gb;
    invoke-virtual {p0}, Lc8/bb;->createErrorVariable()Lc8/gb;

    move-result-object v1

    .line 881
    .local v1, "error2":Lc8/gb;
    iput p4, v0, Lc8/gb;->strength:I

    .line 882
    iput p4, v1, Lc8/gb;->strength:I

    .line 883
    invoke-virtual {v2, v0, v1}, Lc8/Y;->addError(Lc8/gb;Lc8/gb;)Lc8/Y;

    .line 884
    invoke-virtual {p0, v2}, Lc8/bb;->addConstraint(Lc8/Y;)V

    .line 885
    return-object v2
.end method

.method public addEquality(Lc8/gb;I)V
    .locals 5
    .param p1, "a"    # Lc8/gb;
    .param p2, "value"    # I

    .prologue
    .line 897
    iget v0, p1, Lc8/gb;->definitionId:I

    .line 898
    .local v0, "idx":I
    iget v3, p1, Lc8/gb;->definitionId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 899
    iget-object v3, p0, Lc8/bb;->mRows:[Lc8/Y;

    aget-object v2, v3, v0

    .line 900
    .local v2, "row":Lc8/Y;
    iget-boolean v3, v2, Lc8/Y;->isSimpleDefinition:Z

    if-eqz v3, :cond_0

    .line 901
    int-to-float v3, p2

    iput v3, v2, Lc8/Y;->constantValue:F

    .line 912
    :goto_0
    return-void

    .line 903
    :cond_0
    invoke-virtual {p0}, Lc8/bb;->createRow()Lc8/Y;

    move-result-object v1

    .line 904
    .local v1, "newRow":Lc8/Y;
    invoke-virtual {v1, p1, p2}, Lc8/Y;->createRowEquals(Lc8/gb;I)Lc8/Y;

    .line 905
    invoke-virtual {p0, v1}, Lc8/bb;->addConstraint(Lc8/Y;)V

    goto :goto_0

    .line 908
    .end local v1    # "newRow":Lc8/Y;
    .end local v2    # "row":Lc8/Y;
    :cond_1
    invoke-virtual {p0}, Lc8/bb;->createRow()Lc8/Y;

    move-result-object v2

    .line 909
    .restart local v2    # "row":Lc8/Y;
    invoke-virtual {v2, p1, p2}, Lc8/Y;->createRowDefinition(Lc8/gb;I)Lc8/Y;

    .line 910
    invoke-virtual {p0, v2}, Lc8/bb;->addConstraint(Lc8/Y;)V

    goto :goto_0
.end method

.method public addGreaterThan(Lc8/gb;Lc8/gb;II)V
    .locals 2
    .param p1, "a"    # Lc8/gb;
    .param p2, "b"    # Lc8/gb;
    .param p3, "margin"    # I
    .param p4, "strength"    # I

    .prologue
    .line 815
    invoke-virtual {p0}, Lc8/bb;->createRow()Lc8/Y;

    move-result-object v0

    .line 816
    .local v0, "row":Lc8/Y;
    invoke-virtual {p0}, Lc8/bb;->createSlackVariable()Lc8/gb;

    move-result-object v1

    .line 817
    .local v1, "slack":Lc8/gb;
    iput p4, v1, Lc8/gb;->strength:I

    .line 818
    invoke-virtual {v0, p1, p2, v1, p3}, Lc8/Y;->createRowGreaterThan(Lc8/gb;Lc8/gb;Lc8/gb;I)Lc8/Y;

    .line 819
    invoke-virtual {p0, v0}, Lc8/bb;->addConstraint(Lc8/Y;)V

    .line 820
    return-void
.end method

.method public addLowerThan(Lc8/gb;Lc8/gb;II)V
    .locals 2
    .param p1, "a"    # Lc8/gb;
    .param p2, "b"    # Lc8/gb;
    .param p3, "margin"    # I
    .param p4, "strength"    # I

    .prologue
    .line 833
    invoke-virtual {p0}, Lc8/bb;->createRow()Lc8/Y;

    move-result-object v0

    .line 834
    .local v0, "row":Lc8/Y;
    invoke-virtual {p0}, Lc8/bb;->createSlackVariable()Lc8/gb;

    move-result-object v1

    .line 835
    .local v1, "slack":Lc8/gb;
    iput p4, v1, Lc8/gb;->strength:I

    .line 836
    invoke-virtual {v0, p1, p2, v1, p3}, Lc8/Y;->createRowLowerThan(Lc8/gb;Lc8/gb;Lc8/gb;I)Lc8/Y;

    .line 837
    invoke-virtual {p0, v0}, Lc8/bb;->addConstraint(Lc8/Y;)V

    .line 838
    return-void
.end method

.method public createErrorVariable()Lc8/gb;
    .locals 3

    .prologue
    .line 218
    iget v1, p0, Lc8/bb;->mNumColumns:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lc8/bb;->mMaxColumns:I

    if-lt v1, v2, :cond_0

    .line 219
    invoke-direct {p0}, Lc8/bb;->increaseTableSize()V

    .line 221
    :cond_0
    sget-object v1, Landroid/support/constraint/solver/SolverVariable$Type;->ERROR:Landroid/support/constraint/solver/SolverVariable$Type;

    invoke-direct {p0, v1}, Lc8/bb;->acquireSolverVariable(Landroid/support/constraint/solver/SolverVariable$Type;)Lc8/gb;

    move-result-object v0

    .line 222
    .local v0, "variable":Lc8/gb;
    iget v1, p0, Lc8/bb;->mVariablesID:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lc8/bb;->mVariablesID:I

    .line 223
    iget v1, p0, Lc8/bb;->mNumColumns:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lc8/bb;->mNumColumns:I

    .line 224
    iget v1, p0, Lc8/bb;->mVariablesID:I

    iput v1, v0, Lc8/gb;->id:I

    .line 225
    iget-object v1, p0, Lc8/bb;->mCache:Lc8/Z;

    iget-object v1, v1, Lc8/Z;->mIndexedVariables:[Lc8/gb;

    iget v2, p0, Lc8/bb;->mVariablesID:I

    aput-object v0, v1, v2

    .line 226
    return-object v0
.end method

.method public createObjectVariable(Ljava/lang/Object;)Lc8/gb;
    .locals 4
    .param p1, "anchor"    # Ljava/lang/Object;

    .prologue
    const/4 v3, -0x1

    .line 137
    if-nez p1, :cond_1

    .line 138
    const/4 v0, 0x0

    .line 163
    .end local p1    # "anchor":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v0

    .line 140
    .restart local p1    # "anchor":Ljava/lang/Object;
    :cond_1
    iget v1, p0, Lc8/bb;->mNumColumns:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lc8/bb;->mMaxColumns:I

    if-lt v1, v2, :cond_2

    .line 141
    invoke-direct {p0}, Lc8/bb;->increaseTableSize()V

    .line 143
    :cond_2
    const/4 v0, 0x0

    .line 144
    .local v0, "variable":Lc8/gb;
    instance-of v1, p1, Lc8/ib;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 145
    check-cast v1, Lc8/ib;

    invoke-virtual {v1}, Lc8/ib;->getSolverVariable()Lc8/gb;

    move-result-object v0

    .line 146
    if-nez v0, :cond_3

    move-object v1, p1

    .line 147
    check-cast v1, Lc8/ib;

    iget-object v2, p0, Lc8/bb;->mCache:Lc8/Z;

    invoke-virtual {v1, v2}, Lc8/ib;->resetSolverVariable(Lc8/Z;)V

    .line 148
    check-cast p1, Lc8/ib;

    .end local p1    # "anchor":Ljava/lang/Object;
    invoke-virtual {p1}, Lc8/ib;->getSolverVariable()Lc8/gb;

    move-result-object v0

    .line 150
    :cond_3
    iget v1, v0, Lc8/gb;->id:I

    if-eq v1, v3, :cond_4

    iget v1, v0, Lc8/gb;->id:I

    iget v2, p0, Lc8/bb;->mVariablesID:I

    if-gt v1, v2, :cond_4

    iget-object v1, p0, Lc8/bb;->mCache:Lc8/Z;

    iget-object v1, v1, Lc8/Z;->mIndexedVariables:[Lc8/gb;

    iget v2, v0, Lc8/gb;->id:I

    aget-object v1, v1, v2

    if-nez v1, :cond_0

    .line 153
    :cond_4
    iget v1, v0, Lc8/gb;->id:I

    if-eq v1, v3, :cond_5

    .line 154
    invoke-virtual {v0}, Lc8/gb;->reset()V

    .line 156
    :cond_5
    iget v1, p0, Lc8/bb;->mVariablesID:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lc8/bb;->mVariablesID:I

    .line 157
    iget v1, p0, Lc8/bb;->mNumColumns:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lc8/bb;->mNumColumns:I

    .line 158
    iget v1, p0, Lc8/bb;->mVariablesID:I

    iput v1, v0, Lc8/gb;->id:I

    .line 159
    sget-object v1, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    iput-object v1, v0, Lc8/gb;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    .line 160
    iget-object v1, p0, Lc8/bb;->mCache:Lc8/Z;

    iget-object v1, v1, Lc8/Z;->mIndexedVariables:[Lc8/gb;

    iget v2, p0, Lc8/bb;->mVariablesID:I

    aput-object v0, v1, v2

    goto :goto_0
.end method

.method public createRow()Lc8/Y;
    .locals 2

    .prologue
    .line 167
    iget-object v1, p0, Lc8/bb;->mCache:Lc8/Z;

    iget-object v1, v1, Lc8/Z;->arrayRowPool:Lc8/cb;

    invoke-interface {v1}, Lc8/cb;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Y;

    .line 168
    .local v0, "row":Lc8/Y;
    if-nez v0, :cond_0

    .line 169
    new-instance v0, Lc8/Y;

    .end local v0    # "row":Lc8/Y;
    iget-object v1, p0, Lc8/bb;->mCache:Lc8/Z;

    invoke-direct {v0, v1}, Lc8/Y;-><init>(Lc8/Z;)V

    .line 173
    .restart local v0    # "row":Lc8/Y;
    :goto_0
    return-object v0

    .line 171
    :cond_0
    invoke-virtual {v0}, Lc8/Y;->reset()V

    goto :goto_0
.end method

.method public createSlackVariable()Lc8/gb;
    .locals 3

    .prologue
    .line 177
    iget v1, p0, Lc8/bb;->mNumColumns:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lc8/bb;->mMaxColumns:I

    if-lt v1, v2, :cond_0

    .line 178
    invoke-direct {p0}, Lc8/bb;->increaseTableSize()V

    .line 180
    :cond_0
    sget-object v1, Landroid/support/constraint/solver/SolverVariable$Type;->SLACK:Landroid/support/constraint/solver/SolverVariable$Type;

    invoke-direct {p0, v1}, Lc8/bb;->acquireSolverVariable(Landroid/support/constraint/solver/SolverVariable$Type;)Lc8/gb;

    move-result-object v0

    .line 181
    .local v0, "variable":Lc8/gb;
    iget v1, p0, Lc8/bb;->mVariablesID:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lc8/bb;->mVariablesID:I

    .line 182
    iget v1, p0, Lc8/bb;->mNumColumns:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lc8/bb;->mNumColumns:I

    .line 183
    iget v1, p0, Lc8/bb;->mVariablesID:I

    iput v1, v0, Lc8/gb;->id:I

    .line 184
    iget-object v1, p0, Lc8/bb;->mCache:Lc8/Z;

    iget-object v1, v1, Lc8/Z;->mIndexedVariables:[Lc8/gb;

    iget v2, p0, Lc8/bb;->mVariablesID:I

    aput-object v0, v1, v2

    .line 185
    return-object v0
.end method

.method displayReadableRows()V
    .locals 4

    .prologue
    .line 705
    invoke-direct {p0}, Lc8/bb;->displaySolverVariables()V

    .line 706
    const-string/jumbo v1, ""

    .line 707
    .local v1, "s":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lc8/bb;->mNumRows:I

    if-ge v0, v2, :cond_0

    .line 708
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/bb;->mRows:[Lc8/Y;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lc8/Y;->toReadableString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 709
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 707
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 711
    :cond_0
    iget-object v2, p0, Lc8/bb;->mGoal:Lc8/ab;

    if-eqz v2, :cond_1

    .line 712
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/bb;->mGoal:Lc8/ab;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 714
    :cond_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 715
    return-void
.end method

.method displaySystemInformations()V
    .locals 8

    .prologue
    .line 753
    const/4 v1, 0x0

    .line 754
    .local v1, "count":I
    const/4 v3, 0x0

    .line 755
    .local v3, "rowSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v4, p0, Lc8/bb;->TABLE_SIZE:I

    if-ge v2, v4, :cond_1

    .line 756
    iget-object v4, p0, Lc8/bb;->mRows:[Lc8/Y;

    aget-object v4, v4, v2

    if-eqz v4, :cond_0

    .line 757
    iget-object v4, p0, Lc8/bb;->mRows:[Lc8/Y;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lc8/Y;->sizeInBytes()I

    move-result v4

    add-int/2addr v3, v4

    .line 755
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 760
    :cond_1
    const/4 v0, 0x0

    .line 761
    .local v0, "actualRowSize":I
    const/4 v2, 0x0

    :goto_1
    iget v4, p0, Lc8/bb;->mNumRows:I

    if-ge v2, v4, :cond_3

    .line 762
    iget-object v4, p0, Lc8/bb;->mRows:[Lc8/Y;

    aget-object v4, v4, v2

    if-eqz v4, :cond_2

    .line 763
    iget-object v4, p0, Lc8/bb;->mRows:[Lc8/Y;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lc8/Y;->sizeInBytes()I

    move-result v4

    add-int/2addr v0, v4

    .line 761
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 767
    :cond_3
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Linear System -> Table size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lc8/bb;->TABLE_SIZE:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lc8/bb;->TABLE_SIZE:I

    iget v7, p0, Lc8/bb;->TABLE_SIZE:I

    mul-int/2addr v6, v7

    .line 768
    invoke-direct {p0, v6}, Lc8/bb;->getDisplaySize(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") -- row sizes: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 769
    invoke-direct {p0, v3}, Lc8/bb;->getDisplaySize(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", actual size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 770
    invoke-direct {p0, v0}, Lc8/bb;->getDisplaySize(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " rows: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lc8/bb;->mNumRows:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lc8/bb;->mMaxRows:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " cols: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lc8/bb;->mNumColumns:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lc8/bb;->mMaxColumns:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " occupied cells, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 773
    invoke-direct {p0, v1}, Lc8/bb;->getDisplaySize(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 767
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 775
    return-void
.end method

.method public displayVariablesReadableRows()V
    .locals 4

    .prologue
    .line 719
    invoke-direct {p0}, Lc8/bb;->displaySolverVariables()V

    .line 720
    const-string/jumbo v1, ""

    .line 721
    .local v1, "s":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lc8/bb;->mNumRows:I

    if-ge v0, v2, :cond_1

    .line 722
    iget-object v2, p0, Lc8/bb;->mRows:[Lc8/Y;

    aget-object v2, v2, v0

    iget-object v2, v2, Lc8/Y;->variable:Lc8/gb;

    iget-object v2, v2, Lc8/gb;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    sget-object v3, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    if-ne v2, v3, :cond_0

    .line 723
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/bb;->mRows:[Lc8/Y;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lc8/Y;->toReadableString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 724
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 721
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 727
    :cond_1
    iget-object v2, p0, Lc8/bb;->mGoal:Lc8/ab;

    iget-object v2, v2, Lc8/ab;->variables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_2

    .line 728
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/bb;->mGoal:Lc8/ab;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 730
    :cond_2
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 731
    return-void
.end method

.method public getCache()Lc8/Z;
    .locals 1

    .prologue
    .line 801
    iget-object v0, p0, Lc8/bb;->mCache:Lc8/Z;

    return-object v0
.end method

.method getGoal()Lc8/ab;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lc8/bb;->mGoal:Lc8/ab;

    return-object v0
.end method

.method public getMemoryUsed()I
    .locals 3

    .prologue
    .line 735
    const/4 v0, 0x0

    .line 736
    .local v0, "actualRowSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lc8/bb;->mNumRows:I

    if-ge v1, v2, :cond_1

    .line 737
    iget-object v2, p0, Lc8/bb;->mRows:[Lc8/Y;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 738
    iget-object v2, p0, Lc8/bb;->mRows:[Lc8/Y;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lc8/Y;->sizeInBytes()I

    move-result v2

    add-int/2addr v0, v2

    .line 736
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 741
    :cond_1
    return v0
.end method

.method public getNumEquations()I
    .locals 1

    .prologue
    .line 745
    iget v0, p0, Lc8/bb;->mNumRows:I

    return v0
.end method

.method public getNumVariables()I
    .locals 1

    .prologue
    .line 747
    iget v0, p0, Lc8/bb;->mVariablesID:I

    return v0
.end method

.method public getObjectVariableValue(Ljava/lang/Object;)I
    .locals 3
    .param p1, "anchor"    # Ljava/lang/Object;

    .prologue
    .line 273
    check-cast p1, Lc8/ib;

    .end local p1    # "anchor":Ljava/lang/Object;
    invoke-virtual {p1}, Lc8/ib;->getSolverVariable()Lc8/gb;

    move-result-object v0

    .line 274
    .local v0, "variable":Lc8/gb;
    if-eqz v0, :cond_0

    .line 275
    iget v1, v0, Lc8/gb;->computedValue:F

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 277
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getRow(I)Lc8/Y;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 261
    iget-object v0, p0, Lc8/bb;->mRows:[Lc8/Y;

    aget-object v0, v0, p1

    return-object v0
.end method

.method getValueFor(Ljava/lang/String;)F
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 265
    sget-object v1, Landroid/support/constraint/solver/SolverVariable$Type;->UNRESTRICTED:Landroid/support/constraint/solver/SolverVariable$Type;

    invoke-virtual {p0, p1, v1}, Lc8/bb;->getVariable(Ljava/lang/String;Landroid/support/constraint/solver/SolverVariable$Type;)Lc8/gb;

    move-result-object v0

    .line 266
    .local v0, "v":Lc8/gb;
    if-nez v0, :cond_0

    .line 267
    const/4 v1, 0x0

    .line 269
    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lc8/gb;->computedValue:F

    goto :goto_0
.end method

.method getVariable(Ljava/lang/String;Landroid/support/constraint/solver/SolverVariable$Type;)Lc8/gb;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Landroid/support/constraint/solver/SolverVariable$Type;

    .prologue
    .line 288
    iget-object v1, p0, Lc8/bb;->mVariables:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 289
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lc8/bb;->mVariables:Ljava/util/HashMap;

    .line 291
    :cond_0
    iget-object v1, p0, Lc8/bb;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/gb;

    .line 292
    .local v0, "variable":Lc8/gb;
    if-nez v0, :cond_1

    .line 293
    invoke-direct {p0, p1, p2}, Lc8/bb;->createVariable(Ljava/lang/String;Landroid/support/constraint/solver/SolverVariable$Type;)Lc8/gb;

    move-result-object v0

    .line 295
    :cond_1
    return-object v0
.end method

.method public minimize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 316
    iget-object v0, p0, Lc8/bb;->mGoal:Lc8/ab;

    invoke-virtual {p0, v0}, Lc8/bb;->minimizeGoal(Lc8/ab;)V

    .line 317
    return-void
.end method

.method minimizeGoal(Lc8/ab;)V
    .locals 0
    .param p1, "goal"    # Lc8/ab;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 326
    invoke-virtual {p1, p0}, Lc8/ab;->updateFromSystem(Lc8/bb;)V

    .line 327
    invoke-direct {p0, p1}, Lc8/bb;->enforceBFS(Lc8/ab;)I

    .line 332
    invoke-direct {p0, p1}, Lc8/bb;->optimize(Lc8/ab;)I

    .line 337
    invoke-direct {p0}, Lc8/bb;->computeValues()V

    .line 338
    return-void
.end method

.method rebuildGoalFromErrors()V
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lc8/bb;->mGoal:Lc8/ab;

    invoke-virtual {v0, p0}, Lc8/ab;->updateFromSystem(Lc8/bb;)V

    .line 310
    return-void
.end method

.method public reset()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 109
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lc8/bb;->mCache:Lc8/Z;

    iget-object v2, v2, Lc8/Z;->mIndexedVariables:[Lc8/gb;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 110
    iget-object v2, p0, Lc8/bb;->mCache:Lc8/Z;

    iget-object v2, v2, Lc8/Z;->mIndexedVariables:[Lc8/gb;

    aget-object v1, v2, v0

    .line 111
    .local v1, "variable":Lc8/gb;
    if-eqz v1, :cond_0

    .line 112
    invoke-virtual {v1}, Lc8/gb;->reset()V

    .line 109
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    .end local v1    # "variable":Lc8/gb;
    :cond_1
    iget-object v2, p0, Lc8/bb;->mCache:Lc8/Z;

    iget-object v2, v2, Lc8/Z;->solverVariablePool:Lc8/cb;

    iget-object v3, p0, Lc8/bb;->mPoolVariables:[Lc8/gb;

    iget v4, p0, Lc8/bb;->mPoolVariablesCount:I

    invoke-interface {v2, v3, v4}, Lc8/cb;->releaseAll([Ljava/lang/Object;I)V

    .line 116
    iput v5, p0, Lc8/bb;->mPoolVariablesCount:I

    .line 118
    iget-object v2, p0, Lc8/bb;->mCache:Lc8/Z;

    iget-object v2, v2, Lc8/Z;->mIndexedVariables:[Lc8/gb;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 119
    iget-object v2, p0, Lc8/bb;->mVariables:Ljava/util/HashMap;

    if-eqz v2, :cond_2

    .line 120
    iget-object v2, p0, Lc8/bb;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 122
    :cond_2
    iput v5, p0, Lc8/bb;->mVariablesID:I

    .line 123
    iget-object v2, p0, Lc8/bb;->mGoal:Lc8/ab;

    iget-object v2, v2, Lc8/ab;->variables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 124
    const/4 v2, 0x1

    iput v2, p0, Lc8/bb;->mNumColumns:I

    .line 125
    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Lc8/bb;->mNumRows:I

    if-ge v0, v2, :cond_3

    .line 126
    iget-object v2, p0, Lc8/bb;->mRows:[Lc8/Y;

    aget-object v2, v2, v0

    iput-boolean v5, v2, Lc8/Y;->used:Z

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 128
    :cond_3
    invoke-direct {p0}, Lc8/bb;->releaseRows()V

    .line 129
    iput v5, p0, Lc8/bb;->mNumRows:I

    .line 130
    return-void
.end method
