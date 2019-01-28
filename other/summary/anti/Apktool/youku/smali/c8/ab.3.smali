.class public Lc8/ab;
.super Ljava/lang/Object;
.source "Goal.java"


# instance fields
.field variables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc8/gb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/ab;->variables:Ljava/util/ArrayList;

    return-void
.end method

.method private initFromSystemErrors(Lc8/bb;)V
    .locals 6
    .param p1, "system"    # Lc8/bb;

    .prologue
    .line 66
    iget-object v3, p0, Lc8/ab;->variables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 67
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget v3, p1, Lc8/bb;->mNumColumns:I

    if-ge v0, v3, :cond_2

    .line 68
    iget-object v3, p1, Lc8/bb;->mCache:Lc8/Z;

    iget-object v3, v3, Lc8/Z;->mIndexedVariables:[Lc8/gb;

    aget-object v2, v3, v0

    .line 69
    .local v2, "variable":Lc8/gb;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    const/4 v3, 0x6

    if-ge v1, v3, :cond_0

    .line 70
    iget-object v3, v2, Lc8/gb;->strengthVector:[F

    const/4 v4, 0x0

    aput v4, v3, v1

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 72
    :cond_0
    iget-object v3, v2, Lc8/gb;->strengthVector:[F

    iget v4, v2, Lc8/gb;->strength:I

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v3, v4

    .line 73
    iget-object v3, v2, Lc8/gb;->mType:Landroid/support/constraint/solver/SolverVariable$Type;

    sget-object v4, Landroid/support/constraint/solver/SolverVariable$Type;->ERROR:Landroid/support/constraint/solver/SolverVariable$Type;

    if-ne v3, v4, :cond_1

    .line 76
    iget-object v3, p0, Lc8/ab;->variables:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    .end local v1    # "j":I
    .end local v2    # "variable":Lc8/gb;
    :cond_2
    return-void
.end method


# virtual methods
.method getPivotCandidate()Lc8/gb;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 37
    iget-object v7, p0, Lc8/ab;->variables:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 38
    .local v1, "count":I
    const/4 v0, 0x0

    .line 39
    .local v0, "candidate":Lc8/gb;
    const/4 v5, 0x0

    .line 42
    .local v5, "strength":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 43
    iget-object v7, p0, Lc8/ab;->variables:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/gb;

    .line 44
    .local v2, "element":Lc8/gb;
    const/4 v4, 0x5

    .local v4, "k":I
    :goto_1
    if-ltz v4, :cond_2

    .line 45
    iget-object v7, v2, Lc8/gb;->strengthVector:[F

    aget v6, v7, v4

    .line 46
    .local v6, "value":F
    if-nez v0, :cond_0

    cmpg-float v7, v6, v8

    if-gez v7, :cond_0

    if-lt v4, v5, :cond_0

    .line 47
    move v5, v4

    .line 48
    move-object v0, v2

    .line 50
    :cond_0
    cmpl-float v7, v6, v8

    if-lez v7, :cond_1

    if-le v4, v5, :cond_1

    .line 51
    move v5, v4

    .line 52
    const/4 v0, 0x0

    .line 44
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 42
    .end local v6    # "value":F
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 56
    .end local v2    # "element":Lc8/gb;
    .end local v4    # "k":I
    :cond_3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 119
    const-string/jumbo v3, "Goal: "

    .line 120
    .local v3, "representation":Ljava/lang/String;
    iget-object v4, p0, Lc8/ab;->variables:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 122
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 123
    iget-object v4, p0, Lc8/ab;->variables:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/gb;

    .line 124
    .local v1, "element":Lc8/gb;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lc8/gb;->strengthsToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 122
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 126
    .end local v1    # "element":Lc8/gb;
    :cond_0
    return-object v3
.end method

.method updateFromSystem(Lc8/bb;)V
    .locals 13
    .param p1, "system"    # Lc8/bb;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lc8/ab;->initFromSystemErrors(Lc8/bb;)V

    .line 87
    iget-object v10, p0, Lc8/ab;->variables:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 88
    .local v0, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_4

    .line 89
    iget-object v10, p0, Lc8/ab;->variables:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/gb;

    .line 90
    .local v2, "element":Lc8/gb;
    iget v10, v2, Lc8/gb;->definitionId:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_3

    .line 91
    iget v10, v2, Lc8/gb;->definitionId:I

    invoke-virtual {p1, v10}, Lc8/bb;->getRow(I)Lc8/Y;

    move-result-object v1

    .line 92
    .local v1, "definition":Lc8/Y;
    iget-object v9, v1, Lc8/Y;->variables:Lc8/X;

    .line 93
    .local v9, "variables":Lc8/X;
    iget v6, v9, Lc8/X;->currentSize:I

    .line 94
    .local v6, "size":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v6, :cond_2

    .line 95
    invoke-virtual {v9, v4}, Lc8/X;->getVariable(I)Lc8/gb;

    move-result-object v8

    .line 96
    .local v8, "var":Lc8/gb;
    if-eqz v8, :cond_1

    .line 99
    invoke-virtual {v9, v4}, Lc8/X;->getVariableValue(I)F

    move-result v7

    .line 100
    .local v7, "value":F
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_2
    const/4 v10, 0x6

    if-ge v5, v10, :cond_0

    .line 101
    iget-object v10, v8, Lc8/gb;->strengthVector:[F

    aget v11, v10, v5

    iget-object v12, v2, Lc8/gb;->strengthVector:[F

    aget v12, v12, v5

    mul-float/2addr v12, v7

    add-float/2addr v11, v12

    aput v11, v10, v5

    .line 100
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 103
    :cond_0
    iget-object v10, p0, Lc8/ab;->variables:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 104
    iget-object v10, p0, Lc8/ab;->variables:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    .end local v5    # "k":I
    .end local v7    # "value":F
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 107
    .end local v8    # "var":Lc8/gb;
    :cond_2
    invoke-virtual {v2}, Lc8/gb;->clearStrengths()V

    .line 88
    .end local v1    # "definition":Lc8/Y;
    .end local v4    # "j":I
    .end local v6    # "size":I
    .end local v9    # "variables":Lc8/X;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 110
    .end local v2    # "element":Lc8/gb;
    :cond_4
    return-void
.end method
